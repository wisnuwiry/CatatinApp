import '../../../../db/app_db.dart';
import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';

import '../../widgets/field.dart';

class CreateNotePage extends StatefulWidget {
  final bool isEditing;
  final NotesCompanion note;

  const CreateNotePage({Key key, @required this.isEditing, this.note})
      : super(key: key);

  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  final _formKey = GlobalKey<FormState>();
  ZefyrController _editorController;
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _editorController = ZefyrController(NotusDocument());
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Note'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
          )
        ],
      ),
      body: ZefyrScaffold(
        child: SafeArea(
            // child: Form(
            //   key: _formKey,
            //   child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            // TitleInputField(),
            child: ZefyrEditor(
          controller: _editorController,
          focusNode: _focusNode,
          autofocus: true,
        )
            //       ]),
            // ),
            ),
      ),
    );
  }
}
