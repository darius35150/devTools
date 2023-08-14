import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'classes/openprograms.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'classes/parm_types.dart';
// import 'package:msix/msix.dart';

Future<void> main() async {
  runApp(const AppRunner());

  DesktopWindow.setFullScreen(false);
  await DesktopWindow.setWindowSize(const Size(570, 650));
  await DesktopWindow.setMaxWindowSize(const Size(710, 750));
}

class AppRunner extends StatelessWidget {
  const AppRunner({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Runner',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blueGrey,
      ),
      home: const AppRunnerHome(title: 'App Runner 2.0'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppRunnerHome extends StatefulWidget {
  const AppRunnerHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AppRunnerHome> createState() => _AppRunnerHomeState();
}

class _AppRunnerHomeState extends State<AppRunnerHome>
    with TickerProviderStateMixin {
  late AnimationController controller;
  double buttonElevation = 6;

  Future<bool> restartOrShutdown(
      String restartShutdownText, String title) async {
    final result = await FlutterPlatformAlert.showAlert(
      windowTitle: title,
      text: "Would you like to $restartShutdownText?",
      alertStyle: AlertButtonStyle.yesNo,
    );

    if (result == AlertButton.yesButton) {
      return true;
    } else {
      return false;
    }
  }

  void showProgressIndicator() {
    setState(() {
      CircularProgressIndicator(
        value: controller.value,
        semanticsLabel: 'Circular progress indicator',
      );
    });
  }

  void _openApplication(String buttonName) {
    setState(() {
      var openApps = OpenPrograms(buttonName);
      openApps.openApplications();
    });
  }

  void showAnimation() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: Duration(seconds: OpenPrograms.counter),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 101, 121, 156),
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              tooltip: "Home",
              color: Colors.white,
              highlightColor: Colors.amber,
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              iconSize: 30,
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            IconButton(
              tooltip: "Notes",
              color: Colors.white,
              highlightColor: Colors.amber,
              icon: const Icon(
                Icons.list,
                size: 30,
              ),
              iconSize: 30,
              onPressed: () {
                Navigator.pushNamed(context, "/notes");
              },
            ),
            IconButton(
              tooltip: "Model To Dto Converter",
              color: Colors.white,
              highlightColor: Colors.amber,
              icon: const Icon(
                Icons.difference,
                size: 30,
              ),
              iconSize: 30,
              onPressed: () {
                Navigator.pushNamed(context, "/converter");
              },
            )
          ],
        ),
        body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNameChrome);
                      },
                      child: const Text(
                        ParamTypes.appNameChrome,
                        style: TextStyle(color: Colors.white),
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNameIntellij);
                      },
                      child: const Text(
                        ParamTypes.appNameIntellij,
                        style: TextStyle(color: Colors.white),
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNameVSCode);
                      },
                      child: const Text(
                        ParamTypes.appNameVSCode,
                        style: TextStyle(color: Colors.white),
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNameOracle);
                      },
                      child: const Text(
                        ParamTypes.appTextOracleSQL,
                        style: TextStyle(color: Colors.white),
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNameNotepadd);
                      },
                      child: const Text(
                        ParamTypes.appNameNotepadd,
                        style: TextStyle(color: Colors.white),
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNameGitHub);
                      },
                      child: const Text(
                        ParamTypes.appNameGitHub,
                        style: TextStyle(color: Colors.white),
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNameTeams);
                      },
                      child: const Text(
                        ParamTypes.appNameTeams,
                        style: TextStyle(color: Colors.white),
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNamePostman);
                      },
                      child: const Text(
                        ParamTypes.appNamePostman,
                        style: TextStyle(color: Colors.white),
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNameBash);
                      },
                      child: const Text(
                        ParamTypes.appNameBash,
                        style: TextStyle(color: Colors.white),
                      ))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: buttonElevation,
                          backgroundColor:
                              const Color.fromARGB(255, 101, 121, 156)),
                      onPressed: () {
                        _openApplication(ParamTypes.appNameDocker);
                      },
                      child: const Text(
                        ParamTypes.appNameDocker,
                        style: TextStyle(color: Colors.white),
                      ))),
            ]),
        persistentFooterButtons: <Widget>[
          TextButton(
              child: const Text(ParamTypes.appClearTeamsCache),
              onPressed: () async {
                bool restartShutdownLogoff = await restartOrShutdown(
                    ParamTypes.promptClearTeamsCache,
                    ParamTypes.appClearTeamsCache);
                if (restartShutdownLogoff) {
                  _openApplication(ParamTypes.appClearTeamsCache);
                }
              }),
          TextButton(
              child: const Text(ParamTypes.appDeleteM2Repo),
              onPressed: () async {
                bool restartShutdownLogoff = await restartOrShutdown(
                    ParamTypes.promptDeleteM2Repository,
                    ParamTypes.appDeleteM2Repo);
                if (restartShutdownLogoff) {
                  _openApplication(ParamTypes.appDeleteM2Repo);
                }
              }),
          TextButton(
              child: const Text(ParamTypes.appActionRestart),
              onPressed: () async {
                bool restartShutdownLogoff = await restartOrShutdown(
                    ParamTypes.promptTextRestart, ParamTypes.appActionRestart);
                if (restartShutdownLogoff) {
                  _openApplication(ParamTypes.appActionRestart);
                }
              }),
          TextButton(
              child: const Text(ParamTypes.appActionShutdown),
              onPressed: () async {
                bool restartShutdownLogoff = await restartOrShutdown(
                    ParamTypes.promptTextShutdown,
                    ParamTypes.appActionShutdown);
                if (restartShutdownLogoff) {
                  _openApplication(ParamTypes.appActionShutdown);
                }
              }),
          TextButton(
              child: const Text(ParamTypes.appActionLogoff),
              onPressed: () async {
                bool restartShutdownLogoff = await restartOrShutdown(
                    ParamTypes.promptTextLogoff, ParamTypes.appActionLogoff);
                if (restartShutdownLogoff) {
                  _openApplication(ParamTypes.appActionLogoff);
                }
              }),
        ]);
  }
}
