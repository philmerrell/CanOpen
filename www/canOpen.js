(function(window) {
	var cordovaRef = window.Phonegap || window.Cordova || window.cordova;

	window.CanOpen = function(app, callback) {
		cordovaRef.exec(
			// Success callback
			callback,
			// Failure callback
			function(err) { console.log('Missing app scheme.');},
			// Native Class Name 
			"CanOpen",
			// Name of method in native class.
			"appCanOpen",
			// array of args to pass to method.
			[app]
		);
	};

})(window);