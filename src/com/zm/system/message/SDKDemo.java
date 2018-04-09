package com.zm.system.message;

import java.util.ArrayList;
import java.util.List;

import com.montnets.mwgate.common.GlobalParams;
import com.montnets.mwgate.common.Message;
import com.montnets.mwgate.common.MultiMt;
import com.montnets.mwgate.common.Remains;
import com.montnets.mwgate.smsutil.ConfigManager;
import com.montnets.mwgate.smsutil.SmsSendConn;

/**
 * @功能概要：SDK调用示例
 * @公司名称： ShenZhen Montnets Technology CO.,LTD.
 */
public class SDKDemo {
	/**
	 * 
	 * @description SDK示例
	 * @param args
	 */
	public static void main(String[] args) {
		// 用户账号
		String userid = "E1025W";

		// 创建全局参数
		GlobalParams globalParams = new GlobalParams();
		// 设置请求路径
		globalParams.setRequestPath("/sms/v2/std/");
		// 设置是否需要日志 1:需要日志;0:不需要日志
		globalParams.setNeedLog(1);
		// 设置全局参数
		ConfigManager.setGlobalParams(globalParams);

		// 设置用户账号信息
		setAccountInfo();                            //ok

		// 是否保持长连接
		boolean isKeepAlive = true;
		// 实例化短信处理对象
		SmsSendConn smsSendConn = new SmsSendConn(isKeepAlive);

		// 单条发送
		/*singleSend(smsSendConn, userid,"15551321657");  */                                  //  false

		// 相同内容群发
		/*batchSend(smsSendConn, userid);*/

		/*// 个性化群发
		multiSend(smsSendConn, userid);*/
/*
		// 查询余额
		getBalance(smsSendConn, userid);
		
		//查询剩余金额或条数接口
		getRemains(smsSendConn, userid);
*/
		// 实例化短信处理对象
		SmsSendConn smsSendConnMo = new SmsSendConn(isKeepAlive);
		// 每次请求想要获取的上行的最大条数。
		int retsizeMo = 100;
		// 实例化获取上行线程
		RecvMoThread recvMoThread = new RecvMoThread(smsSendConnMo, userid, retsizeMo);
		// 线程获取 启动获取上行的线程
		recvMoThread.start();                                              //  ok
		System.out.println("获取上行的线程启动成功！");

		// 实例化短信处理对象
		SmsSendConn smsSendConnRpt = new SmsSendConn(isKeepAlive);
		// 每次请求想要获取的状态报告的最大条数。
		int retsizeRpt = 100;
		// 实例化状态报告线程
		RecvRptThread recvRptThread = new RecvRptThread(smsSendConnRpt, userid,retsizeRpt);
		// 线程获取 启动获取状态报告的线程
		recvRptThread.start();                                               //  ok
		System.out.println("获取状态报告的线程启动成功！");

		// 移除用户账号(此处为移除用户账号功能示例，使用时请根据实际情况，有需要才调用此方法)
		/*removeAccount(userid);        */                                     // oko

	}

	/**
	 * @description 设置用户账号信息
	 */
	public static void setAccountInfo() {
		// 设置用户账号信息

		// 用户账号
		String userid = "E1025W";
		// 密码
		String password = "bB1AnS";
		
		// 发送优先级
		int priority = 1;
		// 主IP信息
		String ipAddress1 = "api01.monyun.cn:7901";

		// 备用IP1信息
		String ipAddress2 = "api01.monyun.cn:7901";
		// 备用IP2信息
		String ipAddress3 = null;
		// 备用IP3信息
		String ipAddress4 = null;
		// 返回值
		int result = -310007;
		try {
			// 设置用户账号信息
			result = ConfigManager.setAccountInfo(userid, password, priority,
					ipAddress1, ipAddress2, ipAddress3, ipAddress4);
			// 判断返回结果，0设置成功，否则失败
			if (result == 0) {
				System.out.println("设置用户账号信息成功！");
			} else {
				System.out.println("设置用户账号信息失败，错误码：" + result);
			}
		} catch (Exception e) {
			// 异常处理
			e.printStackTrace();
		}
	}

	/**
	 * 移除用户账号
	 * 
	 * @param userid
	 *            用户账号
	 */
	public static void removeAccount(String userid) {
		try {
			// 调用移除用户账号的方法
			int result = ConfigManager.removeAccount(userid);

			// 返回0，代表移除成功
			if (result == 0) {
				System.out.println("移除用户账号[" + userid + "]成功！");
			}
			// 返回非0，代表移除失败
			else {
				System.out.println("移除用户账号[" + userid + "]失败！错误码：" + result);
			}
		} catch (Exception e) {
			// 异常处理
			e.printStackTrace();
		}
	}

	/**
	 * 
	 * @description 单条发送
	 * @param smsSendConn
	 *            短信处理对象,在这个方法中调用发送短信功能
	 * @param userid
	 *            用户账号
	 */
	public static void singleSend(SmsSendConn smsSendConn, String userid,String mobile) {
		try {
			// 参数类
			Message message = new Message();
			// 设置用户账号 指定用户账号发送，需要填写用户账号，不指定用户账号发送，无需填写用户账号
			message.setUserid(userid);
			// 设置手机号码 此处只能设置一个手机号码
			message.setMobile(mobile);
			/*message.setMobile("15551321657");*/
			// 设置内容
			message.setContent("尊敬的用户您好，我们已收到您的报名申请，并核准通过，请您准时前来签到，感谢您的参与。");
			// 设置扩展号
			message.setExno("11");
			// 用户自定义流水编号
			message.setCustid("20160929194950100001");
			// 自定义扩展数据
			message.setExdata("abcdef");
			// 业务类型
			message.setSvrtype("SMS001");
			// 返回的流水号
			StringBuffer returnValue = new StringBuffer();
			// 返回值
			int result = -310099;
			// 发送短信
			result = smsSendConn.singleSend(message, returnValue);
			// result为0:成功
			if (result == 0) {
				System.out.println("单条发送提交成功！");
				System.out.println(returnValue.toString());
			}
			// result为非0：失败
			else {
				System.out.println("单条发送提交失败,错误码：" + result);
			}
		} catch (Exception e) {
			// 异常处理
			e.printStackTrace();
		}
	}
	/**
	 * 
	 * @description 相同内容群发
	 * @param smsSendConn
	 *            短信处理对象,在这个方法中调用发送短信功能
	 * @param userid
	 *            用户账号
	 */
	public static void batchSend(SmsSendConn smsSendConn, String userid) {
		try {
			// 参数类
			Message message = new Message();
			// 设置用户账号 指定用户账号发送，需要填写用户账号，不指定用户账号发送，无需填写用户账号
			message.setUserid(userid);
			// 设置手机号码
			message.setMobile("15551321657,15155887275");
			// 设置内容
			message.setContent("您的梦网云通讯会员即将到期，请您及时续费，点此续费。");
			// 设置扩展号
			message.setExno("11");
			// 用户自定义流水编号
			message.setCustid("20160929194950100001");
			// 自定义扩展数据
			message.setExdata("abcdef");
			// 业务类型
			message.setSvrtype("SMS001");

			// 返回的流水号
			StringBuffer returnValue = new StringBuffer();
			// 返回值
			int result = -310099;
			// 发送短信
			result = smsSendConn.batchSend(message, returnValue);
			// result为0:成功
			if (result == 0) {
				System.out.println("相同内容群发提交成功！");

				System.out.println(returnValue);
			}
			// result为非0：失败
			else {
				System.out.println("相同内容群发提交失败,错误码：" + result);
			}
		} catch (Exception e) {
			// 异常处理
			e.printStackTrace();
		}
	}

	/**
	 * 
	 * @description 个性化群发
	 * @param smsSendConn
	 *            短信处理对象,在这个方法中调用发送短信功能
	 * @param userid
	 *            用户账号
	 */
	public static void multiSend(SmsSendConn smsSendConn, String userid) {
		try {
			// List集合
			List<MultiMt> multixMts = new ArrayList<MultiMt>();
			// 第一条 短信对象
			MultiMt multixMt1 = new MultiMt();
			// 手机号
			multixMt1.setMobile("15155887275");
			// 短信内容
			multixMt1.setContent("测试短信1");
			// 设置扩展号
			multixMt1.setExno("11");
			// 用户自定义流水编号
			multixMt1.setCustid("20160929194950100001");
			// 自定义扩展数据
			multixMt1.setExdata("abcdef");
			// 业务类型
			multixMt1.setSvrtype("SMS001");
			// 添加到集合中去
			multixMts.add(multixMt1);

			// 第二条 短信对象
			MultiMt multixMt2 = new MultiMt();
			// 手机号
			multixMt2.setMobile("139XXXXXXXX");
			// 短信内容
			multixMt2.setContent("测试短信2");
			// 设置扩展号
			multixMt2.setExno("11");
			// 用户自定义流水编号
			multixMt2.setCustid("20160929194950100001");
			// 自定义扩展数据
			multixMt2.setExdata("abcdef");
			// 业务类型
			multixMt2.setSvrtype("SMS002");
			// 添加到集合中去
			multixMts.add(multixMt2);

			// 返回的流水号
			StringBuffer returnValue = new StringBuffer();
			// 返回值
			int result = -310099;

			//设置用户账号 指定用户账号发送，需要填写用户账号，不指定用户账号发送，无需填写用户账号
			// 发送短信
			result = smsSendConn.multiSend(userid, 0L, multixMts, returnValue);
			// result为0:成功
			if (result == 0) {
				System.out.println("个性化群发提交成功！");
				System.out.println(returnValue.toString());
			}
			// result为非0：失败
			else {
				System.out.println("个性化群发提交失败,错误码：" + result);
			}
		} catch (Exception e) {
			// 异常处理
			e.printStackTrace();
		}

	}

	/**
	 * 
	 * @description 查询余额
	 * @param smsSendConn
	 *            短信处理对象,在这个方法中调用查询余额功能
	 * @param userid
	 *            用户账号
	 */
	public static void getBalance(SmsSendConn smsSendConn, String userid) {
		// 返回值
		int result = -310099;
		try {
			// 调用查询余额的方法查询余额
			result = smsSendConn.getBalance(userid);
			// 返回值大于等于0，则查询成功， 否则失败
			if (result >= 0) {
				System.out.println("查询余额成功，余额为：" + result);
			} else {
				System.out.println("查询余额失败，错误码为：" + result);
			}
		} catch (Exception e) {
			// 异常处理
			e.printStackTrace();
		}

	}
	
	/**
	 * 查询剩余金额或条数接口
	 */
	public static void getRemains(SmsSendConn smsSendConn,String userid)
	{
		try
		{
			// 查询余额接口。
			Remains remains = smsSendConn.getRemains(userid);

			//remains不为空
			if(remains!=null)
			{
				//查询成功
				if(remains.getResult()==0)
				{
					//计费类型为0，条数计费
					if(remains.getChargetype()==0)
					{
						System.out.println("查询成功,剩余条数为：" + remains.getBalance());
					}else if(remains.getChargetype()==1)
					{
						//计费类型为1，金额计费
						System.out.println("查询成功,剩余金额为：" + remains.getMoney());
					}else
					{
						System.out.println("未知的计费类型,计费类型:"+remains.getChargetype());
					}
				}
				else
				{
					//查询失败
					System.out.println("查询失败,错误码为：" + remains.getResult());
				}
			}else
			{
				System.out.println("查询失败。");
			}

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

}