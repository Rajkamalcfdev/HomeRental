<cfoutput>
	<body class="bg-info">
		<h1 class="text-center text-bold">Add New Product</h1>
		<div class="container">
			<form action="#buildURL('main.addProduct')#" method="post">
				<div>
					<div class="form-group row">
						<label for="productName" class="col-sm-2 col-form-label col-form-label-sm">Product name</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="productName" id="productName">
						</div>
					</div>
					<div class="form-group row">
						<label for="quantityTotal" class="col-sm-2 col-form-label col-form-label-sm">Total quantity</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="quantityTotal" id="quantityTotal">
						</div>
					</div>
					<div class="form-group row">
						<label for="Price" class="col-sm-2 col-form-label col-form-label-sm">Price</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="price" id="price">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-10">
							<input type="submit" class="btn btn-primary pull-right" name="submit" id="product_submit" value="Submit">
						</div>
					</div>
				</div>
			</form>
		</div>
	</body>
</cfoutput>