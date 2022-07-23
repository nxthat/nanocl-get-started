const express = require('express');

const app = express();

const port = process.env.PORT ? +process.env.PORT : 9000;
const host = process.env.HOST ? process.env.HOST : "127.0.0.1";

app.get("*", (req, res) => {
  res.json({
    uptime: process.uptime,
    now: Date.now(),
    headers: req.headers,
    env: process.env,
  });
});

app.listen(port, host, () => {
  console.log("> Gettings started server ready.");
});
