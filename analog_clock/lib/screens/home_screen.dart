import 'package:analog_clock/screens/body.dart';
import 'package:analog_clock/size_congiuration.dart';
import 'package:flutter/material.dart';
// import theme.dart';?

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Analog Watch',
                style: Theme.of(context).textTheme.bodyText1)),
        leading: IconButton(
            icon: Icon(
              Icons.settings_applications_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {}),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: getProportionateScreenWidth(32),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
      body: Body(),
    );
  }
}
