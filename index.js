const express = require("express");
const app = express();
const port = 3000;
const cors = require("cors");

app.use(cors());

app.get("/", (req, res) => {
  console.log("Calling home 😻");
  res.send("Welcome home 😻");
});

app.get("/cats", (req, res) => {
  res.send(["😻", "😻", "😻", "😻", "😻"]);
});

app.listen(port, (error) => {
  if (error) return console.log({ error });
  console.log(`API is running at ${port}`);
});
