
<!DOCTYPE html>
<html>
<head>
    <title>Customer Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">
  <h1>Hotel Management Systems</h1>

  <p>To Provide Customer Services...</p>
</div>
  <div class="container">

 <a href="http://localhost:8080/HotelManagementSystems/card.jsp" button type="button" class="btn btn-info">card form</a></button>

<a href="http://localhost:8080/HotelManagementSystems/cardRetrieveServlet" button type="button" class="btn btn-primary">Display Card Info</a></button>

<a href="http://localhost:8080/HotelManagementSystems/customer.jsp" button type="button" class="btn btn-info">Customer form</a></button>

<a href="http://localhost:8080/HotelManagementSystems/customerRetrieveServlet" button type="button" class="btn btn-primary">Display Customer Info</button>

<a href="http://localhost:8080/HotelManagementSystems/account.jsp" button type="button" class="btn btn-info">Account form</a></button>


<a href="http://localhost:8080/HotelManagementSystems/accountRetrieveServlet"button type="button" class="btn btn-primary">Display Account Info</a></button>


<a href="http://localhost:8080/HotelManagementSystems/depositMoney.jsp" button type="button" class="btn btn-info">Deposit Money</a></button>

<a href="http://localhost:8080/HotelManagementSystems/withdrawMoney.jsp" button type="button" class="btn btn-info">Withdraw Money</a></button>
<hr>
<a href="http://localhost:8080/HotelManagementSystems/checkBalance.jsp" button type="button" class="btn btn-success">Check Balance</a></button>
    <div class="row">

        <div class="form-container">
            <h2>Customer Form</h2>
            <form action="/HotelManagementSystems/customer" method="POST">
               <div class="form-group">
                    <label for="customertableId">CustomerId:</label>
                    <input type="text" class="form-control" id="customertableId" name="customertableId" placeholder="Enter customertableId" required>
                </div>
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required>
                </div>

                <div class="form-group">
                    <label for="mobileNo">MobileNo:</label>
                    <input type="text" class="form-control" id="mobileNo" name="mobileNo" placeholder="Enter Mobile No" required>
                </div>

                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" class="form-control" id="address" name="address" placeholder="Enter address" required>
                </div>

                <input type="submit"  value="Submit">
            </form>
        </div>

</body>
</html>
