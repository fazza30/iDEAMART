import 'package:emoji_feedback/emoji_feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/models/Questions.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Pertanyaan 1 /",
                        style: Theme.of(context).textTheme.headline1.copyWith(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        " 4",
                        style: Theme.of(context).textTheme.headline1.copyWith(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Container(
                      height: 500,
                      child: Swiper(
                        itemCount: questions.length,
                        itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                        layout: SwiperLayout.STACK,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: <Widget>[
                              SizedBox(height: 100),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 30),
                                      Text(
                                        questions[index].question,
                                        style: Theme.of(context).textTheme.headline1.copyWith(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 30),
                                      EmojiFeedback(
                                        onChange: (index) {
                                          print(index);
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
