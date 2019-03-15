var inteval;
var progRunning = false;

// Target ball object
var ball = $("#ball");

// Target the container
var container = $("#container");

// Initial ball position
var posx = 0;
var posy = 0;

// Set ball direction
var directionx = "+";
var directiony = "+";

// gravy
var gravity = 0.005;
var gravitySpeed = 0;

$("#btn").click(function(){
  if (progRunning) {
    // stop ball
    progRunning = false;
    clearInterval(interval);
  } else {
    // start ball
    progRunning = true;
    interval = setInterval(function(){

      // Finds ball & container edges
      var ballLeft = ball.offset().left;
      var ballRight = ballLeft + ball.width();
      var ballTop = ball.offset().top;
      var ballBottom = ballTop + ball.height();
      var containerLeft = container.offset().left;
      var containerRight = containerLeft + container.width();
      var containerTop = container.offset().top;
      var containerBottom = containerTop + container.height();


      ball.css({
        'left': posx + "px",
        'top': posy + "px"
      })
      // Ball movement (horizontal)
      if (directionx === "+") {
        posx++;
      } else if (directionx === "-"){
        posx--;
      }
      // Ball movement (vertical)
      if (directiony === "+") {
        gravitySpeed += gravity;
        posy+= gravitySpeed;
      } else if (directiony === "-"){
        gravitySpeed += gravity;
        posy+= gravitySpeed;
      }

      // Collision (verical)
      if (ballRight >= containerRight) {
        directionx = "-";
      } else if (ballLeft <= containerLeft) {
        directionx = "+";
      }
      // Collision (horizontal)
      if (ballBottom >= containerBottom) {
        directiony = "-";
        gravitySpeed = -1.5;
      } else if (ballTop <= containerTop) {
        directiony = "+";
      }

      // Every second update the left attribute of the ball by 10 secs
      // ball.css({'left': posx + "px"});
      // posx++;
    }, 6);
  }

})
