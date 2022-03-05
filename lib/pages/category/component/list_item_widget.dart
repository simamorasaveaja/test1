import 'package:flutter/material.dart';
import 'package:setoko/generated/l10n.dart';
import 'package:setoko/network/models/response/category_response.dart';
import 'package:setoko/pages/category/component/item_widget.dart';
import 'package:setoko/utils/colors.dart';

class ListItemWidget extends StatefulWidget {
  final CategoryResponse itemCategory;
  const ListItemWidget({Key? key, required this.itemCategory}) : super(key: key);

  @override
  _ListItemWidgetState createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 19.0, left: 19.0, right: 19.0),
            child: Row(
              children: [
                Text(widget.itemCategory.name, style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 16),),
                InkWell(
                    child: Text(S.of(context).see_all, style: TextStyle(color: greenPrimary, fontSize: 12),),
                  onTap: () {
                    showAllItem(context);
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemWidget();
              },

            ),
          )
        ],
      ),
    );

  }

  void showAllItem(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        builder: (context) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(widget.itemCategory.name, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15),),
                    Spacer(),
                    InkWell(
                        child: Icon(Icons.cancel_outlined),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  crossAxisCount: 3 ,
                  children: List.generate(7,(index){
                    return Container(
                      child: ItemWidget(),
                    );
                  }),
                ),
              ),
            ],
          );
        });
  }
}
