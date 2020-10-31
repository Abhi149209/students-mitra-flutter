
import 'Album_cell.dart';

import 'json.dart';

class WeatherModel {
  Future<dynamic> getCityWeather() async {
    var url1 = 'https://api.steinhq.com/v1/storages/5f37792b5d3cdc44fcd7d30b/ml';
    Networking networking = Networking(url: url1);
    var weatherData = await networking.getData();
    print(weatherData);

    List<Users> users=[];
    for(int u=0;u<weatherData.length;u++) {
      print(u);
      Users user=Users(question: weatherData[u]["question"],opt0: weatherData[u]["opt0"],opt1: weatherData[u]["opt1"],opt2: weatherData[u]["opt2"],opt3: weatherData[u]["opt3"],ans: weatherData[u]["ans"]);
      print(user.opt3);
      users.add(user);

    }


    return users;
  }
}

class Users {
  String id;
  String question;
  String opt0;
  String opt1;
  String opt2;
  String opt3;
  String ans;
  String references;
  Users({this.id,
    this.question,
    this.opt0,
    this.opt1,
    this.opt2,
    this.opt3,
    this.ans,
    this.references});







}