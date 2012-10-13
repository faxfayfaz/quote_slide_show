A lightweight jquery plugin to show quotes/testimonials with a fadein/out effect.

### Sample markup:

<pre>
  &lt;div class ="quote">The best thing I've done so far - Chuck Norris &lt;/div>
  &lt;div class ="quote">This totally changed my life! - Jean Claude van Damme &lt;/div>
  &lt;div class ="quote">Seriously awesome! - Arnold Schwarzenegger &lt;/div>
</pre>

### Example usage:

<pre>
  $('.quote').quoteSlideShow({
    delay: 7000,     // defaults to 5000
    random: true,    // defaults to false
    fadeSpeed: 1000  // defaults to 500
  });
</pre>