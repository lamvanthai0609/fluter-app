import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/interactive/button.dart';
import 'package:flutter_application_1/libs/helper/svg.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 280,
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                "Location",
                style: TextStyle(fontSize: 14, color: ColorMain.third[300]!),
              ),
              const SizedBox(height: 8),
              const Text(
                "Bilzen, Tanjungbalai",
                style: TextStyle(fontSize: 16, color: ColorMain.white),
              ),
              const SizedBox(height: 24),
              searchForm()
            ],
          ),
        ),
        const SizedBox(
          height: 70,
        )
      ],
    );
  }

  Widget searchForm() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.transparent, // Transparent at the top
                  ColorMain.third, // Gradient to #A2A2A2
                ],
                stops: [0.2, 1],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(8.0), // Rounded corners
            ),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Search coffee',
                hintStyle: TextStyle(color: ColorMain.third[200], fontSize: 16),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: AppSVG.search(width: 12, height: 12),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                filled: false,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 8.0,
                ),
              ),
              style: const TextStyle(
                color: ColorMain.white,
              ),
              onChanged: (query) {
                // Handle search query here
                print("Search query: $query");
              },
            ),
          ),
        ),
        const SizedBox(width: 16),
        Button(
          width: 52,
          height: 52,
          padding: const EdgeInsets.all(8),
          child: AppSVG.group(),
        )
      ],
    );
  }
}
