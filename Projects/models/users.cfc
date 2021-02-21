component persistent="true" table="users" {
	property name="userId" column="user_id" generator="identity";
	property name="name" column="name";
	property name="email" column="email";
	property name="password" column="password";
}