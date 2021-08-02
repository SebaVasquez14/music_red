import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = '67.205.174.124',
                user = 'musik',
                password = 'Inacap.2021',
                db = 'musicdb';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
    host: host,
    port: port,
    user: user,
    password: password,
    db: db
    );
    return await MySqlConnection.connect(settings);
  }
}