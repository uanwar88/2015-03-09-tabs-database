window.onload = function() {
  nav_links = document.getElementsByClassName('nav_links');
  tab_contents = document.getElementsByClassName('tab_content');

  // console.log(nav_links.length);
  // console.log(tab_contents.length);

  // Show initial tab on page load
  var hash_location = window.location.hash.substring(1) || "general_info";
  var initial_tab = document.getElementById(hash_location);
  initial_tab.style.display = "block";

  // for (var link in nav_links) {
  //   console.log("Added a listener!");
  //   link.onclick = function() {
  //     console.log("Link clicked!");
  //   };
  // }

  // Show tab on link click
  for (var i = 0; i < nav_links.length; i++) {
    nav_links[i].onclick = function () {
      for (var x = 0; x < tab_contents.length; x++) {
        tab_contents[x].style.display = "none";
      }
      id = this.getAttribute("id").replace("_link", "")
      document.getElementById(id).style.display = "block";
    };
  }
}
