function myFunction(imgs) {

    var expandImg = document.getElementById("expandedImg"); 
    var imgText = document.getElementById("imgtext"); 
    expandImg.src = imgs.src; 
    imgText.innerHTML = imgs.alt; 
    var shadow = document.getElementsByClassName("hover-shadow cursor");
    document.getElementsByTagName("img").style=shadow;
    expandImg.parentElement.style.display = "block"; 
}