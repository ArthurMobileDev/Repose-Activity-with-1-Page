import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


import 'ModelView.dart';

class HomePage extends StatefulWidget{
  String? value;

  HomePage({super.key, this.value});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with RestorationMixin{
  final modelView = GetIt.instance.get<ModelView>();
  final _oldValue = RestorableString('');
  final _textfieldController = RestorableTextEditingController();
  late final cont;

  static Route<void> _nextPageNavigation(context, arguments) => MaterialPageRoute(builder: (context)=>HomePage());

  @override
  String? get restorationId => 'home_page';

  @override
  void initState(){
    super.initState();
    cont = modelView.cont;
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_textfieldController, 'textfield_controller$cont');
    registerForRestoration(_oldValue, 'old_value$cont');
  }

  @override
  Widget build(BuildContext context) {
    if (modelView.oldValue.isNotEmpty && _oldValue.value.isEmpty) {
      _oldValue.value = modelView.oldValue;
    } else {
      modelView.oldValue = _oldValue.value;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.black38,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [

              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(_oldValue.value),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextField(
                      controller: _textfieldController.value,
                      onChanged: modelView.onChangeText,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter a value'
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FilledButton(
                    onPressed: () {
                      modelView.listenerClickOk();
                      Navigator.restorablePush(context, _nextPageNavigation);
                    },
                    child: const Text('Ok'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }



}