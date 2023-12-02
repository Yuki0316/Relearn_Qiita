import 'package:flutter/material.dart';
import 'package:relearn_qiita_client/ui_components/long_button.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/relearn_qiita_client.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Qiita Feed App',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  '-PlayGround-',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight / 2,
              ),
              LongButton(
                text: 'Login',
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue[900],
                onPressed: () {},
              ),
              const SizedBox(
                height: 14,
              ),
              LongButton(
                  text: 'Logout',
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                  foregroundColor: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
