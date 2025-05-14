import 'dart:io';
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

Future<void> main() async {
  final devDepsFile = File('dev_dependencies.yaml');
  if (!devDepsFile.existsSync()) {
    print('❌ dev_dependencies.yaml not found!');
    exit(1);
  }

  final devDepsContent = await devDepsFile.readAsString();
  final devDepsYaml = loadYaml(devDepsContent) as YamlMap?;
  if (devDepsYaml == null || devDepsYaml['dev_dependencies'] == null) {
    print('❌ dev_dependencies.yaml does not contain dev_dependencies section!');
    exit(1);
  }

  final devDependencies = Map<String, dynamic>.from(
    devDepsYaml['dev_dependencies'] as Map,
  );

  // Find all pubspec.yaml in packages/** and core/** and data/** ... (Customize this as your structure)
  final directories = Directory('.')
      .listSync(recursive: true)
      .whereType<Directory>()
      .where((dir) => File('${dir.path}/pubspec.yaml').existsSync());

  for (final dir in directories) {
    final pubspecPath = '${dir.path}/pubspec.yaml';
    final pubspecFile = File(pubspecPath);
    final content = await pubspecFile.readAsString();

    final editor = YamlEditor(content);

    try {
      editor.update(['dev_dependencies'], devDependencies);
    } catch (_) {
      editor.appendToList([], {'dev_dependencies': devDependencies});
    }

    String result = editor.toString();

    result = result.replaceAllMapped(
        RegExp(r'(^|\n)(dev_dependencies:)'),
            (match) => '${match.group(1)}\n${match.group(2)}'
    );

    await pubspecFile.writeAsString(result);
    print('✅ Synced dev_dependencies in $pubspecPath');
  }

  print('🎉 All pubspec.yaml files are synced with dev_dependencies.yaml!');
}