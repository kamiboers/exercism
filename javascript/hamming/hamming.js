var Hamming = function() {
	
	this.compute = function(s1,s2) {
		if (s1.length != s2.length) {
			throw "DNA strands must be of equal length.";
		}
		else if (s1 === s2) {
			return 0;
		}
		else {
			var count = 0
			for (i = 0; i < s1.length; i++) {
				if (s1[i] != s2[i]) {
				count += 1
			}
			}
			return count;
		}

	}

}

module.exports = Hamming;