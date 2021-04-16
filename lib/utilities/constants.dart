import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 45.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);
const apiKey = "7159a23e0e33bcd330391f4dac81e2be";

const spinKit = SpinKitFoldingCube(
  size: 100,
  color: Colors.white,
);

const openWeatherMap = "http://api.openweathermap.org/data/2.5/weather";

const kTextFieldInput = InputDecoration(
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12.0),
      ),
      borderSide: BorderSide.none),
  filled: true,
  fillColor: Colors.white,
  hintText: "Enter City Name",
  hintStyle: TextStyle(color: Colors.grey),
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
);
