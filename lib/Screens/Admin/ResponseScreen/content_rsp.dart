import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ContentRsp extends StatefulWidget {
  const ContentRsp({Key key}) : super(key: key);

  @override
  _ContentRspState createState() => _ContentRspState();
}

class _ContentRspState extends State<ContentRsp> {
  Map<String, double> dataMap = {
    "Sangat Setuju" : 5,
    "Setuju" : 3,
    "Tidak Setuju" : 2,
    "Sangat Tidak Setuju" : 1,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 400,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Pusat Karier memiliki visi dan misi yang jelas",
                      style: Theme.of(context).textTheme.headline1.copyWith(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Divider(color: Colors.black, thickness: 1),
                    PieChart(
                      dataMap: dataMap,
                      chartRadius: MediaQuery.of(context).size.width / 2.7,
                      legendOptions: LegendOptions(
                        legendPosition: LegendPosition.bottom,
                        showLegendsInRow: true
                      ),
                      chartValuesOptions: ChartValuesOptions(
                        showChartValuesInPercentage: true,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 400,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Tujuan dari Pusat Karier telah difahami dengan baik oleh seluruh pengguna layanan",
                      style: Theme.of(context).textTheme.headline1.copyWith(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Divider(color: Colors.black, thickness: 1),
                    PieChart(
                      dataMap: dataMap,
                      chartRadius: MediaQuery.of(context).size.width / 2.7,
                      legendOptions: LegendOptions(
                        legendPosition: LegendPosition.bottom,
                        showLegendsInRow: true
                      ),
                      chartValuesOptions: ChartValuesOptions(
                        showChartValuesInPercentage: true,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 400,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Pusat Karier memberikan layanan konsisten dengan tujuan",
                      style: Theme.of(context).textTheme.headline1.copyWith(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Divider(color: Colors.black, thickness: 1),
                    PieChart(
                      dataMap: dataMap,
                      chartRadius: MediaQuery.of(context).size.width / 2.7,
                      legendOptions: LegendOptions(
                        legendPosition: LegendPosition.bottom,
                        showLegendsInRow: true
                      ),
                      chartValuesOptions: ChartValuesOptions(
                        showChartValuesInPercentage: true,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 400,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Informasi layanan Pusat Karier mudah diakses",
                      style: Theme.of(context).textTheme.headline1.copyWith(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Divider(color: Colors.black, thickness: 1),
                    PieChart(
                      dataMap: dataMap,
                      chartRadius: MediaQuery.of(context).size.width / 2.7,
                      legendOptions: LegendOptions(
                        legendPosition: LegendPosition.bottom,
                        showLegendsInRow: true
                      ),
                      chartValuesOptions: ChartValuesOptions(
                        showChartValuesInPercentage: true,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}