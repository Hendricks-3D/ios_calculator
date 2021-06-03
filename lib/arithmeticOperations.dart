class ArithmeticOperations {
  var _input = '0';
  int length = 0;
  get input {
    return this._input;
  }

  set input(var input) {
    this._input = input;
  }

  String oneButton() {
    if (_input == '0') {
      return this._input = '1';
    } else {
      return this._input = this.input + '1';
    }
  }

  String twoButton() {
    if (_input == '0') {
      return this._input = '2';
    } else {
      return this._input = this.input + '2';
    }
  }

  String threeButton() {
    if (_input == '0') {
      return this._input = '3';
    } else {
      return this._input = this.input + '3';
    }
  }

  String fourButton() {
    if (_input == '0') {
      return this._input = '4';
    } else {
      return this._input = this.input + '4';
    }
  }

  String fiveButton() {
    if (_input == '0') {
      return this._input = '5';
    } else {
      return this._input = this.input + '5';
    }
  }

  String sixButton() {
    if (_input == '0') {
      return this._input = '6';
    } else {
      return this._input = this.input + '6';
    }
  }

  String sevenButton() {
    if (_input == '0') {
      return this._input = '7';
    } else {
      return this._input = this.input + '7';
    }
  }

  String eightButton() {
    if (_input == '0') {
      return this._input = '8';
    } else {
      return this._input = this.input + '8';
    }
  }

  String nineButton() {
    if (_input == '0') {
      return this._input = '9';
    } else {
      return this._input = this.input + '9';
    }
  }

  String clearButton() {
    return this._input = '0';
  }

  String modButton() {
    if (_input == '0') {
      return this._input = '0';
    } else {
      if (this._input.contains('+') != true &&
          this._input.contains('-') != true &&
          this._input.contains('/') != true &&
          this._input.contains('*') != true &&
          this._input.contains('%') != true) {
        return this._input = this.input + '%';
      }
      return this._input;
    }
  }

  String plusButton() {
    if (_input == '0') {
      return this._input;
    } else {
      if (this._input.contains('+') != true &&
          this._input.contains('-') != true &&
          this._input.contains('/') != true &&
          this._input.contains('*') != true &&
          this._input.contains('%') != true) {
        return this._input = this.input + '+';
      }

      return this._input;
    }
  }

  String minusButton() {
    if (_input == '0') {
      return this._input;
    } else {
      if (this._input.contains('+') != true &&
          this._input.contains('-') != true &&
          this._input.contains('/') != true &&
          this._input.contains('*') != true &&
          this._input.contains('%') != true) {
        return this._input = this.input + '-';
      }
      return this._input;
    }
  }

  String divideButton() {
    if (_input == '0') {
      return this._input;
    } else {
      if (this._input.contains('+') != true &&
          this._input.contains('-') != true &&
          this._input.contains('/') != true &&
          this._input.contains('*') != true &&
          this._input.contains('%') != true) {
        return this._input = this.input + '/';
      }
      return this._input;
    }
  }

  String multiplyButton() {
    if (_input == '0') {
      return this._input;
    } else {
      if (this._input.contains('+') != true &&
          this._input.contains('-') != true &&
          this._input.contains('/') != true &&
          this._input.contains('*') != true &&
          this._input.contains('%') != true) {
        return this._input = this.input + '*';
      }
      return this._input;
    }
  }

  String plusMinusButton() {
    if (_input == '0') {
      return this._input;
    } else {
      return this._input = this.input + '';
    }
  }

  String equalButton() {
    if (_input == '0') {
      return this._input;
    } else {
      return this._input = this.input + '';
    }
  }

  String zeroButton() {
    if (_input == '0') {
      return this._input = '0';
    } else {
      return this._input = this.input + '0';
    }
  }
} //End of Operations class
