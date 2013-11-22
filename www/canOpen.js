var exec = require("cordova/exec");

var CanOpen = function () {
	this.name = "CanOpen";
};

CanOpen.prototype.open = function (url, callback) {
	if(!url) {
		return;
	}

	exec(callback, function errorHandler(err) {
			console.log(err);
		}, "CanOpen", "appCanOpen", [url]);
};

module.exports = new CanOpen();