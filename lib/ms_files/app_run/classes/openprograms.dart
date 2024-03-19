import 'dart:io';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';

import 'parm_types.dart';

class OpenPrograms {
  String? buttonName = '';
  static int counter = 0;
  OpenPrograms(this.buttonName);

  Future<void> openApplications() async {
    switch (buttonName) {
      case ParamTypes.appNameChrome:
        Process.run(
            '"C:/Program Files/Google/Chrome/Application/chrome.exe"', []);
        break;
      case ParamTypes.appNameFirefox:
        Process.run(
            '"C:/Program Files/Firefox Developer Edition/firefox.exe"', []);
        break;
      case ParamTypes.appNameIntellij:
        Process.run(
            'C:/Program Files/JetBrains/IntelliJ IDEA 2021.3.3/bin/idea64.exe',
            []);
        break;
      case ParamTypes.appNameVSCode:
        Process.run(
            'C:/Users/da2030/AppData/Local/Programs/Microsoft VS Code/Code.exe',
            []);
        break;
      case ParamTypes.appNameNotepadd:
        Process.run('"C:/Program Files/Notepad++/notepad++.exe"', []);
        break;
      case ParamTypes.appNameGitHub:
        Process.run(
            'C:/Users/da2030/AppData/Local/GitHubDesktop/GitHubDesktop.exe',
            []);
        break;
      case ParamTypes.appNameTeams:
        Process.run(
            'C:/Users/da2030/AppData/Local/Microsoft/Teams/current/Teams.exe',
            []);
        break;
      case ParamTypes.appNamePostman:
        Process.run('C:/Users/da2030/AppData/Local/Postman/Postman.exe', []);
        break;
      case ParamTypes.appNameOracle:
        Process.run(
            'C:/oracle_sql/sqldeveloper-21.4.3.063.0100-no-jre/sqldeveloper/sqldeveloper.exe',
            []);
        break;
      case ParamTypes.appNameDocker:
        Process.run('C:/Program Files/Docker/Docker/Docker Desktop.exe', []);
        break;
      case 'Powershell':
        Process.run(
            'C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe', []);
        break;
      case 'CMD':
        Process.run('"C:/Windows/system32/cmd.exe"', [], runInShell: true);
        break;
      case ParamTypes.appNameBash:
        // Process.run('C:/Program Files/Git/git-bash.exe', []);
        Process.run('C:/Users/da2030/AppData/Local/Programs/Git/git-bash.exe', []);
        break;
      case ParamTypes.appActionRestart:
        Process.run('shutdown -r -t 0 -f', [], runInShell: true);
        break;
      case ParamTypes.appActionShutdown:
        Process.run('shutdown -s -t 0 -f', [], runInShell: true);
        break;
      case ParamTypes.appActionLogoff:
        Process.run("logoff", [], runInShell: true);
        break;
      case ParamTypes.appDeleteM2Repo:
        var directory =
            Directory.fromUri(Uri(path: 'C:/Users/da2030/.m2/repository/'));
        if (await directory.exists()) {
          directory.deleteSync(recursive: true);
          counter = 0;
          while (await directory.exists()) {
            counter++;
          }

          await FlutterPlatformAlert.showAlert(
            windowTitle: ".M2 Directory Delete",
            text: "Repository directory deleted",
            alertStyle: AlertButtonStyle.ok,
          );
        } else {
          await FlutterPlatformAlert.showAlert(
            windowTitle: ".M2 Directory Delete",
            text: "Directory does not exist.",
            alertStyle: AlertButtonStyle.ok,
          );
        }
        break;
      case ParamTypes.appClearTeamsCache:
        var directory = Directory.fromUri(
            Uri(path: 'C:/Users/da2030/AppData/Roaming/Microsoft/Teams/'));
        if (await directory.exists()) {
          directory.deleteSync(recursive: true);
          counter = 0;
          while (await directory.exists()) {
            counter++;
          }

          await FlutterPlatformAlert.showAlert(
            windowTitle: "Clear Teams Cache",
            text: "Teams Cache is cleared",
            alertStyle: AlertButtonStyle.ok,
          );
        } else {
          await FlutterPlatformAlert.showAlert(
            windowTitle: "Clear Teams Cache",
            text: "Teams directory does not exist.",
            alertStyle: AlertButtonStyle.ok,
          );
        }
    }
  }
}
