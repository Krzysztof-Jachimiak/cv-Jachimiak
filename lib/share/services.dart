import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

//1 po ściągnięciu depedenties getit i launch url tworzę klasę z funkcją call
//wykorzystującą launch
class CallService {
  void call(String number) => launch('tel:$number');
  void sendMail(String email) => launch('mailto:$email');
}

// 2 potem tworzę odwołanie do instancji GetIt zmienną locator czyli lokalizator
GetIt locator = GetIt();

// 3towrzę funkcję ustawień dla lokalizatora
void set() {
  locator.registerSingleton(CallService());
}
