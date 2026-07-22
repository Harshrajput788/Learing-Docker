const express = require("express");

const app = express();

const PORT = process.env.PORT || 8080;

app.get("/",(req,res) =>{
    return res.status(200).json({message:"Hey, I am Nodejs in Containers"});
})

app.listen(PORT,() =>{
    console.log("Server is running");
})