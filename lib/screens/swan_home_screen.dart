import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:swan_app/models/home_model.dart';
import 'package:http/http.dart' as http;

class SwanHomeScreen extends StatelessWidget {
  const SwanHomeScreen({super.key});

  Future<HomeModel> fetchHomeData() async {
    final response = await http.post(Uri.parse(
        'https://swan.alisonsnewdemo.online/api/home?id=17V&token=l0VmgMm31IzKmE1d8wdGOoZ5sO1XXxfS2qfFRdTZ'));

    if (response.statusCode == 200) {
      print(response.body);
      return HomeModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load home data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<HomeModel>(
        future: fetchHomeData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return buildHomeContent(snapshot.data!);
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }

  // Function to build home screen content
  Widget buildHomeContent(HomeModel homeData) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildBannerSection(homeData.banner1),
          buildProductSection("Our Products", homeData.ourProducts),
          buildProductSection("Best Sellers", homeData.bestSeller),
          buildCategorySection(homeData.categories),
        ],
      ),
    );
  }

  Widget buildBannerSection(List<Banner1>? banners) {
    if (banners == null || banners.isEmpty) {
      return const SizedBox.shrink(); // If no banners, return an empty widget
    }

    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: banners.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.network(banners[index].image ?? ''),
          );
        },
      ),
    );
  }

  Widget buildCategorySection(List<Categories>? categories) {
    if (categories == null || categories.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index].category;
          return Column(
            children: [
              Image.network(category!.image ?? '',
                  height: 80, fit: BoxFit.cover),
              const SizedBox(height: 8),
              Text(category.name ?? '', style: const TextStyle(fontSize: 14)),
            ],
          );
        },
      ),
    );
  }

  Widget buildProductSection(String title, List<Products>? products) {
    if (products == null || products.isEmpty) {
      return const SizedBox.shrink(); // Hide section if no products
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return buildProductCard(products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProductCard(Products product) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.image ?? '', height: 150, fit: BoxFit.cover),
          const SizedBox(height: 8),
          Text(product.name ?? '', style: const TextStyle(fontSize: 16)),
          Text('OMR${product.price}',
              style: const TextStyle(fontSize: 14, color: Colors.black)),
        ],
      ),
    );
  }
}
