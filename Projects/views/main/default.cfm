<cfoutput>
	<div class="row" style="padding-top:220px">
		<h1 class="text-center">Login</h1>
		<div class="container jumbotron text-center">
			<form action="#buildURL('main.default')#" method="post">
				<div class="form-group row">
					<label for="email" class="col-sm-2 col-form-label">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" name="email" id="email" placeholder="example@gmail.com">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password" id="password" placeholder="Password">
					</div>
				</div>
				<input type="submit" name="submit" id="submit" class="btn btn-info" value="Submit">
			</form>
		</div>
	</div>
</cfoutput>

