
s
//Khai báo biến cho slide hiện tại
var slideIndex;

function showSlides(){
	var i;
	var slides = document.getElementsByClassName("slideIMG");
	var dots = document.getElementsByClassName("dot");
	for(i=0; i<slides.length; i++){
		slides[i].style.display = "none";
	}

	for(i=0; i<dots.length;i++){
		dots[i].className = dots.className.replace(" active", "");		
	}

	slides[slideIndex].style.display ="block";
	dots[slideIndex].className += " active";

	slideIndex++;

	if(slideIndex >slides.length -1){
		slideIndex++;
	}
	setTimeout(showSlides, 5000);
}
showSlides(slideIndex=0);

function currentSlide(n){
	showSlides(slideIndex=n);
}