import 'package:junno_app/src/data/datasources/datasource_provider.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path/path.dart';

class SembastDatasourceProvider implements DatasourceProvider<Database> {
  static final SembastDatasourceProvider _instance =
      SembastDatasourceProvider._internal();
  factory SembastDatasourceProvider() => _instance;

  SembastDatasourceProvider._internal();

  Database? _database;
  final DatabaseFactory _dbFactory = databaseFactoryIo;

  @override
  Future<Database> get instance async {
    _database ??= await _init();

    return _database!;
  }

  @override
  Future<Database> _init() async {
    /* var dir = await getApplicationDocumentsDirectory()
      ..create(recursive: true);
*/
    var dbPath = join('lib/src/data/datasources', 'junno_app.db');

    return await _dbFactory.openDatabase(dbPath);
  }
}
