import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_swagger_ui/shelf_swagger_ui.dart';

void main(List<String> args) async {
  final path = 'specs/store.openapi.yaml';
  final handler = SwaggerUI(path, title: 'Store API');
  var server = await io.serve(handler, '0.0.0.0', 4002);
  print('Serving at http://${server.address.host}:${server.port}');
}
