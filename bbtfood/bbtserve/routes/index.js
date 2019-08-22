const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
  var tid=req.query.tid;
  var output={
    list:[],
  }
  var sql=`SELECT * FROM bbt_pic`;
  pool.query(sql,[tid],(err,result)=>{
    if(err){
      res.send(err);
      console.log(err);
    }else{
      //setTimeout(function(){
        res.send(result);
      //},2000)
      
      /*res.writeHead(200,{
        "Access-Control-Allow-Origin":
          "*"
      });
      res.write(JSON.stringify(result));
      res.end();*/
    }
  })
})

module.exports=router;