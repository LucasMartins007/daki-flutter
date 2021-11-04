import 'package:flutter/material.dart';

class sizeHelper {

  static double minHeight(BuildContext context, double size) {
    var managedSize = MediaQuery.of(context).size / size;

    while (MediaQuery.of(context).size.height < 100) {
      return MediaQuery.of(context).size.height;
    }

    return managedSize.height;
  }

  static double minWidth(BuildContext context, double size) {
    var managedSize = MediaQuery.of(context).size / size;

    if (MediaQuery.of(context).size.width < managedSize.width) {
      managedSize = MediaQuery.of(context).size;
      return managedSize.width;
    } else {
      return managedSize.width;
    }
  }

  static double heightHelper(Size screensize, double alturaMinima, double alturaMaxima, double alturaFixa, double alturaPermitida){
    double managedHeight = screensize.height * alturaFixa;

    if(screensize.height < alturaPermitida){
      return 0.0;
    }
    if(managedHeight < alturaMinima){
      return alturaMinima;
    }
    if(managedHeight > alturaMaxima){
      return alturaMaxima;
    }
    return managedHeight;
  }

  static Size toSize(double base, double value){
    return Size(base, value);
  }
  
  static double widthHelper(Size screensize, double larguraMinima, double larguraMaxima, double larguraFixa, double larguraPermitida){
    double managedHeight = screensize.width * larguraFixa;

    if(screensize.width < larguraPermitida){
      return 0.0;
    }
    if(managedHeight < larguraMinima){
      return larguraMinima;
    }
    if(managedHeight > larguraMaxima){
      return larguraMaxima;
    }
    return managedHeight;
  }

  static double resolverTamanhoCampo(bool isWidth, bool isHeigth, Size screenSize, double tamanhoMaximoPermitido){
    double height = heightHelper(screenSize, 45, 50, 0.15, tamanhoMaximoPermitido);
    double width = widthHelper(screenSize, 1000, 100, 0.10, 650);
    if(height == 0 || width == 0){
      return 0;
    }
    if (isWidth){
      return width;
    }
    if(isHeigth){
      return height;
    }
    return 0;
  }

  
}
