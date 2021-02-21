component persistent="true" table="customers" {
	property name="customerId" column="customer_id" fieldType="id" generator="identity";
	property name="customerName" column="customer_name";
}
