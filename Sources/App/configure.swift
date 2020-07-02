
import Fluent
import FluentSQLiteDriver
import Leaf
import Liquid
import LiquidLocalDriver
import Vapor

public func configure(_ app: Application) throws {

    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
	app.routes.defaultMaxBodySize = "10mb"
	app.fileStorages.use(.local(publicUrl: "https://localhost:8080", publicPath: app.directory.publicDirectory, workDirectory: "assets"), as: .local)

    
    app.views.use(.leaf)
    app.leaf.cache.isEnabled = app.environment.isRelease
    let source = ModularViewFiles(rootDirectory: app.directory.workingDirectory,
                                  modulesDirectory: "Sources/App/Modules",
                                  resourcesDirectory: "Resources",
                                  viewsFolderName: "Views",
                                  fileExtension: "leaf",
                                  fileio: app.fileio)
    app.leaf.sources = .singleSource(source)

    app.databases.use(.sqlite(.file("db.sqlite")), as: .sqlite)

    app.sessions.use(.fluent)
    app.migrations.add(SessionRecord.migration)
    app.middleware.use(app.sessions.middleware)

    let modules: [Module] = [
        FrontendModule(),
        BlogModule(),
		AdminModule(),
        UserModule(),
    ]

    for module in modules {
        try module.configure(app)
    }
}

