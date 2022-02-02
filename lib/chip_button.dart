import 'package:flutter/material.dart';

class CustomChipButton extends StatefulWidget {

  final String? label;
  final bool? selected;
  final ValueChanged<bool>? onSelected;
  final double? pressElevation;
  final Color disabledColor;
  final Color selectedColor;
  final BorderSide?side;
  final OutlinedBorder?shape;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color backgroundColor;
  final bool? showCheckmark;
  final Color checkmarkColor;
  final Clip ?clipBehavior;
  final bool? autofocus;
  const CustomChipButton(
      {
        Key?key,
        required this.label,
        this.selected = false,
        this.onSelected,
        this.pressElevation,
        this.disabledColor = Colors.black12,
        this.selectedColor = Colors.black54,
        this.side,
        this.shape,
        this.padding,
        this.margin = const EdgeInsets.only(left: 6,right: 6,top: 3,bottom: 3),
        this.backgroundColor = Colors.white,
        this.showCheckmark,
        this.checkmarkColor = Colors.black12,
        this.clipBehavior = Clip.none,
        this.autofocus = false,

     }):super(key: key);



  @override
  _CustomChipButtonState createState() => _CustomChipButtonState();
}

class _CustomChipButtonState extends State<CustomChipButton> {

  List<String> itemList=[];
  itemList.append(widget.label);
  List<bool> selectedList=[];
  List<String> selectedItems=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          for(int i=0;i<itemList.length;i++) _createChipButton(i)
        ],
      ),
    );
  }
  Widget _createChipButton(int i) {
    selectedList.add(false);
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000.0),
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
      child: FilterChip(
        label: Text(itemList[i]),
        selected: selectedList[i],
        onSelected: (bool value) {
          setState(() {
            if(value){
              selectedItems.add(itemList[i]);
            }else{
              selectedItems.remove(itemList[i]);
            }
            selectedList[i]=value;
          });
        },
      ),
    );
  }
  //bool _isSelected = false;

}