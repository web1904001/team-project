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
        res.send(result);
    }
  })
})

module.exports=router;