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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.15,
                child: Tile(
                  index: 1,
                  foodsList: foodsList,
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.15,
                child: Tile(
                  index: 2,
                  foodsList: foodsList,
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.15,
                child: Tile(
                  index: 3,
                  foodsList: foodsList,
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.15,
                child: Tile(
                  index: 4,
                  foodsList: foodsList,
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.15,
                child: Tile(
                  index: 5,
                  foodsList: foodsList,
                ),
              ),
            ],
          ),
        ),
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
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final List? foodsList;
  final double? extent;
  final double? bottomSpace;

  @override
  Widget build(BuildContext context) {
    final child = GridTile(
      footer: GridTileBar(
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          "${foodsList![index - 1].cost} so'm",
          style: const TextStyle(
            color: Colors.red,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "Agbalumo"
          ),
        ),
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        elevation: 4,
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.none,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.yellow,
                // borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                foodsList![index - 1].name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Agbalumo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset(
              foodsList![index - 1].imageUrl,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
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
