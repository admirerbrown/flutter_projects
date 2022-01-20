// importing required modules for our server to run successfully.....
const express = require("express");
const mongoose = require("mongoose");
const model = require("./model")
const router = require("./router");
const app = express();


// using mongoose to connect to our local mongodb database...
// creating a new users database(usersDB) in our local mongodb....
mongoose.connect("mongodb://localhost:27017/usersDB", { useNewUrlParser: true});

const db = mongoose.connection;
db.on("error", console.error.bind(console, "connection error: "));// checking for errors in connection...
db.once("open", function(){
    console.log("connected successfully to local database..");
});



app.use(express.json()); // parsing the data or document in json format to prevent just the _id being added to the db...

app.use(router);

app.listen(3000, ()=>{// checking if server is connected successfully.....
    console.log("server successfully started on port 3000");
});