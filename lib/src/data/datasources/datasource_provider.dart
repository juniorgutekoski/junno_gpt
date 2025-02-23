abstract class DatasourceProvider<T> {
  Future<T> _init();
  Future<T> get instance;
}
