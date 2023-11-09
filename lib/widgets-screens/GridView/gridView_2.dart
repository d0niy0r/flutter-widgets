import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:widgets/widgets-screens/GridView/repository.dart';

class GridView2Page extends StatelessWidget {
  final foodsList = Repository.foodsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Grid View example",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        )),
      ),
      body: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(
              index: 1,
              foodsList: foodsList,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(
              index: 2,
              foodsList: foodsList,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(
              index: 3,
              foodsList: foodsList,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(
              index: 4,
              foodsList: foodsList,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Tile(
              index: 5,
              foodsList: foodsList,
              // imageUrl: foodsList[index].imageUrl,
              // cost: foodsList[index].cost,
            ),
          ),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  Tile({
    Key? key,
    required this.index,
    this.foodsList,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
    this.imageUrl,
    this.cost,
  }) : super(key: key);

  final int index;
  final List? foodsList;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;
  final String? imageUrl;
  final String? cost;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      // color: backgroundColor,
      height: extent,
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: Colors.grey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        elevation: 4,
        child: Stack(
          children: [
            Container(
              // height: 0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow,
                // borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                textAlign: TextAlign.center,
                foodsList![index - 1].name != null
                    ? "${foodsList![index - 1].name}"
                    : "",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: "Agbaluma",
                ),
              ),
            ),
            Image.asset(
              foodsList![index - 1].imageUrl,
              fit: BoxFit.cover,

            ),
          ],
        ),
      ),

      // Center(
      //   child: CircleAvatar(
      //     minRadius: 20,
      //     maxRadius: 20,
      //     backgroundColor: Colors.white,
      //     foregroundColor: Colors.black,
      //     child: Text('$index', style: const TextStyle(fontSize: 20)),
      //   ),
      // ),
    );
    if (bottomSpace == null) {
      return child;
    }
    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}
