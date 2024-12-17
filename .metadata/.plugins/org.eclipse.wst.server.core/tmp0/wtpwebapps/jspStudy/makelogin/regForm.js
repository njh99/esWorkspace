	//indicator 클릭하면 해당된 페이지로 이동

	indicatorArray.forEach((indicator, index) => {
		indicator.addEventListener("mouseenter", () => clearInterval(timerID));
		indicator.addEventListener("mouseleave", startTimer);
		indicator.addEventListener("click", (event) => {
			event.preventDefault();
			gotoslide(index);
		});
	});

/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
	document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
	if (!event.target.matches(".dropbtn1")) {
		var dropdowns = document.getElementsByClassName("dropdown-content1");
		var i;
		for (i = 0; i < dropdowns.length; i++) {
			var openDropdown = dropdowns[i];
			if (openDropdown.classList.contains("show")) {
				openDropdown.classList.remove("show");
			}
		}
	}
}