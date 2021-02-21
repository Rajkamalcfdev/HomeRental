<cfoutput>
	<body class="bg-warning">
		<div class="row">
			<h1 class="text-center">Transaction Details</h1>
			<div class="col-sm-2 ml-3">
				<a class="btn btn-success" href="#buildURL('main.views')#">Home</a>
			</div>
			<div class="col-sm-8">
				<table class="table table-sm table-bordered table-hover">
					<thead class="bg-info">
						<tr>
							<th>Transaction ID</th>
							<th>Date / Time</th>
							<th>Transaction Type</th>
							<th>Quantity</th>
						</tr>
					</thead>
					<tbody>
						<cfloop array="#rc.gettransation#" index="qtransaction">
							<tr>
								<td>#qtransaction.getTransationid()#</td>
								<td>#dateformat(qtransaction.gettransationdatetime(),"yyyy-mm-dd hh:mm:ss")#</td>
								<td>#uCase(qtransaction.gettransationtype())#</td>
								<td>#qtransaction.getQuantity()#</td>
							</tr>
						</cfloop>
					</tbody>
				</table>	
			</div>
			<div class="col-sm-2">
				<a href="#buildURL('main.addTransaction')#" class="btn btn-primary">Add Transaction</a>
			</div>
		</div>
	</body>
</cfoutput>