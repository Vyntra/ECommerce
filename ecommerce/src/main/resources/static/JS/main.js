
$(document).ready(function(){
    advertisement();
});


function advertisement() {
    var randomColor1 = '#'+Math.floor(Math.random()*16777215).toString(16);
    var randomColor2 = '#'+Math.floor(Math.random()*16777215).toString(16);
    document.getElementById("Advertisements").style.backgroundImage = "linear-gradient(to right bottom, "+randomColor1+", "+randomColor2+")";
    setTimeout(function(){ advertisement() }, 3000);
}