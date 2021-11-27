//= require jquery3
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap

require("@rails/actiontext")

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