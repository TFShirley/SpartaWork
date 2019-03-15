document.addEventListener("DOMContentLoaded", function(){
countListItems();
// form to catch info
var submitBtn = document.getElementById("additem");
var formText = document.getElementById("newitem");

submitBtn.addEventListener("click", function(event){
  event.preventDefault();
  var userInput = formText.value;
  addListItem(userInput);
  countListItems();
  formText.value="";
});

// add items to list
function addListItem(item){
  var ul = document.getElementById("list");
  var li = document.createElement("li");
  li.innerHTML = item;
  ul.appendChild(li);
}

// update count items to left
function countListItems() {
  var listItems = document.getElementsByTagName("li");
  var count = document.getElementById("count");

  count.innerHTML = listItems.length;
}

var remove = document.getElementById("removeItem");

remove.addEventListener("click", function(){
  var ul =
  document.getElementById("list");
  var listItems =
  document.getElementsByTagName("li");
  if (listItems.length != 0) {
    ul.removeChild(listItems[listItems.length - 1]);
  }
  countListItems();
})



























});
