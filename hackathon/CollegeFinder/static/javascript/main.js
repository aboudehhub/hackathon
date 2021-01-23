var filters = document.getElementById("filter");
var aSearchButton = document.querySelectorAll(".linktext");
var fun = document.getElementById("fun");
var goButton = document.querySelector('#main form button');
var table = document.querySelector('#main table');
goButton.addEventListener('click', function(){
    table.classList.remove("hidden");
})