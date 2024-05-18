import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:either_dart/either.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
