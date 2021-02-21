<cfoutput>
	<body class="bg-info">
		<h1 class="text-center text-bold">Add New Transaction</h1>
		<div class="container">
			<form action="#buildURL('main.addTransaction')#" method="post">
				<div>
					<div class="form-group row">
						<label for="productName" class="col-sm-2 col-form-label col-form-label-sm">Product name</label>
						<div class="col-sm-8">
							<select class="form-select form-control" name="productId" id="trans_productId" aria-label="Default select example" >
								<option value="0">Select your product</option>
								<cfloop array="#rc.getProducts#" index="qProducts">
									<option value="#qProducts.getProductid()#">#qProducts.getProductname()#</option>
								</cfloop>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label for="customerId" class="col-sm-2 col-form-label col-form-label-sm">Customer Name</label>
						<div class="col-sm-8">
							<select class="form-select form-control" name="customerId" id="trans_customerId" aria-label="Default select example" >
								<option value="0">Select your customer</option>
								<cfloop array="#rc.getCustomers#" index="qCustomers">
									<option value="#qCustomers.getCustomerID()#">#qCustomers.getCustomerName()#</option>
								</cfloop>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label for="Price" class="col-sm-2 col-form-label col-form-label-sm">Quantity</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="quantity" id="trans_quantity" >
						</div>
					</div>
					<div class="form-group row">
						<label for="Price" class="col-sm-2 col-form-label col-form-label-sm">Transaction type</label>
						<div class="col-sm-8">
							<select class="form-select form-control" name="transactionType" id="transactionType" aria-label="Default select example" >
								<option value="0">Select Transaction Type</option>
								<option value="IN">IN</option>
								<option value="OUT">OUT</option>
							</select>
						</div>
					</div>
					<input type="hidden" name="datetime" value="#NOW()#">
					<div class="form-group row">
						<div class="col-sm-10">
							<input type="submit" class="btn btn-primary pull-right" name="submit" id="trans_submit" value="Submit">
						</div>
					</div>
				</div>
			</form>
		</div>
	</body>
</cfoutput>