const express=require("express")
const router=express.Router();
const pool=require("../pool")

router.post('/',function(req,res){
	//2.1获取数据
	var obj=req.body;
	//2.2验证数据是否为空
	if (!obj.phone){
		res.send({code:401,msg:"phone required"});
		return;
	}
	if (!obj.upwd){
		res.send({code:402,msg:"upwd required"});
		return;
	}
	//2.3执行sql语句
	pool.query('SELECT * FROM xz_user WHERE phone=? AND upwd=?',[obj.phone,obj.upwd],function(err,result){
		if (err) throw err;
		console.log(result);
	//判断数据长度是否大于0
	if (result.length>0){
		res.send({code:200,msg:'login success'});
	}else {
		res.send({code:301,msg:'login error'});
	}
	});

	res.send('登录成功');
});
module.exports=router;