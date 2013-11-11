express = require("express")
app = express()
oneDay = 0
app.use(express.json())
app.use express.compress()

app.use express["static"](__dirname + "/_public",
  maxAge: oneDay
)
