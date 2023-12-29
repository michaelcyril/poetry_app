import 'package:big_poetry_app/constants/constants.dart';
import 'package:flutter/material.dart';

class PoemCardWidget extends StatelessWidget {
  const PoemCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset("assets/images/home.jpeg",
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        "I Know You Can",
                        style: kTextStyle1,
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            )))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "I Know You Can is  a rewarding poem that believes in any one who does their best.\nIn this poem the poet believes in us; we can no matter what challenge we face there is still a possibility.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: kTextStyle2,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Wrap(
                  children: [
                    Text(
                      "Artist: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Davis Amedius",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12),
                    ),
                    Text(
                      " || ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Insta: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "davisLeGrate",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12),
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: () {}, child: const Text("View More", style: TextStyle(color: Colors.black45, fontSize: 12),))
            ],
          ),
        ),
      ),
    );
  }
}
