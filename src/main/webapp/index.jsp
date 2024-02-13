<!DOCTYPE html>
<html>
<head>
<style>
html {
  box-sizing: border-box;
}
*,
*::before,
*::after {
  box-sizing: inherit;
  padding: 0;
  margin: 0;
}
body {
  font-size: 16px;
  line-height: 1.5;
  font-family: Roboto, sans-serif;
}
.slider {
  position: relative;
  width: 960px;
  height: 300px;
  margin: 50px auto;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12),
    0 3px 1px -2px rgba(0, 0, 0, 0.2);
  overflow: hidden;
}
.slider-controls {
  position: absolute;
  bottom: 0px;
  left: 50%;
  width: 200px;
  text-align: center;
  transform: translatex(-50%);
  z-index: 1000;
  list-style: none;
  text-align: center;
}
.slider input[type="radio"] {
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
  width: 0;
  height: 0;
}

.slider-controls label {
  display: inline-block;
  border: none;
  height: 20px;
  width: 20px;
  border-radius: 50%;
  cursor: pointer;
  background-color: #212121;
  transition: background-color 0.2s linear;
}

#btn-1:checked ~ .slider-controls label[for="btn-1"] {
  background-color: #ff4081;
}

#btn-2:checked ~ .slider-controls label[for="btn-2"] {
  background-color: #ff4081;
}

#btn-3:checked ~ .slider-controls label[for="btn-3"] {
  background-color: #ff4081;
}

/* SLIDES */

.slides {
  list-style: none;
  padding: 0;
  margin: 0;
  height: 100%;
}

.slide {
  position: absolute;
  top: 0;
  left: 0;

  display: flex;
  justify-content: space-between;
  padding: 50px;
  width: 100%;
  height: 100%;

  opacity: inherit;
  transform: translatex(-100%);
  transition: transform 250ms linear;
}

.slide-content {
  width: 400px;
}

.slide-title {
  margin-bottom: 20px;
  font-size: 36px;
}

.slide-text {
  margin-bottom: 20px;
}

.slide-link {
  display: inline-block;
  padding: 10px 20px;
  color: #fff;
  border-radius: 3px;
  text-decoration: none;
  background-color: #ff4081;
}

.slide-image img {
  max-width: 100%;
}

/* Slide animations */
#btn-1:checked ~ .slides .slide:nth-child(1) {
  transform: translatex(0);
  opacity: 1;
}

#btn-2:checked ~ .slides .slide:nth-child(2) {
  transform: translatex(0);
  opacity: 1;
}

#btn-3:checked ~ .slides .slide:nth-child(3) {
  transform: translatex(0);
  opacity: 1;
}

#btn-1:not(:checked) ~ .slides .slide:nth-child(1) {
  animation-name: swap-out;
  animation-duration: 300ms;
  animation-timing-function: linear;
}

#btn-2:not(:checked) ~ .slides .slide:nth-child(2) {
  animation-name: swap-out;
  animation-duration: 300ms;
  animation-timing-function: linear;
}

#btn-3:not(:checked) ~ .slides .slide:nth-child(3) {
  animation-name: swap-out;
  animation-duration: 300ms;
  animation-timing-function: linear;
}

@keyframes swap-out {
  0% {
    transform: translatex(0);
    opacity: 1;
  }

  50% {
    transform: translatex(50%);
    opacity: 0;
  }

  100% {
    transform: translatex(100%);
  }
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: aqua;">
<span>
<%@ include file="navbar.jsp" %>
</span>

<div class="slider"  style="background-color: white;">
  <input type="radio" name="toggle" id="btn-1" checked>
  <input type="radio" name="toggle" id="btn-2">
  <input type="radio" name="toggle" id="btn-3">

  <div class="slider-controls">
    <label for="btn-1"></label>
    <label for="btn-2"></label>
    <label for="btn-3"></label>
  </div>

  <ul class="slides">
    <li class="slide">
      <div class="slide-content">
        <h2 class="slide-title">Slide #1</h2>
        <p class="slide-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat dignissimos commodi eos totam perferendis possimus dolorem, deleniti vitae harum? Enim.</p>
        <a href="#" class="slide-link">Learn more</a>
      </div>
      <p class="slide-image">
        <img src="data:image/jpeg;base64,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"width="320" height="240">
      </p>
    </li>
    <li class="slide">
      <div class="slide-content">
        <h2 class="slide-title">Slide #2</h2>
        <p class="slide-text">Nisi ratione magni ea quis animi incidunt velit voluptate dolorem enim possimus, nam provident excepturi ipsam nihil molestiae minus delectus!</p>
        <a href="#" class="slide-link">Amazing deal</a>
      </div>
      <p class="slide-image">
        <img src="https://thumbs.dreamstime.com/b/online-auction-gavel-internet-bidding-web-site-win-buy-item-d-words-wood-block-closing-website-42430139.jpg" width="320" height="240">
      </p>
    </li>
    <li class="slide">
      <div class="slide-content">
        <h2 class="slide-title">Slide #3</h2>
        <p class="slide-text">Quisquam quod ut quasi, vero obcaecati laudantium asperiores corporis ad atque. Expedita fugit dicta maxime vel doloribus sequi, facilis dignissimos.</p>
        <a href="#" class="slide-link">Get started</a>
      </div>
      <p class="slide-image">
        <img src="https://studentprojectguide.com/wp-content/uploads/2019/12/Online-Product-Auction-System.jpg"  width="320" height="240">
      </p>
    </li>
  </ul>
</div>
<br>
<br>
</div>
<br>
<br>

<%@include file="footer.jsp" %>

</body>

</html>