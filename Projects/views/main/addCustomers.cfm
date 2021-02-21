<cfoutput>
	<body class="bg-info">
		<h1 class="text-center text-bold text-danger">Add New Customer</h1>
		<div class="container">
			<form action="#buildURL('main.addCustomers')#" method="post">
				<div class="form-group row">
					<label for="productName" class="col-sm-2 col-form-label col-form-label-sm">Customer Name</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="customerName" id="customerName">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-10">
						<input type="submit" class="btn btn-primary pull-right" name="submit" id="cust_submit" value="Submit">
					</div>
				</div>
			</form>
		</div>
	</body>
</cfoutput>