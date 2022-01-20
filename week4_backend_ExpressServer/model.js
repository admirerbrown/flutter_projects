const mongoose = require("mongoose");

// creating a schema for the collection in our usersDB...
const UserSchema = new mongoose.Schema({
    first_name: String,
    last_name: String,
    date_of_birth: String,
    school: String
});

 // creating a users collection and assigning it to our UserSchema.
 // ie. all documents in the users collection would be of the userSchema blueprint..
const User = mongoose.model("User", UserSchema);
module.exports = User  // making the user collection available for external files...
