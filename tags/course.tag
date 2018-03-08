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

  $.ajax({
              type: "GET",            // Type of request to be send
              url: "https://canvas.instructure.com/api/v1/courses?access_token=4306~ZSG7x0XeygfG8ioqxig8GKoMm47nfIFJWknp1p7RpP0i64OEYkjjLTFMVf9DLoWy",          // url+token to which the request is sent
              contentType: "application/json; charset=utf-8",
              dataType: "jsonp",     // type of data
              success: function(data, status, jqXHR)
              {
                  console.log( "success status: "+status );
                  console.log( "success data: "+data );
                  console.log( "success xhr text: "+jqXHR.responseText );
              },
              jsonp: false,            // should use Callback below
              jsonpCallback: function(data)
              {
                  //var asgndata = JSON.parse(data);
                  //console.log( "jsonp asgndata: "+asgndata );
                  console.log( "jsonp data: "+data );// undefined - parsererror in returned data
              },
              error: function (jqXHR, status)
              {
                  console.log( "ERR status: "+status );
                  console.log( "ERR xhr text: "+jqXHR.responseText );
              }

  });
</script>
</course>
