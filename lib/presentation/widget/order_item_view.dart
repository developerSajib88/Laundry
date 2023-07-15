import 'package:flutter/material.dart';

class OrderItemView extends StatelessWidget {
  const OrderItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(children: [
        Text("3",style: Theme.of(context).textTheme.titleMedium,),
        Text("X T-Shirt (Man)",style: Theme.of(context).textTheme.displayLarge,),
        const Spacer(),
        Text("\$ 30.00",style: Theme.of(context).textTheme.titleMedium,),
      ],),
    );
  }
}
