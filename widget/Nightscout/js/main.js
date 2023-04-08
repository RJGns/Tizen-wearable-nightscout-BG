
window.onload = function () {
	console.log('+[window.onload]');
	// Do nothing now
	var myapi = "https://URL/api/v1/entries.json";

	document.getElementById("update").addEventListener("click", updateCurrent);




	function updateCurrent() {
		document.getElementById("update").textContent = "Updating...";
		setTimeout(function () {
			document.getElementById("update").textContent = "Update";
			return;
		}, 5000);
		setTimeout(function () {
			var xmlHttp = new XMLHttpRequest();
			xmlHttp.open("GET", myapi, false); // false for synchronous request
			xmlHttp.send(null);
			var obj = JSON.parse(xmlHttp.responseText);
			var dir = "";
			switch (obj[0].direction) {
				case "Flat":
					dir = "➡️";
					break;
				case "FortyFiveDown":
					dir = "↘️";
					break;
				case "FortyFiveUp":
					dir = "↗️";
					break;
				case "Up":
					dir = "⬆️";
					break;
				case "Down":
					dir = "⬇️";
					break;
				case "DoubleDown":
					dir = "⬇️⬇️";
					break;
				case "DoubleUp":
					dir = "⬆️⬆️";
					break;
			}
			document.getElementById("current").textContent = String(Math.round(obj[0].sgv * 0.0555 * 10) / 10 + " " + dir);


			document.getElementById("update").textContent = "Update";
			var x = new Date().toTimeString().split(" ")[0];
			var time = obj[0].date;
			var date = new Date(time);// Milliseconds to date
			var t = date.toString().split(" ");
			document.getElementById("time").textContent = String(x + " From: " + t[4]);
		}, 100);

	}

};
