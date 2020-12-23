import 'package:cetquiz_app/Screens/QuizPage.dart';
import 'package:flutter/material.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fatma Beyzanur Özel Cet Quiz HW')

    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'Merhaba, Hoşgeldin. Aşağıda Bulunan İki Quizden Birini Seçerek Başlayabilirsin.',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:18.0),
            child: RaisedButton(
              color: Colors.blueGrey,
              onPressed: () {
                gotoQuizPage(context);
              },
              child: Text('ÇOKTAN SEÇMELİ QUİZ1- BAŞLA',
                        style: TextStyle(fontSize: 20)),
              highlightColor: Colors.green,

            ),
          ),
          RaisedButton(
            color: Colors.blueGrey,

            onPressed: () {
              gotoQuizPage(context);
            },
            child: Text('ÇOKTAN SEÇMELİ QUİZ2- BAŞLA',
                style: TextStyle(fontSize: 20)),
          )
        ],
      ),
    );
  }
}
