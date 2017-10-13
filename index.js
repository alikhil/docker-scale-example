
const express = require("express");

const http = require("http");
const util = require("util");
const sys = require("sys");
const exec = require("child_process").exec;

const app = express();


const port = 2252;
var containerName = "unknown";

exec("cat /etc/hostname", (e, out, er) => containerName = out);

app.get("/", (req, res) => {
    res.json("hello from THIRD version of application\n from container:" + containerName);
});

const server = http.createServer(app);
server.on("listening", () => console.log("listening in port " + port));

server.listen(port);