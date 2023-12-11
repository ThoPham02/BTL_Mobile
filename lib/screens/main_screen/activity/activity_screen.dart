import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management/screens/main_screen/widgets/bottom_bar.dart';
import 'package:task_management/constants/style.dart';
import 'package:intl/intl.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  final int completedTasks = 84; // Giả sử có 84% tasks đã hoàn thành.
  String formattedDate = DateFormat('d MMMM y').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              // setDrawState!(); // Uncomment và thay thế bằng hàm thực tế để mở menu
            },
            child: Container(
              width: 46,
              height: 46,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset('assets/vectors/menu.svg'),
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                // Thêm hành động của bạn ở đây, ví dụ mở một trang hoặc hiển thị một thông báo
              },
              child: Container(
                width: 46,
                height: 46,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                    'assets/vectors/filter.svg'), // Thay thế 'your_icon.svg' bằng đường dẫn tới icon của bạn
              ),
            ),
            const SizedBox(
                width: 16), // Để tạo khoảng cách giữa các action item nếu cần
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Today',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20, // Adjust font size as needed
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              formattedDate,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval:
                        20, // Match the interval of the right titles
                    getDrawingHorizontalLine: (value) {
                      return const FlLine(
                        color: Color.fromRGBO(48, 48, 48, 0.05),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true, // Hiển thị các tiêu đề bên phải
                        reservedSize: 48,
                        interval:
                            20, // Đặt interval cho mỗi 1 đơn vị để hiển thị tất cả từ 0 đến 100%
                        getTitlesWidget: (double value, TitleMeta meta) {
                          if (value == 0 || value == 105) {
                            return Container();
                          } // Biến đổi giá trị sang dạng phần trăm
                          return Text(
                            '${value.toInt()}%',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color.fromRGBO(48, 48, 48, 0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, -5),
                        const FlSpot(1, 18),
                        const FlSpot(2, 17),
                        const FlSpot(3, 40),
                        const FlSpot(4, 43),
                        FlSpot(5, completedTasks.toDouble()),
                        // Thêm các điểm dữ liệu của bạn ở đây
                      ],
                      isCurved: true,
                      barWidth: 5,
                      color: const Color.fromRGBO(249, 112, 87, 1),
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) {
                          if (index == barData.spots.length - 1) {
                            // Only show dot at the tail
                            return FlDotCirclePainter(
                              radius: 4,
                              color: const Color.fromRGBO(249, 112, 87, 1),
                              strokeWidth: 2,
                              strokeColor: Colors.white,
                            );
                          }
                          return FlDotCirclePainter(
                            radius: 0,
                          ); // No dot for other points
                        },
                      ),
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            Colors.red.withOpacity(0.3),
                            Colors.transparent
                          ],
                          begin: Alignment.topCenter, // Start of the gradient
                          end: Alignment.bottomCenter, // End of the gradient
                        ),
                      ),
                    ),
                  ],
                  minY: 0,
                  maxY: 105,
                ),
              ),
            ),
            Container(
              height: 270,
              width: double.infinity,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 50,
                    spreadRadius: 0,
                    color: Color.fromRGBO(197, 197, 197, 0.27),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    height: 180,
                    child: CircularProgressIndicator(
                      value: completedTasks / 100,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Color.fromRGBO(249, 112, 87, 1)),
                      strokeWidth: 10,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$completedTasks%',
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Tasks completed',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(48, 48, 48, 0.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomBar(controller: widget.pageController));
  }
}
