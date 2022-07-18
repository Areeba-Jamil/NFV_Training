const Fs = require('fs');
const express = require("express");
const app = express();

// fetch file details
Fs.stat('/home/areeba/Desktop/test_folder/', (err, stats) => {
    if(err)
    {
        throw err;
    }


app.listen(5002, () => {
  console.log("Application started and Listening on port 5002");
});


app.get("/", (req, res) => {
 res.send("A File in the directory, 'test-folder' was changed. The data was last modified at:" + stats.mtime);

});

app.post("/", (req, res) => {
  res.send("Bash Script Task Milestone2");
});

//print time
console.log(`File Data Last Modified: ${stats.mtime}`);
console.log(`File Status Last Modified: ${stats.ctime}`);


});

