import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/dependency_injection/service_locator.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_app_bar.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_nav_bar.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_widget.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/left_panel.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/right_panel.dart';

class EditorScreen extends StatelessWidget {
  static const routeName = '/editor-screen';

  const EditorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);

    const leftPanelFlex = 5;
    const rightPanelFlex = 10;
    const editorWidgetFlex = 100 - leftPanelFlex - rightPanelFlex;

    const appBarFlex = 10;
    const navBarFlex = 3;
    const bodyFlex = 100 - appBarFlex - navBarFlex;

    return Scaffold(
      backgroundColor: toc.colorScheme.background,
      body: BlocProvider<EditorBloc>(
        create: (context) => serviceLocator.get<EditorBloc>(),
        child: Column(
          children: [
            const Expanded(
              flex: appBarFlex,
              child: EditorAppBar(),
            ),
            Expanded(
              flex: bodyFlex,
              child: Row(
                children: const [
                  Expanded(
                    flex: leftPanelFlex,
                    child: LeftPanel(),
                  ),
                  Expanded(
                    flex: editorWidgetFlex,
                    child: EditorWidget(),
                  ),
                  Expanded(
                    flex: rightPanelFlex,
                    child: RightPanel(),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: navBarFlex,
              child: EditorNavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
