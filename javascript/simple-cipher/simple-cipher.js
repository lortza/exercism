const alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];

class Cipher {
  constructor(cipherKey) {
    if(cipherKey != undefined && cipherKey === cipherKey.toUpperCase()) {
      throw Error('Bad key');
    }
    this.cupherKey = cipherKey
    this.key = alphabet.join('')

  }

  isUpperCase(str){
    return (/[A-Z]/.test(str));
  }

  encode(input, offset) {
    input = input.split('');
    var encoded = [];
    var alphaIndex = 0
    input.forEach(function(letter){
      alphaIndex = alphabet.indexOf(letter) + offset;
      encoded.push(alphabet[alphaIndex]);
    })
    console.log( encoded.join('') );
  }

  decode(input) {

  }

}


module.exports = Cipher;
//["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

// var x = new Cipher();
// x.encode('iamapandabear', 3);

