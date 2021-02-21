<cfoutput>
	<body class="bg-warning">
		<h1 class="text-center">Reports</h1>
		<a class="btn btn-success" href="#buildURL('main.views')#">Home</a>
		<cfif !structKeyExists(rc, "summary") AND !structKeyExists(rc, "detailed")>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-6 text-center">
						<a href="index.cfm?action=main.reports&summary=report" class="btn btn-primary">Inventory Summary Report</a>
					</div>
					<div class="col-sm-6 text-center">
						<a href="index.cfm?action=main.reports&detailed=report" class="btn btn-info">Inventory Detailed Report</a>
					</div>
				</div>
			</div>
		</cfif>
		
		<cfif structKeyExists(rc, "summary")>
			<div class="row">
				<h1 class="text-center">Inventory Summary Report</h1>
				<div class="col-sm-2">
				</div>
				<div class="col-sm-8">
					<table class="table table-sm table-bordered table-hover">
						<thead class="bg-info">
							<tr>
								<th>Item ID</th>
								<th>Item Name</th>
								<th>Available Quantity</th>
							</tr>
						</thead>
						<tbody>
							<cfloop array="#rc.getProducts#" index="qgetInventory">
								<tr>
									<td>#qgetInventory.getProductid()#</td>
									<td>#qgetInventory.getProductname()#</td>
									<td>#qgetInventory.getQuantitytotal()#</td>
								</tr>
							</cfloop>
						</tbody>
					</table>	
				</div>
				<div class="col-sm-2">
					<form action="##" method="post">
						<a href="" target="_blank"> 
							<input type="submit" name="submit" id="sibmit" value="Download PDF">
						</a>
					</form>	
				</div>
			</div>
		 	<cfif structKeyExists(form, "submit")>
			 	<cfsavecontent variable="result">
                    <html lang="en">
                        <head>
                            <meta charset="UTF-8">
                            <meta name="viewport" content="width=device-width, initial-scale=1.0">
                            <title>PDf Invoice generation</title>
                        </head>
                        <body>
                        	<h1 class="text-center">Inventory Summary Report</h1>
		                    <table class="table table-sm table-bordered table-hover">
								<thead class="bg-info">
									<tr>
										<th>Item ID</th>
										<th>Item Name</th>
										<th>Available Quantity</th>
									</tr>
								</thead>
								<tbody>
									<cfloop array="#rc.getProducts#" index="qgetInventory">
										<tr>
											<td>#qgetInventory.getProductid()#</td>
											<td>#qgetInventory.getProductname()#</td>
											<td>#qgetInventory.getQuantitytotal()#</td>
										</tr>
									</cfloop>
								</tbody>
							</table>	
						</body>
                    </html>
                </cfsavecontent>
				<cfif !directoryExists( expandpath("../../uploadFiles") )>
					<cfdirectory action="create" directory="#expandpath("../../uploadFiles")#"/>
				</cfif>		
                <cfset fileName = createUUID()>
                <cfdocument format="PDF" orientation="landscape" filename="#expandpath("../../uploadFiles")#/#fileName#.pdf" bookmark="false">
                    #result#
                </cfdocument>
                <cfheader name="content-disposition" value="attachment; filename=#expandpath("../../uploadFiles")#/#fileName#.pdf">
                <cfcontent type="application/pdf" file="#expandpath("../../uploadFiles")#/#fileName#.pdf">
			</cfif>
		</cfif>
		<cfif structKeyExists(rc, "detailed")>
			<div class="container">
				<div class="row">
					<h1 class="text-center">Inventory Detailed Report</h1>
					<div class="col-sm-2">
					</div>
                	<hr>
					<cfloop array="#rc.getProducts#" index="qgetInventory">
	                	<label>Item ID</label> : #qgetInventory.getProductid()# <br>
	                	<label>Item Name</label> : #qgetInventory.getProductname()# <br>
	                	<label>Available Quantity</label> : #qgetInventory.getQuantitytotal()# <br>
	                	<hr>
	            	</cfloop>
					<div class="col-sm-8">
						<table class="table table-sm table-bordered table-hover">
							<thead class="bg-info">
								<tr>
									<th>Transaction ID</th>
									<th>Date/time</th>
									<th>Type</th>
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
						<form action="##" method="post">
							<a href="" target="_blank"> 
								<input type="submit" name="submit" id="sibmit" value="Download PDF">
							</a>
						</form>	
					</div>
				</div>
			</div>
			<cfif structKeyExists(form, "submit")>
			 	<cfsavecontent variable="result">
	                <html lang="en">
	                    <head>
	                        <meta charset="UTF-8">
	                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	                        <title>PDf Invoice generation</title>
	                    </head>
	                    <body>
	                    	<h1 class="text-center">Inventory Detailed Report</h1>
	                    	<cfloop array="#rc.getProducts#" index="qgetInventory">
	                    		<hr>
		                    	<label>Item ID</label> : #qgetInventory.getProductid()# <br>
		                    	<label>Item Name</label> : #qgetInventory.getProductname()# <br>
		                    	<label>Available Quantity</label> : #qgetInventory.getQuantitytotal()# <br>
	                    	</cfloop>
	                    	<hr>
	                    	<div class="col-sm-8">
								<table class="table table-sm table-bordered table-hover">
									<thead class="bg-info">
										<tr>
											<th>Transaction ID</th>
											<th>Date/time</th>
											<th>Type</th>
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
										<hr>
									</tbody>
								</table>	
							</div>
						</body>
	                </html>
	            </cfsavecontent>
				<cfif !directoryExists( expandpath("../../uploadFiles") )>
					<cfdirectory action="create" directory="#expandpath("../../uploadFiles")#"/>
				</cfif>		
	            <cfset fileName = createUUID()>
	            <cfdocument format="PDF" orientation="landscape" filename="#expandpath("../../uploadFiles")#/#fileName#.pdf" bookmark="false">
	                #result#
	            </cfdocument>
	            <cfheader name="content-disposition" value="attachment; filename=#expandpath("../../uploadFiles")#/#fileName#.pdf">
	            <cfcontent type="application/pdf" file="#expandpath("../../uploadFiles")#/#fileName#.pdf">
			</cfif>
		</cfif>
	</body>
</cfoutput>