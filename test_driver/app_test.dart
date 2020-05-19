import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){
  final HTD_Card = find.byValueKey('HTD_Card');
  final HomePage = find.byValueKey('HomePage');
  final HTD_description_button = find.byValueKey('HTD_description_button');
  final Doctor_button = find.byValueKey('Doctor_button');
  final HTD_symptompage = find.byValueKey('HTD_symptompage');
  final HTD_precautionpage = find.byValueKey('HTD_precautionpage');
  final HTD_Morepage = find.byValueKey('HTD_Morepage');
  final Doctor_page = find.byValueKey('Doctor_page');
 // final CKDprecautionPage = find.byValueKey('CKDprecautionPage');
 // final sampleCKDsymptom = find.byValueKey('sampleCKDsymptom');
 // final CKDsymptomPage = find.byValueKey('CKDsymptomPage');
//  final CKDsymptomBackButton = find.byValueKey('CKDsymptomBackButton');
  group('Goto homepage and doctor page from HTD card test',(){
    FlutterDriver driver;
    setUpAll(()async{
      driver= await FlutterDriver.connect();
    });
    tearDownAll((){
      if (driver!= null){
        driver.close();
      }

    });
    test('Goto homepage and doctor page from HTD card test', () async {
      await driver.tap(HTD_Card);
      await driver.waitFor(HTD_description_button);
      await driver.tap(HTD_description_button);
      await driver.waitFor(HomePage);
      await driver.waitUntilNoTransientCallbacks();

    });
  });



}