import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:vanvex/model/sales_data.dart';

class PaymentRecordWidget extends StatefulWidget {
  const PaymentRecordWidget({Key? key}) : super(key: key);

  @override
  State<PaymentRecordWidget> createState() => _PaymentRecordWidgetState();
}

class _PaymentRecordWidgetState extends State<PaymentRecordWidget> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40),
    _SalesData('Jun', 40),
    _SalesData('July', 40),
    _SalesData('Aug', 90),
    _SalesData('Sep', 54),
    _SalesData('Oct', 100),
    _SalesData('Nov', 45),
    _SalesData('Dec', 90),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      child: Column(
        children: [
          SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(
              text: 'Sales analysis',
              textStyle: const TextStyle(
                fontSize: 16,
              ),
            ),

            // Enable legend
            // legend: Legend(isVisible: true),
            // Enable tooltip
            // borderColor: Colors.black,

            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<_SalesData, String>>[
              LineSeries<_SalesData, String>(
                dataSource: data,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Sales',
                // Enable data label
                // dataLabelSettings: DataLabelSettings(isVisible: true),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: size.width / 2,
                  child: Card(
                    color: Colors.blueGrey.shade50,
                    elevation: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.receipt_long_sharp),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Status"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Payment"),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
