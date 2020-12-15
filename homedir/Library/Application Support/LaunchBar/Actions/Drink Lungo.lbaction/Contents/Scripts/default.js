// Tadeas Uhlir
// 10/26/2018
// default.js
// Default script for Drink Lungo action

const commandPrefix = 'lungo:';

function run(argument) {
	var command = commandPrefix + 'toggle';
	LaunchBar.openURL(command);
}

function runWithString(string) {
	var re = /\d+\s(hour|Hour|hrs|Hours|Hrs|hours|h\b)/g;
	var re2 = /\d+/g
	if (string.match(re) != null) {
		var hrsString = string.match(re)[0].split(" ")[0];
		var command = commandPrefix + 'activate?hours=' + hrsString;
	}
	else if (string.match(re2) != null) {
		var argument = string.match(re2)[0].split(" ")[0];
		var command = commandPrefix + 'activate?minutes=' + argument;
	}
	else {
		LaunchBar.alert("Invalid Input", "You entered input with invalid form");
	}
	LaunchBar.openURL(command);
}
