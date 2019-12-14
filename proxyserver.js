const express = require('express')
const fetch = require("node-fetch")
const app = express()
const port = 8000

app.get('/', (req, res, next) => {
    console.log("HIT")
    //do windows IP
   fetch("http://192.168.8.104:8000/music/update",{
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      method: "POST",
      body: JSON.stringify({idVideo: req.query.idVideo, emocao: req.query.emocao})
   })
   next();
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))

