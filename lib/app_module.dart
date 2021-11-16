import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/home_controller.dart';
// import 'services/dio_client.dart';
// import 'services/http_client.dart';
import 'services/http_client_interface.dart';
import 'services/json_placeholder_service.dart';
import 'services/uno_client.dart';
import 'views/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        // Bind.singleton<IHttpClient>((i) => DioClient()),
        // Bind.singleton<IHttpClient>((i) => HttpPackageClient()),
        Bind.singleton((i) => HomeController(i())),
        Bind.singleton((i) => JsonPlaceholderService(i())),
        Bind.singleton<IHttpClient>((i) => UnoClient()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage()),
      ];
}
