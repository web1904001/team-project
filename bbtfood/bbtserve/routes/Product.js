const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
  var tid=req.query.tid;
  var output={
    productlist:[],
    familylist:[]
  }
  if(tid!==undefined){
  var sql1=`SELECT * FROM bbt_pic where family_id=?`;
  pool.query(sql1,[tid],(err,result)=>{
    if(err)console.log(err);
    output.productlist=result;
    var family_id=output.productlist['family_id'];
    var sql=`SELECT * FROM bbt_laptop_family`;
    pool.query(sql,[tid],(err,result)=>{
        if(err)console.log(err);
        output.familylist=result;
    res.send(output);
  })
})
    }else{
        res.send(output);
    }
  })


module.exports=router;