import Vapor
import App

var app = try Application(.detect())
defer { app.shutdown() }

try configure(app) 
try app.run()
