A lightweight jquery plugin to show quotes with a fadein effect.

### Sample markup:

<pre>
  <div class ="quote">I totally recommend you this!</div>
  <div class ="quote">This totally changed my life!</div>
  <div class ="quote">Seriously awesome!</div>
</pre>

### Example usage:

<pre>
  $('.quote').quoteSlideShow({
    speed: 7000,     // defaults to 5000
    random: true,    // defaults to false
    fadeSpeed: 1000  // defaults to 500
  });
<pre>