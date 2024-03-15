import 'package:flutter/material.dart';
import 'package:flutter_thuchanh_04/page/product/productbody.dart';
import '../../conf/const.dart';
import 'package:flutter_thuchanh_04/data/model/productmodel.dart';
import 'package:intl/intl.dart';
import '../../data/provider/productprodiver.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  List<Product> lstPro = [];
  Future<String> loadProList() async {
    lstPro = await ReadData().loadData();
    return '';
  }

  @override
  void initState() {
    super.initState();
    loadProList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadProList(),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return Center(
          child: Column(
            children: [
              const Text(
                "Product list",
                style: titleStyle,
              ),
              Expanded(
                  child: GridView.builder(
                      itemCount: lstPro.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8),
                      itemBuilder: ((context, index) {
                        return itemProView(lstPro[index]);
                      })))
            ],
          ),
        );
      },
    );
  }

  
  // @override
  // Widget build(BuildContext context) {
  //   return const Padding(
  //     padding: EdgeInsets.all(16.0),
  //     chi;ld
  //   );
  // }
}
