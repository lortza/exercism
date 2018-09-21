class DnaTranscriber {

  toRna(dnaInput){
    var dnaArr = dnaInput.split('');
    if (dnaArr.includes('X')) throw Error('Invalid input');

    var transcribedRna = []
    dnaArr.forEach(function(ntide) {
      switch (ntide) {
        case 'G':
          transcribedRna.push('C');
          break;
        case 'C':
          transcribedRna.push('G');
          break;
        case 'T':
          transcribedRna.push('A');
          break;
        case 'A':
          transcribedRna.push('U');
          break;
        default:
          return '';
      }
    });
    return transcribedRna.join('');
  }
}

module.exports = DnaTranscriber;
