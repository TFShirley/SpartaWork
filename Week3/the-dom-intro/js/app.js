console.log("Loaded $$$ B3");
var list = document.getElementById('list');

function addListItem(value) {
  var listItem = document.createElement('li');
  listItem.innerHTML = value;
  list.appendChild(listItem);
}


// Write a loop to add shopping list to unordered list
var shopList = ["sugar", "spice", "all things nice"];

for (var i = 0; i < shopList.length; i++) {
  addListItem(shopList[i]);
}

// set every other li to have a class of even

var listThings = list.children;
// var eventhings = document.querySelectorAll('#li:nth-child(even)');
// eventhings.className = "even";
for (var i = 1; i <= listThings.length; i+=2) {
    listThings[i].className = "even";
  }

// update span count to be no. of items in the list

var listItems = document.querySelectorAll('#list li');

document.getElementById('count').innerHTML = listItems.length;

// var spanCount = document.body.children[2].children[0];
// spanCount.innerHTML = listThings.length;




// Use this to target everything in the html
// console.log(document);

// This targets specific elements in the html,
// in this case the data within the 3rd child
// inside the body of the html.
// console.log(document.body.children[2].innerHTML);

// // function changeTitle() {
// //   document.body.children[0].innerHTML = "This has been updated!"
// // }
// //
// setTimeout(changeTitle, 5000);


// list.style.backgroundColor = "gainsboro";
// var selector = document.querySelectorAll('li.active');
// console.log(selector);



// document.getElementById('list').appendChild(listItem);




















// you have lost the game
