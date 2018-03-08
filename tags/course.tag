<course>
  <div class="table-responsive">
    <table class="table table-striped table-sm">
      <thead>
        <tr>
          <th>#</th>
          <th>Header</th>
          <th>Header</th>
          <th>Header</th>
          <th>Header</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1,001</td>
          <td>Lorem</td>
          <td>ipsum</td>
          <td>dolor</td>
          <td>sit</td>
        </tr>
      </tbody>
    </table>
  </div>

<script>
  var api = "https://canvas.instructure.com/api/v1/courses?access_token=4306~ZSG7x0XeygfG8ioqxig8GKoMm47nfIFJWknp1p7RpP0i64OEYkjjLTFMVf9DLoWy";

function createCORSRequest(method, url) {
  var xhr = new XMLHttpRequest();
  if ("withCredentials" in xhr) {

    // Check if the XMLHttpRequest object has a "withCredentials" property.
    // "withCredentials" only exists on XMLHTTPRequest2 objects.
    xhr.open(method, url, true);

  } else if (typeof XDomainRequest != "undefined") {

    // Otherwise, check if XDomainRequest.
    // XDomainRequest only exists in IE, and is IE's way of making CORS requests.
    xhr = new XDomainRequest();
    xhr.open(method, url);

  } else {

    // Otherwise, CORS is not supported by the browser.
    xhr = null;

  }
  return xhr;
}

function makeCorsRequest() {
  // This is a sample server that supports CORS.

  var xhr = createCORSRequest('GET', api);
  if (!xhr) {
    alert('CORS not supported');
    return;
  }

  // Response handlers.
  xhr.onload = function() {
    var text = xhr.responseText;
    console.log(text);
  };

  xhr.onerror = function() {
    alert('Woops, there was an error making the request.');
  };
  xhr.send();
}

makeCorsRequest();
</script>
</course>
