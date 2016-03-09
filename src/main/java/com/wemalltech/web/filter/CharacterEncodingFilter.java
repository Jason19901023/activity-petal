package com.wemalltech.web.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

/**
 * 这个filter能够解决get和post方式的中文乱码问题
 * 不使用spring提供的CharacterEncodingFilter，因为spring提供的CharacterEncodingFilter只能解决post中文乱码，get乱码需要修改服务器配置
 * @author zhangqiangsheng 2015年4月14日
 */
public class CharacterEncodingFilter implements Filter {

	private String encoding;

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;

		// 解决post中文乱码问题
		request.setCharacterEncoding(this.encoding);
		response.setCharacterEncoding(this.encoding);

		// 解决get中文乱码问题
		if(request.getMethod().equalsIgnoreCase("get")) {
			MyRequest myrequest = new MyRequest(request); // 自己定义一个request
			chain.doFilter(myrequest, response); // servlet
		} else {
			chain.doFilter(request, response); // servlet
		}
												// myrequest.getParameter("username")
	}

	public String getEncoding() {
		return encoding;
	}

	public void setEncoding(String encoding) {
		this.encoding = encoding;
	}

	// 继承HttpServletRequestWrapper ：//sun公司提供的包装类
	// 自定义request,解决get中文乱码问题
	class MyRequest extends HttpServletRequestWrapper { // request
		private HttpServletRequest request;

		public MyRequest(HttpServletRequest request) {
			super(request);
			this.request = request;
		}

		// 重构方法
		public String getParameter(String name) {
			String value = this.request.getParameter(name); // 获取用户提交的数据 get 乱码
			if (value == null) {
				return null;
			}
			// 判断是否是get请求方式
			if (!request.getMethod().equals("GET")) {
				return value;
			}
			try {
				value = new String(value.getBytes("iso8859-1"),
						this.request.getCharacterEncoding());
			} catch (UnsupportedEncodingException e) {
				throw new RuntimeException(e);
			}
			return value;
		}

		// 重构方法
		@Override
		public Map getParameterMap() {
			try {
				if (!this.request.getMethod().equals("GET")) {// 判断是否是get请求方式
					return this.request.getParameterMap();
				}

				Map<String, String[]> map = this.request.getParameterMap(); // 接受客户端的数据
				Map<String, String[]> newmap = new HashMap();
				for (Map.Entry<String, String[]> entry : map.entrySet()) {
					String name = entry.getKey();
					String values[] = entry.getValue();

					if (values == null) {
						newmap.put(name, new String[] {});
						continue;
					}
					String newvalues[] = new String[values.length];
					for (int i = 0; i < values.length; i++) {
						String value = values[i];
						value = new String(value.getBytes("iso8859-1"),
								this.request.getCharacterEncoding());
						newvalues[i] = value; // 解决乱码后封装到Map中
					}

					newmap.put(name, newvalues);
				}

				return newmap;
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}

		@Override
		public String[] getParameterValues(String name) {
			String[] values = super.getParameterValues(name);
			if (values != null && values.length > 0) {
				for (int i = 0; i < values.length; i++) {
					String value = values[i];
					try {
						values[i] = new String(value.getBytes("iso8859-1"),
								this.request.getCharacterEncoding());
					} catch (UnsupportedEncodingException e) {
						e.printStackTrace();
					}
				}
			}
			return values;
		}
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.encoding = filterConfig.getInitParameter("encoding") != null ? filterConfig
				.getInitParameter("encoding") : "UTF-8";
	}

	public void destroy() {
		// TODO Auto-generated method stub

	}
}
