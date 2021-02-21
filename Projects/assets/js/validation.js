$(document).ready(function () {
	// Validation for customer add section

	$('#cust_submit').click(function () {
		var customerName = $('#customerName').val().trim();
		if(customerName == '' ){
			alert('Please enter customer name');
			return false;
		} else if( customerName != '') {
			return true;
		}
	});

	// Validation for product section
	$('#product_submit').click(function () {
		var productName 	= $('#productName').val().trim();
		var quantityTotal 	= $('#quantityTotal').val().trim();
		var price 			= $('#price').val().trim();

		if(productName == ''){
			alert('Please enter product name');
			return false;
		}
		if(quantityTotal == ''){
			alert('Please enter quantity total');
			return false;
		} else if(!quantityTotal.match(/[0-9]/)) {
			alert('Please enter numeric value only!');
			return false;
		}
		if(price == ''){
			alert('Please enter product price');
			return false;
		} else if(!price.match(/[0-9]/)) {
			alert('Please enter numeric value only!');
			return false;
		}
		return true;
	});
	
	// Validation for trasaction add section

	$('#trans_submit').click(function () {
		var trans_quantity 	= $('#trans_quantity').val().trim();
		if( $('#trans_productId').val() == 0){
			alert('Please select your product');
			return false;
		}
		if( $('#trans_customerId').val() == 0){
			alert('Please select your customer');
			return false;
		}
		if(trans_quantity == ''){
			alert('Please enter quantity');
			return false;
		} else if( !trans_quantity.match(/[0-9]/)) {
			alert('Please enter numeric value only!');
			return false;
		}
		if( $('#transactionType').val() == 0){
			alert('Please select your transaction type');
			return false;
		} 
		return true;
	});
});



