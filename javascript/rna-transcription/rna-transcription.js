var DnaTranscriber = function () {
	this.toRna = function(dna) {
		var rna = ""
		for (i = 0; i < dna.length; i++) {
			switch (dna[i]) {
				case("A"):
				rna += "U";
				break;
				case("T"):
				rna += "A";
				break;
				case("G"):
				rna += "C";
				break;
				case("C"):
				rna += "G";
				break;
			}
		}
		return rna
	}
}
module.exports = DnaTranscriber;