part of 'package:flutter_auth/view.dart';

class ResponsePage extends StatefulWidget {

  @override
  _ResponsePageState createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          backgroundColor: Color(0xFFEEEEEE),
          automaticallyImplyLeading: false,
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: HeadRsp(),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
                child: ContentRsp(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeadRsp extends StatefulWidget {
  @override
  _HeadRspState createState() => _HeadRspState();
}

class _HeadRspState extends State<HeadRsp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.chevron_left_rounded,
              color: Colors.black,
              size: 34,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(98, 0, 120, 0),
            child: Text(
              'Summary',
              style: Theme.of(context).textTheme.headline1?.copyWith(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContentRsp extends StatefulWidget {
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
                      style: Theme.of(context).textTheme.headline1?.copyWith(
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
                      style: Theme.of(context).textTheme.headline1?.copyWith(
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
                      style: Theme.of(context).textTheme.headline1?.copyWith(
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
                      style: Theme.of(context).textTheme.headline1?.copyWith(
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