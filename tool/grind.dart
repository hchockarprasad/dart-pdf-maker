import 'dart:convert';
import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:cli_pkg/cli_pkg.dart' as pkg;

void main(List<String> args) {
  pkg.name.value = 'pdf-templates';
  pkg.humanName.value = 'Pdf templates';
  pkg.jsModuleMainLibrary.value = 'lib/src/node.dart';
  pkg.standaloneName.value = 'pdf-templates';
  pkg.npmPackageJson.fn = () =>
      json.decode(File('package/package.json').readAsStringSync())
          as Map<String, Object>;
  pkg.addAllTasks();
  grind(args);
}

@DefaultTask('Build project..')
void build() {
  log('Building...');
}
