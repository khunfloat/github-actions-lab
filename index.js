const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("Hello World! I'm the master");
});

app.get("/yay", (req, res) => {
  res.send("yay yay bug float");
});

app.get("/float", (req, res) => {
  res.send("float");
});

app.get("/frank", (req, res) => {
  res.send("float");
});

app.get("/v1/f", (req, res) => {
  res.send("f");
});

app.get("/creamykub", (req, res) => {
  // creamykub route
  res.send("creamykaa");
});

// yaya
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
