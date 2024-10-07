import 'package:dio/dio.dart';

import '../models/meals_model.dart';
import '../models/users_model.dart';

String token = "";

Future<bool> getTokenForUser(UsersModel user) async {
  Dio request = Dio();

  Response response = await request.post(
      'https://food-api-omega.vercel.app/api/v1/chef/signin',
      data: user.toMap());

  if (response.statusCode == 202) {
    token = response.data['token'];
    // print(token);
    return true;
  } else {
    return false;
  }
}

Future<MealsModel> getDataOfMeals() async {
  Dio request = Dio();
  Response response = await request.get(
    'https://food-api-omega.vercel.app/api/v1/chef/get-chef/66166877047e0824bcaa3368/meals',
    options: Options(headers: {"token": "FOODAPI $token"}),
  );
  MealsModel meals = MealsModel.fromMap(response.data);
  return meals;
}
