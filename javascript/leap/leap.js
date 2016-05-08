var Year = function(year) {
	this.year = year

    this.isLeap = function() {

	if ((year%4 === 0 && !year%100 === 0) || year%400 === 0) {
		return true;
	}
	else {
		return false;
	};

}
}

module.exports = Year;