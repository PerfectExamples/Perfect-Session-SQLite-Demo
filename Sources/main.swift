

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import PerfectSession
import PerfectSessionSQLite
import SQLiteStORM
import StORM

let server = HTTPServer()

SessionConfig.name = "TestingSQLiteDrivers"
SessionConfig.idle = 10

SQLiteConnector.db = "./SessionDB"

//StORMdebug = true

let sessionDriver = SessionSQLiteDriver()

server.setRequestFilters([sessionDriver.requestFilter])
server.setResponseFilters([sessionDriver.responseFilter])

server.addRoutes(makeWebDemoRoutes())
server.serverPort = 8181

do {
	// Launch the HTTP server.
	try server.start()
} catch PerfectError.networkError(let err, let msg) {
	print("Network error thrown: \(err) \(msg)")
}
