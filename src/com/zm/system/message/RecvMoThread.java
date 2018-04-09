package com.zm.system.message;

import java.util.ArrayList;
import java.util.List;

import com.montnets.mwgate.common.MO;
import com.montnets.mwgate.smsutil.SmsSendConn;

/**
 * 获取上行短信的线程
 */
public class RecvMoThread extends Thread {

	// 短信处理对象,在这个方法中调用获取上行功能
	private SmsSendConn smsSendConn = null;
	// 用户账号
	private String userid = null;
	// 每次请求想要获取上行的最大条数
	private int retsize = 0;

	/**
	 * 构造函数
	 * 
	 * @param smsSendConn
	 *            短信处理对象
	 * @param userid
	 *            用户账号
	 */
	public RecvMoThread(SmsSendConn smsSendConn, String userid, int retsize) {
		// 短信处理对象
		this.smsSendConn = smsSendConn;
		// 用户账号
		this.userid = userid;
		// 每次请求想要获取上行的最大条数
		this.retsize = retsize;
	}

	/**
	 * 获取上行短信线程的方法
	 */
	public void run() {
		// 上行集合 本集合临时存储上行，需要将收到的上行保存在一个队列中，由另外一个线程去处理。
		List<MO> mos = new ArrayList<MO>();
		// 返回值
		int result = -310099;
		//上行对象声明
		MO mo = null;
		// 循环调用获取上行的方法
		while (true) {
			try {
				// 初始化返回值
				result = -310099;
				// 清空上行集合中的对象
				mos.clear();
				// 调用获取上行接口
				result = smsSendConn.getMo(userid, retsize, mos);
				// 如果获取上行成功，并且有上行
				if (result == 0 && mos != null && mos.size() > 0) {
					// 有上行
					// 添加到上行队列
					// add mo queue
					// 这里不要做复杂的耗时的处理，将收到的上行保存在一个队列中，由另外一个线程去处理。

					// 代码示例是将上行信息打印出来
					System.out.println("获取上行成功！获取到的上行有" + mos.size() + "条记录。");
					for (int i = 0; i < mos.size(); i++) {
						mo = mos.get(i);
						System.out.println("上行记录:" + "msgid:" + mo.getMsgid()
								+ ",mobile:" + mo.getMobile() + ",spno:"
								+ mo.getSpno() + ",exno:" + mo.getExno()
								+ ",rtime:" + mo.getRtime() + ",content:"
								+ mo.getContent());
					}

					// 继续循环
					continue;
				} else {
					// 如果获取上行失败，则将错误码打印
					if (result != 0) {
						System.out.println("获取上行失败，错误码为:" + result);
					}

					// 没有上行，延时5秒以上
					try {
						Thread.sleep(5000L);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				// 循环出现异常，暂停5秒
				try {
					Thread.sleep(5000L);
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	}

}
