import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),// Add horizontal padding
      child: Container(
        height: 40.0, // Set a smaller height for the search bar
        decoration: BoxDecoration(
          color: Colors.grey[800], // Set background color to grey
          borderRadius: BorderRadius.circular(20.0), // Adjust rounded corners
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Search',
            labelStyle: TextStyle(color: Colors.grey[400], fontSize: 14.0), // Smaller label text
            border: InputBorder.none, // Remove the default border
            prefixIcon: Icon(Icons.search, color: Colors.grey[400], size: 20.0), // Smaller search icon
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min, // Adjust size to fit icons
              children: [
                IconButton(
                  icon: Icon(Icons.mic, color: Colors.grey[400], size: 20.0), // Smaller mic icon
                  onPressed: () {
                    print('Mic icon tapped!');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.camera_alt, color: Colors.grey[400], size: 20.0), // Smaller camera icon
                  onPressed: () {
                    print('Camera icon tapped!');
                  },
                ),
              ],
            ),
          ),
          style: TextStyle(color: Colors.white, fontSize: 13.0), // Smaller input text
        ),
      ),
    );
  }
}


