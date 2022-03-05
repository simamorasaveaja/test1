import 'package:flutter/material.dart';
import 'package:setoko/model/item_product.dart';
import 'package:setoko/pages/cart/component/item_cart_widget.dart';
import 'package:setoko/utils/colors.dart';

class ItemCartByMerchantWidget extends StatefulWidget {
  final List<ItemProduct> itemProduct;
  final Function(int, bool?) onCheckTab;
  const ItemCartByMerchantWidget({Key? key, required this.itemProduct, required this.onCheckTab}) : super(key: key);

  @override
  _ItemCartByMerchantWidgetState createState() => _ItemCartByMerchantWidgetState();
}

class _ItemCartByMerchantWidgetState extends State<ItemCartByMerchantWidget> {

  bool all = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildListWidget(),
    );
  }

  List<Widget> _buildListWidget() {
    List<Widget> widgets = [];
    widgets.add(
        Row(
          children: [
            ListTileTheme(
              contentPadding: EdgeInsets.all(0),
              child: Checkbox(
                checkColor: Colors.white,  // color of tick Mark
                activeColor: greenPrimary,
                value: _getCheckoutAll(),
                onChanged: (value) {
                  widget.onCheckTab(-1, value);
                },
              ),
            ),
            Text('Sold by Setoko', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 14),),
          ],
        )
    );
    for (int i = 0 ; i < widget.itemProduct.length ; i++) {
      widgets.add(
        ItemCartWidget(
          itemProduct: widget.itemProduct[i],
          position: i,
          onTabCheck: (value, position) {
            widget.onCheckTab(position, value);
          },
        )
      );
    }
    return widgets;
  }
  bool _getCheckoutAll() {
    for (int i = 0 ; i < widget.itemProduct.length ; i++) {
      if (widget.itemProduct[i].check == false) {
        return false;
      }
    }
    return true;
  }

}
