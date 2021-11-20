//= require jquery3
//= require popper
//= require bootstrap

/* Set the width of the sidebar to 250px and the left margin of the page content to 250px */
function openNav() {
  document.getElementById("main").style.marginLeft = "250px";
  document.getElementById("mySidebar").style.width = "250px";
}

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
function closeNav() {
  document.getElementById("main").style.marginLeft = "0";
  document.getElementById("mySidebar").style.width = "0";
}