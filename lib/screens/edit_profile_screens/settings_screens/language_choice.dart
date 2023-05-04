import 'package:ecommerce/models/apis/language_api.dart';
import 'package:ecommerce/models/apis/language_model.dart';
import 'package:flutter/material.dart';

enum lango {
  Arabic,
  Asturian,
  Belarusian,
  Breton,
  Catalan,
  Danish,
  German,
  Greek,
  English,
  Esperanto,
  Spanish,
  Persain,
  French,
  Irish,
  Galician,
  Italian,
  Japanese,
  Khmer,
  Dutch,
  Polish,
  Portuguese,
  Romanian,
  Russian,
  Slovak,
  Slovenian,
  Swedish,
  Tamil,
  Tagalog,
  Ukrainian
}

class Languages_screen extends StatefulWidget {
  const Languages_screen({Key? key}) : super(key: key);

  @override
  State<Languages_screen> createState() => _Languages_screenState();
}

class _Languages_screenState extends State<Languages_screen> {
  late List<languages> _lang;
  bool _isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLanguages();
  }

  Future<void> getLanguages() async {
    _lang = await LanguageApi.getLanguages();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    lango? _character = lango.Arabic;
    String lan_cho = 'Arabic';
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Change Language',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: 1.0),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: Container(
          child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        child: _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.095,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: RadioListTile<String>(
                        activeColor: Colors.orange,
                        value: _lang[index].title,
                        groupValue: lan_cho,
                        onChanged: (String? value) {
                          setState(() {
                            lan_cho = value as String;
                            _lang[index].title = value as String;
                            print(lan_cho);
                          });
                        },
                        title: Text(
                          _lang[index].title,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _lang.length,
              ),
      )),
    );
  }
}
