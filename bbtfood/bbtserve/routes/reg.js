const express=require("express")
const router=express.Router();
const pool=require("../pool")

router.post('/',(req,res)=>{
	//获取post请求数据
    var phone=req.body.phone;
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    if (!phone){
		res.send({code:401,msg:'phone required'});
		return;
	}if (!uname){
		res.send({code:402,msg:'uname required'});
		return;
	}if (!upwd){
		res.send({code:403,msg:'upwd required'});
		return;
	}
    console.log(req.body.phone)
	var insert = 'insert into bbt_user set uname=?,upwd=?,phone=?'
	pool.query(insert,[phone,uname,upwd],(err,result)=>{
		 if(err) throw err;	
		if(result.affectedRows>0){
			res.send({code:200,msg:'reg success'});
	    }
   });
});
module.exports=router;