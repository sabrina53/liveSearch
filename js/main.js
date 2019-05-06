(function() {
"use strict";

console.log("js linked");

var searchRequest;
var animalRequest;
var searchField = document.querySelector("#searchbox");


// Function1 to create the XHR object 
function createRequest() {
	var request;

	if(window.XMLHttpRequest) {
		request = new XMLHttpRequest()		
	} else if (request===null){
		alert("Your Browser doesn't support AJAX")
	}
	return request;
}
// show results function2 
function showResults(e) {
	// console.log("showResults function fired");
	// console.log(e.currentTarget.value);
	var str = e.currentTarget.value;
	var url = "searchanimal.php?searchstring="+str;

	searchRequest = createRequest();
	searchRequest.onreadystatechange = searchStatus;
	searchRequest.open("GET", url, true);
	searchRequest.send(null);
}

function searchStatus() {
	if(searchRequest.readyState===4 && searchRequest.status===200) {
		document.querySelector("#txtHint").innerHTML=searchRequest.responseText;

		if(document.querySelector("#txtHint a")) {
			document.querySelector("#txtHint a").addEventListener("click", displayInfo, false);
		}
	}
}

function displayInfo(e) {
	// console.log("displayInfo has fired");
	var animalID = e.currentTarget.id;
	var url = "displayanimal.php?animalid="+animalID;
	animalRequest = createRequest();
	animalRequest.onreadystatechange = displayStatus;
	animalRequest.open("GET",url,true);
	animalRequest.send(null);

}

function displayStatus() {
	if(animalRequest.readyState===4 && animalRequest.status === 200) {
		document.querySelector("#maindiv").innerHTML = animalRequest.responseText;
	}
}
	
searchField.addEventListener("keyup", showResults, false);







})();