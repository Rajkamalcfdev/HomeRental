component extends="org.corfield.framework"{
	this.name = "App10";
	this.datasource = "projects";
	this.ormenabled = true;
	APPLICATION_ROOT = GetDirectoryFromPath( GetCurrentTemplatePath() );
	this.name = ReReplace( UCase( APPLICATION_ROOT ), "[^A-Z]", "", "all" );
	this.mappings["/model"] = APPLICATION_ROOT & "models";
	this.ormSettings.flushAtRequestEnd = false;
	this.ormSettings.cfclocation = this.mappings["/model"];
	variables.frameWork = {reloadApplicationOnEveryRequest = true};

	public any function setupApplication() {
		createobject('component','models.users');
		createobject('component','models.products');
		createobject('component','models.customers');
		createobject('component','models.transation');
	}
}