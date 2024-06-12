import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeRemoteDataSource homLocalDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource, required this.homLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks()async{
    try {
      var booksList = homLocalDataSource.fetchFeaturedBooks();
      if(booksList.isNotEmpty){
        return right(booksList);
      }
      var books = homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } on Exception catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async{
    try {
      var booksList = homLocalDataSource.fetchNewestBooks();
      if(booksList.isNotEmpty){
        return right(booksList);
      }
      var books = homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } on Exception catch (e) {
      return left(Failure());
    }
  }

}