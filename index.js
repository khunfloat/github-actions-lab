const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("Hello World! I'm the master");
});

app.get("/yo", (req, res) => {
  res.send("yoyoyo");
});

// yaya
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
