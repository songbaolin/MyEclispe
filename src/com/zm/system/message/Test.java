package com.zm.system.message;

import com.montnets.mwgate.common.GlobalParams;
import com.montnets.mwgate.smsutil.ConfigManager;
import com.montnets.mwgate.smsutil.SmsSendConn;

public class Test {

	public static void main(String[] args) {
		SDKDemo  aa=new SDKDemo();
		// 用户账号
				String userid = "E101YZ";

				// 创建全局参数
				GlobalParams globalParams = new GlobalParams();
				// 设置请求路径
				globalParams.setRequestPath("/sms/v2/std/");
				// 设置是否需要日志 1:需要日志;0:不需要日志
				globalParams.setNeedLog(1);
				// 设置全局参数
				ConfigManager.setGlobalParams(globalParams);

				// 设置用户账号信息
				aa.setAccountInfo();                            //ok

				// 是否保持长连接
				boolean isKeepAlive = true;
				// 实例化短信处理对象
				SmsSendConn smsSendConn = new SmsSendConn(isKeepAlive);

				// 单条发送
				aa.singleSend(smsSendConn, userid,"15551321657");  
	}
	
}