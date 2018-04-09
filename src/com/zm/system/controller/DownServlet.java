package com.zm.system.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*import sun.misc.BASE64Encoder;*/

public class DownServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name=null;
		name=request.getSession().getServletContext().getRealPath("/");
		System.out.println(name+"=======");
		
		
		
		// 1.得到要下载 的文件名称
		String filename = request.getParameter("filename");
		if(!filename.equals("众民后台管理系统使用说明.docx")){
			filename = new String(filename.getBytes("iso8859-1"), "utf-8");// 解决中文乱码
		}

		/*filename = new String(filename.getBytes("iso8859-1"), "utf-8");// 解决中文乱码
		
		// 2.在d:/upload目录下查找这个文件是否存在
		/*File file = new File("d:/upload/" + filename);*/
		File file = new File(name + filename);
		if (file.exists()) {
			// /文件存在，完成下载

			// 下载注意事项1--设置下载文件的mimeType
			String mimeType = this.getServletContext().getMimeType(filename);
			response.setContentType(mimeType);

			String agent = request.getHeader("user-agent");
			if (agent.contains("MSIE")) {
				// IE浏览器
				filename = URLEncoder.encode(filename, "utf-8");

			} /*else if (agent.contains("Firefox")) {
				// 火狐浏览器
				BASE64Encoder base64Encoder = new BASE64Encoder();
				filename = "=?utf-8?B?"
						+ base64Encoder.encode(filename.getBytes("utf-8"))
						+ "?=";
			} */else {
				// 其它浏览器
				filename = URLEncoder.encode(filename, "utf-8");
			}

			// 下载注意事项2--永远是下载
			response.setHeader("content-disposition", "attachment;filename="
					+ filename);

			FileInputStream fis = new FileInputStream(file); // 读取要下载文件的内容
			OutputStream os = response.getOutputStream(); // 将要下载的文件内容通过输出流写回到浏览器端.
			int len = -1;
			byte[] b = new byte[1024 * 100];

			while ((len = fis.read(b)) != -1) {
				os.write(b, 0, len);
				os.flush();
			}
			os.close();
			fis.close();

		} else {
			throw new RuntimeException("下载资源不存在.");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
