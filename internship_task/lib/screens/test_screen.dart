import 'package:flutter/material.dart';

class i extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildMenuItem('Invite'),
          SizedBox(height: 24),
          _buildMenuItem('Add member'),
          SizedBox(height: 24),
          _buildAddGroupItem(),
          SizedBox(height: 30),
          Container(
            width: 88,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(73, 73, 73, 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(width: 8),
        Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Proxima Nova',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            height: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildAddGroupItem() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 2,
                        left: 2,
                        child: Image.asset(
                          'lib/images/weekend.png',
                          width: 19.6363525390625,
                          height: 19.7335205078125,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 13.328125,
                        child: Image.asset(
                          'lib/images/weekend.png',
                          width: 19.6363525390625,
                          height: 19.7335205078125,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 7.5,
                        left: 14.9375,
                        child: Image.asset(
                          'lib/images/weekend.png',
                          width: 19.6363525390625,
                          height: 19.7335205078125,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 1.4765625,
                        child: Image.asset(
                          'lib/images/weekend.png',
                          width: 19.6363525390625,
                          height: 19.7335205078125,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 7.5,
                        left: 0,
                        child: Image.asset(
                          'lib/images/weekend.png',
                          width: 19.6363525390625,
                          height: 19.7335205078125,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 7.470703125,
                        left: 7.328125,
                        child: Image.asset(
                          'lib/images/weekend.png',
                          width: 19.6363525390625,
                          height: 19.7335205078125,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 15.0546875,
                        left: 6.1484375,
                        child: Image.asset(
                          'lib/images/weekend.png',
                          width: 19.6363525390625,
                          height: 19.7335205078125,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 14,
                left: 14,
                child: Image.asset(
                  'lib/images/weekend.png',
                  width: 19.6363525390625,
                  height: 19.7335205078125,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 16.51953125,
                left: 16.509765625,
                child: Container(
                  width: 2.97998046875,
                  height: 2.989990234375,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 1.4609375,
                        left: 0,
                        child: Image.asset(
                          'lib/images/weekend.png',
                          width: 2.97998046875,
                          height: 2.989990234375,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 1.490234375,
                        child: Image.asset(
                          'lib/images/weekend.png',
                          width: 2.97998046875,
                          height: 2.989990234375,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'lib/images/weekend.png',
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8),
        Text(
          'Add Group',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Proxima Nova',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            height: 1,
          ),
        ),
      ],
    );
  }
}
