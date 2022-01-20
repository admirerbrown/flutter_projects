// importing required modules needed to create routes.....
const express = require("express");
const userModel = require("./model");
const app = express();


// ******************* post requests ****************************
// creating a post request to add a new user to the users database...
app.post("/add_newUser", async(req, res)=> {
    const add_newUser = new userModel(req.body);  // content to be saved...

    try {
        await add_newUser.save();
        res.send("user has been created");
       // console.log(add_newUser)
    }
    catch (error){
        res.send.status(500).send(error);
    }
});

// use postman or any other tool to add users into the users database....


// ************************* get requests ************************

//creating a get request for our homepage...

app.get("/", function(req, res){
    res.send('Welcome to our homepage');
});


// creating a get request to view all users data...

app.get("/get_allUsers", async (req, res)=> {
    const all_users = await userModel.find({});

    try{
        res.send(all_users);
    }
    catch(error){
        res.status(500).send(error);
    }
});


module.exports = app; // making the router.js file accessible to external files....