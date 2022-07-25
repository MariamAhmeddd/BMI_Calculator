import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}
void calculateBMI(double h,double w)
{

}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalScreen extends StatefulWidget {
  const CalScreen({Key? key}) : super(key: key);

  @override
  _CalScreenState createState() => _CalScreenState();
}

class _CalScreenState extends State<CalScreen> {
  bool check = false;
  bool checkk = false;
  //TextEditingController weightTEC = new TextEditingController();
  //TextEditingController heightTEC = new TextEditingController();
  double w=0.0,h=0.0,result=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 139, 180),
      appBar: AppBar(title: Text(
          "BMI Calculator",
        style: TextStyle(
          fontSize: 20 ,
        ),
      ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.settings),
          ),
        ],
        backgroundColor: Color.fromRGBO(0, 0, 139, 180),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(40),
                    color: check ? Color.fromRGBO(0, 0, 139, 150) : Colors.black,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          check = !check;
                          checkk = false;
                        });
                      },
                      child: Ink(
                        height: 100,
                        width: 100,
                        child : Image.asset("Assets/male_symbol.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(40),
                    color: checkk ? Color.fromRGBO(0, 0, 139, 150) : Colors.black,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          checkk = !checkk;
                          check = false;
                        });
                      },
                      child: Ink(
                        height: 100,
                        width: 100,
                        child : Image.asset("Assets/2000px-Pink_Venus_symbol.svg_.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20),
                 Container(
                   padding: EdgeInsets.all(40),
                   color: Colors.black,
                   child: Column(
                     children: [
                       Text(
                        "Your Height in cm",
                          style: TextStyle(
                           color: Colors.white,
                           ),
                       ),
                       TextFormField(
                         onChanged: (value){
                           h=double.parse(value);
                         },
                         keyboardType: TextInputType.number,
                         //controller: heightTEC,
                         decoration: InputDecoration(
                           hintText: "Your Hieght",
                       ),
                         textAlign: TextAlign.center,
                         style: TextStyle(color: Colors.white,),
                       )
                     ],
                   ),
                   ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(40),
                  color: Colors.black,
                  child: Column(
                    children: [
                      Text(
                        "Your Weight in kg",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextFormField(
                        onChanged: (value){
                          w=double.parse(value);
                        },
                        keyboardType: TextInputType.number,
                        //controller: weightTEC,
                        decoration: InputDecoration(
                          hintText: "Your Weight",
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(40),
              color: Colors.black,
              child: Column(
                children: [
                  Text(
                      "Your BMI :\n ${result.toStringAsFixed(2)}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 30),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  //print(w);
                  //print(h);
                  setState(() {
                    h = (h/100);
                    result=((w)/(h*h));
                  });
                  //print(result);
            },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),),
              child: Text(
                "calculate",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            )
          ],
        ),
        ),
    );
  }
}





