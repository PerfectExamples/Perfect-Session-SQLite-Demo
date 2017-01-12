//
//  main.swift
//  Perfect Session SQLite Demo
//
//  Created by Jonathan Guthrie on 2017-01-05.
//	Copyright (C) 2017 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 20176 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import PerfectSession
import PerfectSessionSQLite
import SQLiteStORM

let server = HTTPServer()

SessionConfig.name = "TestingSQLiteDrivers"
SessionConfig.idle = 60

// Optional
SessionConfig.cookieDomain = "localhost"
SessionConfig.IPAddressLock = true
SessionConfig.userAgentLock = true

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
