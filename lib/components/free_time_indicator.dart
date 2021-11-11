import 'package:flutter/material.dart';

class FreeTimeIndicator extends StatelessWidget {
  const FreeTimeIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 25,
        height: 20,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff2FED51),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  )),
              width: (MediaQuery.of(context).size.width * .25) - 25,
              height: 20,
              
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffE4EFFF),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
              width: (MediaQuery.of(context).size.width * .75) - 25,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
