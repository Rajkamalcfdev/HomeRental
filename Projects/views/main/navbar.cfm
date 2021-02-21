<cfoutput>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="#buildURL('main.default')#">Home</a>
				<a class="nav-item nav-link" href="#buildURL('main.products')#">Products</a>
				<a class="nav-item nav-link" href="#buildURL('main.customers')#">Customers</a>
				<a class="nav-item nav-link" href="#buildURL('main.transation')#">Transation</a>
				<a class="nav-item nav-link" href="#buildURL('main.reports')#">Reports</a>
			</div>
		</div>
	</nav>
</cfoutput>
