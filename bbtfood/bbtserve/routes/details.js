const express=require("express")
const router=express.Router();
const pool=require("../pool")

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("/",(req,res)=>{
  var lid=req.query.lid;
  // var bbt_lid=req.query.bbt_lid;
  var output={
    plist1:[],
    plist2:[],
    plist3:[],
    plist4:[]
  }
    var sql1=`select * from bbt_laptop`;
    pool.query(sql1,[],(err,result)=>{
      if(err) console.log(err);
      output.plist1=result;
      var bbt_lid=output.plist1["lid"];
      var sql2=`select lg,product from bbt_pic`;
      pool.query(sql2,[bbt_lid],(err,result)=>{
        if(err) console.log(err);
        output.plist2=result;
        var sql3=`select * from bbt_laptop_list`;
        pool.query(sql3,[bbt_lid],(err,result)=>{
          if(err) console.log(err);
          output.plist3=result;
          var sql4=`select * from bbt_laptop_title`;
          pool.query(sql4,[bbt_lid],(err,result)=>{
            if(err) console.log(err);
            output.plist4=result;
            res.send(output);
          })
        })
      })
    })
  })


module.exports=router;
