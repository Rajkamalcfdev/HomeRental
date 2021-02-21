component persistent="true" table="transation" {
	property name="transationId" column="transation_id" fieldType="id" generator="identity";
	property name="transationDateTime" column="transation_date_time";
	property name="customerId" column="customer_id";
	property name="productId" column="product_id";
	property name="transationType" column="transation_type";
	property name="quantity" column="quantity";
	property name="transationIdParent" column="transation_id_parent";
}