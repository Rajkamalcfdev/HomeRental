<cfoutput>
	<body class="bg-warning">
		<h1 class="text-center">Customer Lists</h1>
		<div class="row">
			<div class="col-sm-2">
				<a class="btn btn-success" href="#buildURL('main.views')#">Home</a>
			</div>
			<div class="col-sm-8">
				<table class="table table-sm table-bordered table-hover">
					<thead class="bg-info">
						<tr>
							<th>Customer ID</th>
							<th>Customer Name</th>
						</tr>
					</thead>
					<tbody>
						<cfloop array="#rc.getCustomers#" index="qCustomers">
							<tr>
								<td>#qCustomers.getCustomerID()#</td>
								<td>#qCustomers.getCustomerName()#</td>
							</tr>
						</cfloop>
					</tbody>
				</table>	
			</div>
			<div class="col-sm-2">
				<a href="#buildURL('main.addCustomers')#" class="btn btn-primary">Add Customer</a>
			</div>
		</div>
	</body>
</cfoutput>