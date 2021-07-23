import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _disableCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _createSlider(),
            Divider(),
            _checkBox(),
            Divider(),
            _createSwitch(),
            Divider(),
            Expanded(child: _createImage())
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Image size',
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (_disableCheck)
          ? null
          : (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://static.wikia.nocookie.net/teentitansgofanon/images/3/37/Batman1.jpg/revision/latest/scale-to-width-down/690?cb=20140714234718&path-prefix=es'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    // Checkbox(
    //   value: _disableCheck,
    //   onChanged: (value) {
    //     setState(() {
    //       if (value != null) {
    //         _disableCheck = value;
    //       }
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Enable slider'),
      value: _disableCheck,
      onChanged: (value) {
        setState(() {
          if (value != null) {
            _disableCheck = value;
          }
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Enable slider'),
      value: _disableCheck,
      onChanged: (value) {
        setState(() {
          _disableCheck = value;
        });
      },
    );
  }
}
