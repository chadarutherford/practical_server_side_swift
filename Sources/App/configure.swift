import Fluent
import FluentSQLiteDriver
import Leaf
import Vapor


// configures your application
public func configure(_ app: Application) throws {
	// uncomment to serve files from /Public folder
	app.databases.use(.sqlite(.file("db.sqlite")), as: .sqlite)
	app.sessions.use(.fluent)
	app.migrations.add(SessionRecord.migration)
	app.middleware.use(app.sessions.middleware)
	app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
	app.views.use(.leaf)
	app.leaf.cache.isEnabled = app.environment.isRelease
	
	let modules: [Module] = [
		UserModule(),
		FrontendModule(),
		BlogModule(),
	]
	
	for module in modules {
		try module.configure(app)
	}
}
