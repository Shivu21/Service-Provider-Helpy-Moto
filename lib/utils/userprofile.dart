import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  EdgeInsets getPadding({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return EdgeInsets.fromLTRB(
      left ?? 0,
      top ?? 0,
      right ?? 0,
      bottom ?? 0,
    );
  }

  double getHorizontalSize(double size) {
    return size;
  }

  TextStyle get txtRobotoSerifRegular13 {
    return TextStyle(
      fontFamily: "RobotoSerif",
      fontSize: 13,
      color: Colors.black,
    );
  }

  TextStyle get txtRobotoSerifRegular13Gray400 {
    return TextStyle(
      fontFamily: "RobotoSerif",
      fontSize: 13,
      color: Colors.grey[400],
    );
  }

  TextStyle get txtRobotoSerifRegular16 {
    return TextStyle(
      fontFamily: "RobotoSerif",
      fontSize: 16,
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 34, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Profile",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 142,
                              width: 142,
                              margin: const EdgeInsets.only(top: 3),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(71),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 65,
                  bottom: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Mechanic Name",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: txtRobotoSerifRegular16.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "Company name",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: txtRobotoSerifRegular13,
                      ),
                    ),
                    Text(
                      "Location",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: txtRobotoSerifRegular13,
                    ),
                    Container(
                      width: getHorizontalSize(
                        84,
                      ),
                      child: Text(
                        "Mechanic ID 808080",
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: txtRobotoSerifRegular13Gray400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
