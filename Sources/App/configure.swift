import Fluent
import FluentMySQLDriver
import Vapor
import Feature

// configures your application
public func configure(_ app: Application) throws {
    
    // MARK: CORS with default configuration
    let corsConfiguration = CORSMiddleware.Configuration(
        allowedOrigin: .all,
        allowedMethods: [.GET, .POST, .PUT, .OPTIONS, .DELETE, .PATCH],
        allowedHeaders: [.accept, .authorization, .contentType, .origin, .xRequestedWith, .userAgent, .accessControlAllowOrigin]
    )
    let cors = CORSMiddleware(configuration: corsConfiguration)
    app.middleware.use(cors, at: .beginning)
    app.logger.info("Configurou o CORS")
    
    // MARK: Porta configuração
    app.http.server.configuration.port = 4000
    app.logger.info("Configurou a porta")
    

    // MARK: Database connection
//    var tls = TLSConfiguration.makeClientConfiguration()
//    tls.certificateVerification = .none
//    app.databases.use(.mysql(
//         hostname: Environment.get("DATABASE_HOST") ?? "localhost",
//         port: Environment.get("DATABASE_PORT").flatMap(Int.init(_:)) ?? MySQLConfiguration.ianaPortNumber,
//         username: Environment.get("DATABASE_USERNAME") ?? "vapor_username",
//         password: Environment.get("DATABASE_PASSWORD") ?? "vapor_password",
//         database: Environment.get("DATABASE_NAME") ?? "vapor_database",
//        tlsConfiguration: tls
//    ), as: .mysql)
//
//    app.sessions.use(.fluent(.mysql))

    
    // MARK: Migrations
//    app.logger.info("Subiu o ambiente do mysql")
//    migrate(migrate: app.migrations)
//    try app.autoMigrate().wait()
//    app.logger.info("Subiu os migrations necessarios")
    
    // MARK: register Routes
    try routes(app)
}

func routes(_ app: Application) throws {
    try routesAdmin(app)
}
