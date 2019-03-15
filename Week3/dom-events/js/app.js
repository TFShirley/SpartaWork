document.addEventListener("DOMContentLoaded", function(){
  console.log("This code runs when the page finishes loading");

  var button1 = document.getElementById("btn1")

  // button1.addEventListener("click", function(event){
  //   console.log(this);
  // });

  var buttons = document.getElementsByClassName("buttonrow");

  for (var i = 0; i < buttons.length; i++) {
    var button = buttons[i]

    button.addEventListener("click", function(event){
      console.log(this.value + " has been clickeroo'd");
    });
  }

  // button1.addEventListener("click", addClassOnClick);
  //
  // // Find this button on page and add this event
  function addClassOnClick(){
    this.classList.add("btnclicked");
    console.log("a button was clicked");
  }

  var form = document.getElementById("form");

  form.addEventListener("submit", function(event){
    console.log("form submitted");

    event.preventDefault();

    var firstnameField = document.getElementById("firstname")

    if (firstnameField.value) {
      form.submit();
    } else {
      console.log("You must enter a name first");
    }
  });


// Bubbling
  var div1 = document.getElementById("div1")
  var div2 = document.getElementById("div2")
  var div3 = document.getElementById("div3")

  div1.addEventListener('click', function(event){
    console.log("div1 was clicked");
  })
  div2.addEventListener('click', function(event){
    console.log("div2 was clicked");

// This prevents items further up the tree from reacting, like a barrier.
// so if you click div 3, div 3 and 2 see it, but div 1 doesn't.
    event.stopPropagation()
  })
  div3.addEventListener('click', function(event){
    console.log("div3 was clicked");
  })

});
