<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   
   <title>Balram Cheryala</title>
    
    <script type="text/javascript">
    $( document ).ready(function() {
        console.log( "ready!" );
    });

	function sayHi(){
		$.get("/hi", function( data ) {
			var a = JSON.stringify(data);
			 $('#exampleModal').modal('show');
			   document.getElementById("json").textContent = JSON.stringify(data, undefined, 2);
			});
		}

	function sbiOneBTwo(){
		$.get("/getFxdIntrestRate?bank=SBI&durationInYear=1", function( data ) {
			var a = JSON.stringify(data);
			 $('#exampleModal').modal('show');
			 document.getElementById("json").textContent = JSON.stringify(data, undefined, 2);
			});
		}

	function sbiOneETwo(){
		$.get("/getFxdIntrestRate?bank=SBI&durationInYear=2", function( data ) {
			var a = JSON.stringify(data);
			 $('#exampleModal').modal('show');
			 document.getElementById("json").textContent = JSON.stringify(data, undefined, 2);
			});
		}

	function CanaraOneEOne(){
		$.get("/getFxdIntrestRate?bank=Canara&durationInYear=2", function( data ) {
			var a = JSON.stringify(data);
			 $('#exampleModal').modal('show');
			  document.getElementById("json").textContent = JSON.stringify(data, undefined, 2);
			});
		}
    </script>
    
  </head>
  <body>
  
  
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">BRMS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
  </div>
</nav>
<br>

<h2 >Testing of Banking Interest rates by using drools rules</h2>

<div class="container"><div class="row"></div>  <br>
	<button type="button" id= "t1" class="btn btn-dark" onclick="sayHi();">Say Hi..</button><div class="row"></div> <br>
	<h6>FD Interest Rate for SBI Bank duration more than 1 year and below 2 years</h6>
	<button type="button" id= "sbiOneBTwo" class="btn btn-dark" onclick="sbiOneBTwo();">Click to get Info  </button><div class="row"></div>  <br>
	<h6>FD Interest Rate for SBI Bank for duration more than or equal to 2 years</h6>
	<button type="button" id= "sbiOneETwo" class="btn btn-dark" onclick="sbiOneETwo();">Click to get Info  </button><div class="row"></div>  <br>
	<h6>FD Interest Rate for Canara Bank for duration more than or equal to 1 year</h6>
	<button type="button" id= "CanaraOneEOne" class="btn btn-dark" onclick="CanaraOneEOne();">Click to get Info  </button>  <br>
</div>
	
	
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" >
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
    <div class="modal-content">
     <div class="modal-body" id="mbody"> <pre id="json"></pre> </div> 
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>