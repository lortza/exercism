function reverseString(input){
  return (input === '' ? '' : input.split('').reverse().join(''))
}

module.exports = reverseString;
