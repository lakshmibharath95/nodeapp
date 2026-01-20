const http = require("http");
const os = require("os");

const PORT = 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end(`Hello from Node.js ECS App 🚀
Hostname: ${os.hostname()}
`);
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

