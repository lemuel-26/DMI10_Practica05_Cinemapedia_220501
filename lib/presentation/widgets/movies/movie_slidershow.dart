import 'package:card_swiper/card_swiper.dart';
import 'package:cinemapedia_220501/domain/entities/movie.dart';
import 'package:flutter/material.dart';

/// Widget que muestra un carrusel de imágenes de películas.
///
/// **Funcionalidades:**
/// - Carrusel automático con efecto de escala
/// - Imágenes con bordes redondeados y sombras
/// - Navegación manual mediante deslizamiento
class MovieSlidershow extends StatelessWidget {
  final List<Movie> movies;

  const MovieSlidershow({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: double.infinity,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        autoplay: true,
        itemCount: movies.length,
        itemBuilder: (context, index) => _Slide(movie: movies[index]),
      ),
    );
  }
}

/// Widget interno que representa cada slide individual del carrusel.
///
/// **Características:**
/// - Imagen con bordes redondeados
/// - Sombra para efecto de profundidad
/// - Padding inferior para separación
class _Slide extends StatelessWidget {
  final Movie movie;

  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(color: Colors.black45, blurRadius: 19, offset: Offset(0, 10)),
      ],
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: DecoratedBox(
        decoration: decoration,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            movie.backdropPath,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress != null) {
                return const Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                );
              }
              return child;
            },
            errorBuilder: (context, error, stackTrace) {
              return const Center(child: Icon(Icons.error_outline));
            },
          ),
        ),
      ),
    );
  }
}
