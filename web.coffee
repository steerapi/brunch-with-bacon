express = require("express")
app = express()
oneDay = 0
app.use(express.json())
app.use express.compress()

app.use express["static"](__dirname + "/_public",
  maxAge: oneDay
)
port = process.env.PORT or 3000
ip = process.env.IP or "0.0.0.0"
app.listen port, ip, ->
console.log "listening on #{ip}:#{port}"