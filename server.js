const express = require("express")

const app = express()
PORT = 8000

app.get('/',(req,res)=>{
    res.json({
        status: 200,
        msg: "Hello World"
    })
})

app.listen(PORT,()=>{
    console.log(`Server is running on http://localhost:${PORT}`);
})