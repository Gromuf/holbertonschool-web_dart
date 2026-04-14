List<double> convertToF(List<double> temperaturesInC) {
	return temperaturesInC.map((temp) {
    	double f = (temp * 9 / 5) + 32;
    	return double.parse(f.toStringAsFixed(2));
  	}).toList();
}