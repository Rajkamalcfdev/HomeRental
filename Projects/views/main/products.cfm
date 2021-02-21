<cfoutput>
	<body class="bg-warning">
		<div class="row">
			<h1 class="text-center">Product Lists</h1>
			<div class="col-sm-2">
				<a class="btn btn-success" href="#buildURL('main.views')#">Home</a>
			</div>
			<div class="col-sm-8">
				<table class="table table-sm table-bordered table-hover">
					<thead class="bg-info">
						<tr>
							<th>Product ID</th>
							<th>Product title</th>
							<th>Quantity total</th>
							<th>Quantity Booked</th>
							<th>Price</th>
						</tr>
					</thead>
					<tbody>
						<cfloop array="#rc.getProducts#" index="qProducts">
							<tr>
								<td>#qProducts.getProductid()#</td>
								<td>#qProducts.getProductname()#</td>
								<td>#qProducts.getQuantitytotal()#</td>
								<td>#qProducts.getQuantitybooked()#</td>
								<td>#qProducts.getPrice()#</td>
							</tr>
						</cfloop>
					</tbody>
				</table>	
			</div>
			<div class="col-sm-2">
				<a href="#buildURL('main.addProduct')#" class="btn btn-primary">Add Product</a>
			</div>
		</div>
	</body>
</cfoutput>