import 'package:flutter/material.dart';
import 'package:csc_picker/csc_picker.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          TextButton(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 40.0, 20.0),
                child: Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              onPressed: () {
                // Navigator.pop(context);
              }),
        ],
        title: const Text('Personal Information'),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
            color: Color.fromRGBO(33, 35, 83, 1),
            fontSize: 16.0,
            fontWeight: FontWeight.w800),
      ),
      body: const RegistrationApp(),
    ),
  ));
}

class RegistrationApp extends StatefulWidget {
  const RegistrationApp({Key? key}) : super(key: key);

  @override
  State<RegistrationApp> createState() => _RegistrationAppState();
}

class _RegistrationAppState extends State<RegistrationApp> {
  List<DropdownMenuItem<String>> days() {
    List<DropdownMenuItem<String>> daysItems = [
      const DropdownMenuItem(child: Text('Day'), value: 'Day')
    ];
    for (int i = 1; i < 32; i++) {
      var day = i.toString();
      var newItem = DropdownMenuItem(child: Text(day), value: day);
      daysItems.add(newItem);
    }
    return daysItems;
  }

  List<DropdownMenuItem<String>> months() {
    List<DropdownMenuItem<String>> monthItems = [
      const DropdownMenuItem(child: Text('Month'), value: 'Month')
    ];
    List<String> monthList = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'November',
      'December'
    ];
    for (String month in monthList) {
      var newItem = DropdownMenuItem(child: Text(month), value: month);
      monthItems.add(newItem);
    }
    return monthItems;
  }

  List<DropdownMenuItem<String>> years() {
    List<DropdownMenuItem<String>> yearItems = [
      const DropdownMenuItem(child: Text('Year'), value: 'Year')
    ];
    List<int> yearsList = [
      2022,
      2021,
      2020,
      2019,
      2018,
      2017,
      2016,
      2015,
      2014,
      2013,
      2012,
      2011,
      2010,
      2009,
      2008,
      2007,
      2006,
      2005,
      2004,
      2003,
      2002,
      2001,
      2000,
      1999,
      1998,
      1997,
      1996,
      1995,
      1994,
      1993,
      1992,
      1991,
      1990,
      1989,
      1988,
      1987,
      1986,
      1985,
      1984,
      1983,
      1982,
      1981,
      1980,
      1979,
      1978,
      1977,
      1976,
      1975,
      1974,
      1973,
      1972,
      1971,
      1970,
      1969,
      1968,
      1967,
      1966,
      1965,
      1964,
      1963,
      1962,
      1961,
      1960,
      1959,
      1958,
      1957,
      1956,
      1955,
      1954,
      1953,
      1952,
      1951,
      1950,
      1949,
      1948,
      1947,
      1946,
      1945,
      1944,
      1943,
      1942,
      1941,
      1940,
      1939,
      1938,
      1937,
      1936,
      1935,
      1934,
      1933,
      1932,
      1931,
      1930,
      1929,
      1928,
      1927,
      1926,
      1925,
      1924,
      1923,
      1922,
      1921,
      1920,
      1919,
      1918,
      1917,
      1916,
      1915,
      1914,
      1913,
      1912,
      1911,
      1910,
      1909,
      1908,
      1907,
      1906,
      1905,
      1904,
      1903,
      1902,
      1901,
      1900
    ];
    for (int year in yearsList) {
      String yearString = year.toString();
      var newItem =
          DropdownMenuItem(child: Text(yearString), value: yearString);
      yearItems.add(newItem);
    }
    return yearItems;
  }

  List<DropdownMenuItem<String>> workStatus() {
    List<DropdownMenuItem<String>> statusItems = [
      const DropdownMenuItem(child: Text('Work Status'), value: 'Work Status')
    ];
    List<String> statusList = ['Employed', 'Self-employed', 'Unemployed'];
    for (String status in statusList) {
      var newItem = DropdownMenuItem(child: Text(status), value: status);
      statusItems.add(newItem);
    }
    return statusItems;
  }

  String countryValue = 'Nationality';
  String selectedDay = 'Day';
  String selectedMonth = 'Month';
  String selectedYear = 'Year';
  String selectedWorkStatus = 'Work Status';

  @override
  void initState() {
    super.initState();
    days();
    months();
    years();
    workStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 15.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Full name',
              hintStyle: TextStyle(
                  color: Color.fromRGBO(33, 35, 83, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0),
              contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 5.0, 15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(33, 35, 83, 1), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(33, 35, 83, 1), width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          CSCPicker(
            showStates: false,
            showCities: false,
            flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,
            dropdownDecoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                border: Border.all(
                    color: const Color.fromRGBO(33, 35, 83, 1), width: 1)),
            disabledDropdownDecoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                color: Colors.grey.shade300,
                border: Border.all(
                    color: const Color.fromRGBO(33, 35, 83, 1), width: 1)),
            countrySearchPlaceholder: "Nationality",
            countryDropdownLabel: countryValue,
            selectedItemStyle: const TextStyle(
              color: Color.fromRGBO(33, 35, 83, 1),
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
            dropdownHeadingStyle: const TextStyle(
                color: Color.fromRGBO(33, 35, 83, 1),
                fontWeight: FontWeight.w500,
                fontSize: 14.0),
            dropdownItemStyle: const TextStyle(
              color: Color.fromRGBO(33, 35, 83, 1),
              fontSize: 14,
            ),
            dropdownDialogRadius: 5.0,
            searchBarRadius: 5.0,
            onCountryChanged: (value) {
              setState(() {
                countryValue = value;
              });
            },
          ),
          const SizedBox(height: 20.0),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Date of birth',
              style: TextStyle(
                  color: Colors.grey.withOpacity(1),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(33, 35, 83, 1), width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 1.0, 25.0, 1.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconDisabledColor: const Color.fromRGBO(33, 35, 83, 1),
                        iconEnabledColor: const Color.fromRGBO(33, 35, 83, 1),
                        style: const TextStyle(
                            color: Color.fromRGBO(33, 35, 83, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600),
                        alignment: Alignment.center,
                        value: selectedDay,
                        items: days(),
                        onChanged: (value) {
                          setState(() {
                            selectedDay = value.toString();
                          });
                        }),
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(33, 35, 83, 1), width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 1.0, 24.0, 1.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconDisabledColor: const Color.fromRGBO(33, 35, 83, 1),
                        iconEnabledColor: const Color.fromRGBO(33, 35, 83, 1),
                        style: const TextStyle(
                            color: Color.fromRGBO(33, 35, 83, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600),
                        alignment: Alignment.center,
                        items: months(),
                        value: selectedMonth,
                        onChanged: (value) {
                          setState(() {
                            setState(() {
                              selectedMonth = value.toString();
                            });
                          });
                        }),
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(33, 35, 83, 1), width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 1.0, 24.0, 1.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconDisabledColor: const Color.fromRGBO(33, 35, 83, 1),
                        iconEnabledColor: const Color.fromRGBO(33, 35, 83, 1),
                        style: const TextStyle(
                            color: Color.fromRGBO(33, 35, 83, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600),
                        alignment: Alignment.center,
                        value: selectedYear,
                        items: years(),
                        onChanged: (value) {
                          setState(() {
                            selectedYear = value.toString();
                          });
                        }),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          Container(
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromRGBO(33, 35, 83, 1), width: 1.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22.0, 1.0, 24.0, 1.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconDisabledColor: const Color.fromRGBO(33, 35, 83, 1),
                      iconEnabledColor: const Color.fromRGBO(33, 35, 83, 1),
                      style: const TextStyle(
                          color: Color.fromRGBO(33, 35, 83, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                      alignment: Alignment.centerLeft,
                      value: selectedWorkStatus,
                      items: workStatus(),
                      onChanged: (value) {
                        setState(() {
                          selectedWorkStatus = value.toString();
                        });
                      }),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          Container(
            width: double.infinity,
            child: const Text(
              'Submit',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(92, 118, 236, 1),
            ),
          )
        ],
      ),
    );
  }
}
