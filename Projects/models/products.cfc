component persistent="true" table="products" {
	property name="productId" column="product_id" fieldType="id" generator="identity";
	property name="productName" column="product_title";
	property name="quantityTotal" column="quantity_total";
	property name="quantityBooked" column="quantity_booked";
	property name="price" column="price";
}