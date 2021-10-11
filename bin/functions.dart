import 'dart:io';
import 'dart:math' as math;

import 'package:functions/functions.dart' as functions;

void main(List<String> arguments) {
// to calculate the area of square, circle and a triangle
 int shape;
 double area;
 List<int> params;
  print(
      '''
  What shape do you have?
  
  1. rectangle
  
  2.circle
  
  3.triangle
  
  ''');

  shape = int.parse(stdin.readLineSync());

  if(shape == 1)
  {
    print("enter rectangle width");
    int rectangleX = int.parse(stdin.readLineSync());
    print("enter rectangle height");
    int rectangleY = int.parse(stdin.readLineSync());
    area = calculateRectangleArea(rectangleX, rectangleY).toDouble();
  }
  else if(shape == 2)
  {
    area = calculateCircleArea(10);
  }
  else if(shape == 3)
  {

    area = calculateTriangleArea(10, 15);
  }

  print("the area is $area");

  int rectangleArea = calculateRectangleArea(10, 15);
  double circleArea = calculateCircleArea(5);
  double triangleArea = calculateTriangleArea(5,7);

}
//calculates area of a triangle
double calculateTriangleArea(int x, int y)
{
  return (x*y) / 2;
}

//Calculates area of a circle
double calculateCircleArea(int radius)
{
  return math.pi * math.pow(radius, 2);
}


//calculates area of a rectangle
  int calculateRectangleArea(int x , int y)
  {
    //return the area of the rectangle
    return x + y;
  }














/*

  int x = int.parse(stdin.readLineSync());
  int y = int.parse(stdin.readLineSync());

  int total = x + y;



  void calculate_Area(int num1 , int num2)
  {
   int total = num1 * num2;
  }



}*/
