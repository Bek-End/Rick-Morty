import 'package:RickAndMorty/components/error_component.dart';
import 'package:dio/dio.dart';

class DioSettings {
  //Этот класс будет содержать настройки Dio.
  static final mainServer = "URL";

  //Создаем экземпляр Dio и прописываем настройки, адрес сервера и тайм-аут:
  Dio dio = Dio(
    BaseOptions(
      baseUrl: mainServer,
      connectTimeout: 10000,
      receiveTimeout: 10000,
    ),
  );

  //Создаем функцию initialSettings.
  //В функции создаем экземпляр интерцепторов:
  //Также добавляем блокировка, очистку запроса и добавляем интерцеторы:
  void initialSettings() {
    Interceptors interceptors = dio.interceptors;
    interceptors.requestLock.lock();
    interceptors.clear();
    interceptors.add(
      InterceptorsWrapper(
        /// Обрабатываем ошибки
        onResponse: (response) {
          if (response.statusCode == 204) {
            throw DioError(
              error: "Отсутствуют данные",
              response: Response(
                statusCode: 400,
                request: response.request,
              ),
            );
          }
        },
        onError: (DioError error) async {
          if (error.type == DioErrorType.CONNECT_TIMEOUT) {
            throw DioError(
              error: "Сервер не отвечает попробуйте еще раз",
              response: Response(
                statusCode: 400,
                request: error.request,
              ),
            );
          } else if (error.message.contains("SocketException:")) {
            throw DioError(
              error: "Отсутствует интернет соединение",
              response: Response(
                statusCode: 400,
                request: error.request,
              ),
            );
          } else if (error.response.statusCode == 401) {
            ErrorComponent(errorMessage: error.message);
          }
          return error;
        },
      ),
    );

    /// Добавляем настройки логов
    interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );

    /// Разблокируем запрос
    interceptors.requestLock.unlock();

    //Инициализируем настройки:
    DioSettings() {
      initialSettings();
    }
  }
}
