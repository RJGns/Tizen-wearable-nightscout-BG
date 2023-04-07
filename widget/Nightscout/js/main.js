
window.onload = function() {
  console.log('+[window.onload]');
  // Do nothing now
  var myapi = "https://YOURNIGHTSOCUT/api/v1/entries.json";
	  
  document.getElementById("update").addEventListener("click", updateCurrent);
  
  
  
  
  function updateCurrent() {
	    document.getElementById("update").textContent = "Updating...";
	    setTimeout(function(){
	  	  document.getElementById("update").textContent = "Update";
	  	  return;
	  	}, 5000);
	    setTimeout(function(){
	    	var xmlHttp = new XMLHttpRequest();
		    xmlHttp.open( "GET", myapi, false ); // false for synchronous request
		    xmlHttp.send( null );
		    var obj = JSON.parse(xmlHttp.responseText);
		    document.getElementById("current").textContent = String(Math.round(obj[0].sgv * 0.0555 * 10)/10) +" "+ obj[0].direction;
		    
		   
		    document.getElementById("update").textContent = "Update";
		    
		    document.getElementById("time").textContent =  new Date().toTimeString().split(" ")[0];
		  	}, 100);
	    
	  }
  
};
