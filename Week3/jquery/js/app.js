// // add item to list
// var parent = document.getElementById("list");
// var li = document.createElement("li");
// li.innerHTML = "Something else to do"
// parent.appendChild(li);

// var list = document.querySelectAll("ul li")
// $("#list");
// $("ul li");

// $("h1").css("color","lavender").html("this has been updated");
// $("li").addClass("done");

// var btn = document.getElementById("btn");
// btn.addEventListener("click", function(){});

// var newItem = $("<li>learn jQuery</li>");
// $("#list").prepend(newItem);

updateCount();
addDoneListener();

function updateCount() {
  var listLength = $(".todo").length;
  $("#count").html(listLength);
}

function randomItem() {
  var items = ["Go to Jail", "Thank Bus Driver", "DANCE"];

  var random = Math.floor(Math.random()*(items.length));

  return items[random];
}

$("#btn").click(function(){
  var newItem = randomItem();
  $("#list").append("<li class='todo'>"+newItem+"<button type='button' class='markdone'>Mark as Done</button></li>");
  updateCount();
  addDoneListener();
})

function addDoneListener(){
  $(".markdone").click(function(){
    $(this).hide();
    $(this).parent().addClass("done");
    $(this).parent().removeClass("todo");
    updateCount();
  })
}












































// homosexual infant prison
