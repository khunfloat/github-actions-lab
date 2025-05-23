const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("Hello World! I'm the master");
});

app.get("/yay", (req, res) => {
  res.send("yay yay bug float");
});

app.get("/floatkub", (req, res) => {
  res.send("yay yay bug float");
});

// yaya
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
