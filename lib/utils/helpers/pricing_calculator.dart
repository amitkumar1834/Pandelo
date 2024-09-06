class EPricingCalculator {
  // calculate the price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  //calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //calulate tax
  static String calculatetax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    //lookup the tax rate for the location from a tax rate database or api
    //Return the appropiate tax rate
    return 0.10;
  }

  static double getShippingCost(String location) {
    //Look the shipping cost for the given location using a shipping rate api.
    //Calculate the shipping cost based on various factors weight, distance etc
    return 5.00;
  }

  //Sum of all cart values and return the total amount
  //static double calculateCartTotal(CartModel cart) {
  //return cart.items.map((e) => e.price).fold(0,(previousPrice,currentPrice) => previousPrice + (currentPrice ?? 0));
//}
}
