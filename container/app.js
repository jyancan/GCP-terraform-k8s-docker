const express = require('express')
const app = express()
const port = 3000
const os = require('os');

if(os.hostname()) {
    var hostname = os.hostname();
    console.log("Hostname for the operating"
        + " system is " + String(hostname));
}

app.get('/greeting', function(req, res)  {
  res.send(`Hostname: ${hostname}`)
})
app.get("/square", function(request, response)  {
     response.sendFile(__dirname+"/index.html");
})
app.get("/sqres", function(request,response) {
	var x= request.query.x;
 
     if (x != "") {
         response.send("Your square is " + x*x);
     } else {
         response.send("Please provide us a number");
     }
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
