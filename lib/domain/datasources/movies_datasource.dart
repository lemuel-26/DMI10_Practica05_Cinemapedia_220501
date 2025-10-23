import 'package:cinemapedia_220501/domain/entities/movie.dart';

/// Contrato abstracto que define las operaciones de acceso a datos para películas.
///
/// Esta interfaz establece qué métodos debe implementar cualquier fuente de datos
/// que quiera proporcionar información de películas (API, base de datos local, cache, etc.).
///
///
abstract class MoviesDatasource {
  /// Obtiene la lista de películas que están actualmente en cartelera.
  ///
  /// **Parámetros:**
  /// - `page`: Número de página para paginación (por defecto: 1)
  ///
  /// **Retorna:** Lista de películas en cartelera
  ///
  Future<List<Movie>> getNowPlaying({int page = 1});
}
