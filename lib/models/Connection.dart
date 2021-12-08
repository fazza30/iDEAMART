import 'package:mysql1/mysql1.dart';

class Connection {
  static String host = 'localhost',
                user = 'root',
                password = 'root',
                db = 'ideamart';
  static int port = 3306;

  Connection();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
      host: host, 
      user: user,
      password: password,
      db: db,
      port: port
    );
    return await MySqlConnection.connect(settings);
  }
}