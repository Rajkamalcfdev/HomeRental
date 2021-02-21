component {

	public function init( fw ) {
		variables.fw = arguments.fw;
		return variables.fw ;
	}

	public any function default( rc ) {
		rc.doLogin = EntityLoad('users');
		if( structKeyExists( rc, 'submit' ) AND len( rc.email ) AND len( rc.password ) ) {
			if( rc.email == rc.doLogin[1].getemail() && rc.password == rc.doLogin[1].getpassword() ) {
				variables.fw.redirect( 'main.views' );
			} else {
				variables.fw.redirect( 'main.default' );
			}
		}
	}

	public any function views( rc ) {
	
	} 

	public any function customers( rc ) {
		rc.getCustomers = EntityLoad( 'customers' );
	} 

	public any function addCustomers( rc ) {
		if( structKeyExists( rc, 'submit' ) ) {
			rc.saveCustomers = EntityNew( 'customers' );
			rc.saveCustomers.setcustomerName( rc.customerName );
			EntitySave( rc.saveCustomers );

			variables.fw.redirect( 'main.customers' );
		}
	} 

	public any function products( rc ) {
		rc.getProducts = EntityLoad( 'products' );
	} 

	public any function addProduct( rc ) {
		if( structKeyExists( rc, 'submit' ) ) {
			rc.saveProduct = EntityNew( 'products' );
			rc.saveProduct.setproductName( rc.productName );
			rc.saveProduct.setquantityTotal( rc.quantityTotal );
			rc.saveProduct.setprice( rc.price );
			EntitySave( rc.saveProduct );

			variables.fw.redirect( 'main.products' );
		}
	} 

	public any function transation( rc ) {
		rc.gettransation = EntityLoad( 'transation' );
	}

	public any function addTransaction( rc ) {
		rc.getCustomers  	= EntityLoad( 'customers' );
		rc.getProducts 	 	= EntityLoad( 'products' );
		rc.saveTransation 	= EntityNew( 'transation' );

		if( structKeyExists( rc, 'submit' ) ) {
			rc.saveTransation.setTransationDateTime( rc.datetime );
			rc.saveTransation.setCustomerId( rc.customerid );
			rc.saveTransation.setProductId( rc.productid );
			rc.saveTransation.setTransationType( rc.transactiontype );
			rc.saveTransation.setQuantity( rc.quantity );
			EntitySave( rc.saveTransation );

			variables.fw.redirect( 'main.transation' );
		}
	} 

	public any function reports( rc ) {
		rc.getProducts = EntityLoad( 'products' );
		rc.gettransation = EntityLoad( 'transation' );
	} 
}