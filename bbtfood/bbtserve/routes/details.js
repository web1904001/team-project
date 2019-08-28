const express=require("express")
const router=express.Router();
const pool=require("../pool")

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("/",(req,res)=>{
  var lid=req.query.lid;
  // var bid=req.query.bid;
  // var bbt_lid=req.query.bbt_lid;
  var output={
    plist1:[],
    plist2:[],
    plist3:[],
    plist4:[]
  }
  if(lid!==undefined){
    var sql1=`select * from bbt_laptop where lid=?`;
    pool.query(sql1,[lid],(err,result)=>{
      if(err) console.log(err);
      output.plist1=result[0];
      var bbt_lid=output.plist1["bbt_lid"];
      var sql2=`select lg,product from bbt_pic where bbt_lid=?`;
      pool.query(sql2,[lid],(err,result)=>{
        if(err) console.log(err);
        output.plist2=result;
        var sql3=`select * from bbt_laptop_list where bbt_lid=?`;
        pool.query(sql3,[lid],(err,result)=>{
          if(err) console.log(err);
          output.plist3=result;
          var sql4=`select * from bbt_laptop_title where bbt_lid=?`;
          pool.query(sql4,[lid],(err,result)=>{
            if(err) console.log(err);
            output.plist4=result;
            res.send(output);
          })
        })
      })
    })
    }else{
      res.send(output)
    }
  })


module.exports=router;
