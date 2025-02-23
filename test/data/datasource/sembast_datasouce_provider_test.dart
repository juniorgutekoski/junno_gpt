import 'package:sembast/sembast_io.dart';
import 'package:path/path.dart';

class SembastDatasouceTestProviderTest {
  static final SembastDatasouceTestProviderTest _instance =
      SembastDatasouceTestProviderTest._internal();
  factory SembastDatasouceTestProviderTest() => _instance;

  SembastDatasouceTestProviderTest._internal();

  Database? _database;
  final DatabaseFactory _dbFactory = databaseFactoryIo;

  Future<Database> get instance async {
    _database ??= await _initDatabase();

    return _database!;
  }

  Future<Database> _initDatabase() async {
    /* var dir = await getApplicationDocumentsDirectory()
      ..create(recursive: true);
*/
    var dbPath = join('test/data/datasource', 'test.db');

    return await _dbFactory.openDatabase(dbPath);
  }
}
