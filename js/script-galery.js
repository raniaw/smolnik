function myFunction(bilder) {

    var grossBild = document.getElementById("grossesbild"); 
    var bildtext = document.getElementById("bildtext"); 
    grossBild.src = bilder.src; 
    bildtext.innerHTML = bilder.alt; 
    console.log(bildtext.innerHTML+ " "+ bilder.alt );
    var shadow = document.getElementsByClassName("hover-shadow cursor");
    document.getElementsByTagName("img").style=shadow;
    grossBild.parentElement.style.display = "block"; 
  }