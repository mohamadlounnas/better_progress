import 'dart:convert';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
// url launcher
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  List<Map> products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    // load assets/top.json
    var data = await rootBundle.loadString('assets/top.json');
    var json = jsonDecode(data);
    setState(() {
      products = List<Map>.from(json);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Products'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // _loadProducts();
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .7,
        ),
        itemCount: products.length,
        // 9/16

        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              // open ProductView
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ProductView(
                      product: products[index],
                    );
                  },
                ),
              );
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: ListView(
                      // horizontal
                      scrollDirection: Axis.horizontal,
                      children: [
                        CachedNetworkImage(
                          imageUrl: products[index]['image'] ?? '',
                          placeholder: (context, url) => const Center(
                              child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(),
                          )),
                          errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                          fit: BoxFit.cover,
                        ),
                        // gallery
                        for (var image in products[index]['gallery'] ?? [])
                          CachedNetworkImage(
                            imageUrl: image,
                            placeholder: (context, url) => const Center(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircularProgressIndicator(),
                            )),
                            errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                            fit: BoxFit.cover,
                          ),
                      ],
                    ),
                  ),
                  // shadow
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0x00000000),
                            Color(0xCC000000),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            products[index]['name'] ?? '',
                            style: const TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            (products[index]['price'] ?? '') + ' DA',
                            style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // number of orders in top left
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${products[index]['ordersCount']?.toString() ?? ''} طلبات',
                        style: const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  // chart of orders by days
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      child: Builder(builder: (context) {
                        // parse created_at to DateTime (8/8/2023, 12:07:55 AM) to DateTime
                        var javascriptDate = products[index]['created_at'] ?? '';
                        var createdAt = DateFormat('M/d/y, h:m:s a').parse(javascriptDate);
                        return Text(
                          '${timeago.format(createdAt)}\n${products[index]['validOrdersCount']} طلب مؤكد',
                          style: const TextStyle(
                            fontSize: 12, color: Colors.white,
                            // shadows to text
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(0.0, 1.0),
                                blurRadius: 3.0,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),

                  // gaph of orders by days (order chart widget)
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    height: 50,
                    child: OrderChartWidget(
                      orders: List<List<dynamic>>.from(products[index]['orders'] ?? []),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// example of order data:
// [
//   1706195565, created_at seconds
//   1,
//   "EHbOVBhYQOGXOnWPnY71",
//   false,
//   "الجزائر",
//   "جسر قسنطينة",
//   1,
//   0
// ],
class OrderChartWidget extends StatelessWidget {
  const OrderChartWidget({super.key, required this.orders});

  final List<List<dynamic>> orders;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: OrderChartPainter(orders: orders),
    );
  }
}

class OrderChartPainter extends CustomPainter {
  OrderChartPainter({required this.orders});

  final List<List<dynamic>> orders;

  @override
  void paint(Canvas canvas, Size size) {
    // chart of lines
    var paint = Paint()
      ..color = Colors.greenAccent.withOpacity(.5)
      ..strokeWidth = 2;

    // orders are orderd by created_at
    var firstOrderDate = (orders.first[0] as int);
    var lastOrderDate = (orders.last[0] as int);
    var ordersCount = orders.length;
    // draw rect on each 1 hour, the height of the rect is the number of orders in that 1 hours
    var periodes = (lastOrderDate - firstOrderDate) ~/ 3600;
    var max = 0;
    var min = 0;
    for (var i = 0; i < periodes; i++) {
      var ordersInThisPeriode = orders.where((order) {
        var createdAt = order[0] as int;
        return createdAt >= firstOrderDate + i * 3600 && createdAt < firstOrderDate + (i + 1) * 3600;
      }).length;
      max = max < ordersInThisPeriode ? ordersInThisPeriode : max;
      min = min > ordersInThisPeriode ? ordersInThisPeriode : min;
    }
    var rectWidth = size.width / periodes;
    for (var i = 0; i < periodes; i++) {
      var ordersInThisPeriode = orders.where((order) {
        var createdAt = order[0] as int;
        return createdAt >= firstOrderDate + i * 3600 && createdAt < firstOrderDate + (i + 1) * 3600;
      }).length;
      var rectHeight = (ordersInThisPeriode - min) / (max - min) * size.height;
      canvas.drawRect(
        Rect.fromLTWH(i * rectWidth, size.height - rectHeight, rectWidth, rectHeight),
        paint,
      );
    }

    // draw chart of orders by 1 hour but each 1 hour is a point, start fron previous point
    var points = <Offset>[];
    for (var i = 0; i < periodes; i++) {
      var ordersInThisPeriode = orders.where((order) {
        var createdAt = order[0] as int;
        return createdAt >= firstOrderDate + i * 3600 && createdAt < firstOrderDate + (i + 1) * 3600;
      }).length;
      var rectHeight = (ordersInThisPeriode - min) / (max - min) * size.height;
      points.add(Offset(i * rectWidth + rectWidth / 2, size.height - rectHeight));
    }
    paint.color = Colors.greenAccent;
    paint.strokeWidth = 1;
    canvas.drawPoints(PointMode.polygon, points, paint);

    // draw chart of orders by 1 hour but each 1 hour is a point, start fron previous point
    var amps = <num>[];
    // get how meny hours in between firstOrderDate and lastOrderDate
    var hours = (lastOrderDate - firstOrderDate) ~/ 3600;
    // put number of orders in each hour in amps
    for (var i = 0; i < hours; i++) {
      var ordersInThisPeriode = orders.where((order) {
        var createdAt = order[0] as int;
        return createdAt >= firstOrderDate + i * 3600 && createdAt < firstOrderDate + (i + 1) * 3600;
      }).length;
      amps.add(ordersInThisPeriode);
    }
    // factor to make the chart fit in the canvas
    var factor = size.height / ordersCount;
    // draw chart of orders by 1 hour but each 1 hour is a point, start fron previous point
    var points2 = <Offset>[];
    double total = -size.height;
    for (var i = 0; i < hours; i++) {
      var current = amps[i];
      var x = i * rectWidth + rectWidth / 2;
      var y = (-total) * factor;
      points2.add(Offset(x, y));
      total += current;
    }
    paint.color = Colors.yellow;
    paint.strokeWidth = 2;
    canvas.drawPoints(PointMode.polygon, points2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

/// ProductView
class ProductView extends StatefulWidget {
  const ProductView({super.key, required this.product});

  final Map product;

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  Map<String, int> ordersByWilaya = {};

  @override
  void initState() {
    super.initState();
    fillOrdersByWilaya();
  }

  void fillOrdersByWilaya() {
    var unsortedOrdersByWilaya = <String, int>{};
    for (var order in widget.product['orders'] ?? []) {
      var wilaya = order[4] as String;
      if (wilaya.isEmpty) {
        wilaya = 'غير محددة';
      }
      unsortedOrdersByWilaya[wilaya] = (unsortedOrdersByWilaya[wilaya] ?? 0) + 1;
    }
    var sortedKeys = unsortedOrdersByWilaya.keys.toList(growable: false)..sort((k1, k2) => unsortedOrdersByWilaya[k2]!.compareTo(unsortedOrdersByWilaya[k1]!));
    var sortedOrdersByWilaya = <String, int>{};
    for (var key in sortedKeys) {
      sortedOrdersByWilaya[key] = unsortedOrdersByWilaya[key]!;
    }
    setState(() {
      ordersByWilaya = sortedOrdersByWilaya;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product['name'] ?? ''),
      ),
      body: ListView(
        children: <Widget>[
          // horizontal
          Container(
            height: 300,
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * .5),
            child: ListView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: GestureDetector(
                      onTap: () {
                        showImageViewer(context, 
                        CachedNetworkImageProvider(widget.product['image'] ?? ''),
                         onViewerDismissed: () {
                                        print("dismissed");
                                      });

                      },
                    child: CachedNetworkImage(
                      imageUrl: widget.product['image'] ?? '',
                      placeholder: (context, url) => const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      )),
                      errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // gallery
                for (var image in widget.product['gallery'] ?? [])
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showImageViewer(context, 
                        CachedNetworkImageProvider(image),
                         onViewerDismissed: () {
                                        print("dismissed");
                                      });

                      },
                      child: CachedNetworkImage(
                        imageUrl: image,
                        placeholder: (context, url) => const Center(
                            child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(),
                        )),
                        errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // button open url
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilledButton.icon(
              onPressed: () async {
                var url = widget.product['url'] ?? '';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: const Icon(Icons.open_in_browser),
              label: const Text('Open in browser'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.product['description'] ?? '',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              (widget.product['price'] ?? '') + ' DA',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Orders: ${widget.product['ordersCount']?.toString() ?? ''}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Valid Orders: ${widget.product['validOrdersCount']?.toString() ?? ''}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Created At: ${widget.product['created_at'] ?? ''}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          // first order
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              // firstOrderSec
              'First Order: ${DateTime.fromMillisecondsSinceEpoch((widget.product['firstOrder']['seconds'] as int)*1000).toString()}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          // last order
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              // lastOrderSec
              'Last Order: ${DateTime.fromMillisecondsSinceEpoch((widget.product['lastOrder']['seconds'] as int)*1000).toString()}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Divider(),
          // orders by wilaya
          for (var wilaya in ordersByWilaya.keys)
            ListTile(
              title: Text(wilaya),
              trailing: Text(ordersByWilaya[wilaya]?.toString() ?? ''),
            ),
        ],
      ),
    );
  }
}
