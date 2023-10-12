import 'package:flutter/material.dart';
import 'package:jelajah_buku/model/book.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class DetailScreen extends StatelessWidget {
  final Book book;

  const DetailScreen({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return BookDetail(book: book);
      },
    );
  }
}

class BookDetail extends StatelessWidget {
  final Book book;

  const BookDetail({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      book.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown.shade400,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const BookmarkButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 12.0),
              child: Text(
                book.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Flexible(
                        child: Text("Penulis: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ),
                      Flexible(
                        child: Text(
                          book.author,
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Flexible(
                        child: Text("Penerbit: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ),
                      Flexible(
                        child: Text(
                          book.publisher,
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Flexible(
                        child: Text("Tebal buku: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0)),
                      ),
                      Flexible(
                        child: Text(
                          '${book.pages} halaman',
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: [
                      const Flexible(
                        child: Text(
                          'Rating: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      RatingDisplay(book.rating),
                      Flexible(
                        child: Text(
                          '(${book.rating})',
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 6.0),
              child: Text(
                'Sinopsis: ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Text(
                book.resume,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    const Text(
                      'Rating Buku ini:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Center(
                      child: RatingButton(),
                    )
                  ],
                ))
          ]),
    ));
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  _BookmarkButton createState() => _BookmarkButton();
}

class _BookmarkButton extends State<BookmarkButton> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isBookmarked ? Icons.bookmark_added : Icons.bookmark_add_outlined,
        color: Colors.brown.shade800,
        size: 36.0,
      ),
      onPressed: () {
        setState(() {
          isBookmarked = !isBookmarked;
        });
      },
    );
  }
}

class RatingDisplay extends StatelessWidget {
  RatingDisplay(this.rating);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
      allowHalfRating: false,
      color: Colors.yellow,
      borderColor: Colors.yellow,
      rating: rating,
      size: 34,
      starCount: 5,
    );
  }
}

class RatingButton extends StatefulWidget {
  @override
  _RatingButton createState() => _RatingButton();
}

class _RatingButton extends State<RatingButton> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
      allowHalfRating: false,
      color: Colors.yellow,
      borderColor: Colors.yellow,
      rating: rating,
      size: 34,
      starCount: 5,
      onRatingChanged: (value) {
        setState(() {
          rating = value;
        });
      },
    );
  }
}
