import 'dart:convert';

import 'package:app/model/getapi_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
part 'get_api_state.dart';

class GetApiCubit extends Cubit<GetApiState> {
  GetApiCubit() : super(GetApiInitial());

  getapi() async {
    emit(GetApiLoading());
    var url = Uri.parse(
        "https://rt0vu6tjkl.execute-api.ap-south-1.amazonaws.com/academic-service/modules/all/modules");

    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsondata = jsonDecode(response.body);
        print(jsondata);
        GetApiModel data = GetApiModel.fromJson(jsondata);
        emit(GetApiSuccess(getApiModel: data));
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      emit(GetApiError(message: e.toString()));
    }
  }
}
