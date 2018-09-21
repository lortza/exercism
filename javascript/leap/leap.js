class Year {
  constructor(input){
    this.year = input;
  }

  isLeap(){
    if ( this.divBy4(this.year) && (this.notDivBy100(this.year) || this.divBy400(this.year)) ) {
      return true;
    } else {
      return false;
    }
  }

  divBy4(input){
    return input % 4 === 0;
  }

  notDivBy100(input){
    return input % 100 != 0;
  }

  divBy400(input){
    return input % 400 === 0;
  }
}

module.exports = Year;
