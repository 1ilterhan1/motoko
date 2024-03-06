actor calculator {

  var cell : Int = 0;

  // Add.
  public func add(n : Int) : async Int {
    cell += n;
    cell;
  };

  // Subtract.
  public func sub(n : Int) : async Int {
    cell -= n;
    cell;
  };

  // Multiply.
  public func mul(n : Int) : async Int {
    cell *= n;
    cell;
  };

  // Divide.
  public func div(n : Int) : async ?Int {
    if (n == 0) {
      // 'null' encodes the division by zero error.
      null;
    } else {
      cell /= n;
      ?cell;
    };
  };

  // Clear the calculator and reset its cell to zero.
  public func clearall() : async () {
    cell := 0;
  };
};
