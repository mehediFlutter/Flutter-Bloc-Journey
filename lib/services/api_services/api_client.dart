
import 'package:http/http.dart';

abstract class BaseApiServices{
  Future<Response> getApi(String url);
  Future<Response> postApi(String url,var data);
}