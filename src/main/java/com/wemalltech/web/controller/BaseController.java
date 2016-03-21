package com.wemalltech.web.controller;

import java.beans.PropertyEditorSupport;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.StringUtils;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.wemalltech.util.TokenProcessor;

public class BaseController {
	/**
	 * 日期绑定
	 * 
	 * @param request
	 * @param binder
	 * @throws Exception
	 */
	@InitBinder
	protected void initBinder(HttpServletRequest request,
			ServletRequestDataBinder binder) throws Exception {
		// 对于需要转换为Date类型的属性，使用DateEditor进行处理
		binder.registerCustomEditor(Date.class, new DateEditor());
	}

	
	public static final String REPEAT_SUBMIT_PAGE = "repeat_submit";	//重复提交跳转页面
	
	protected void saveToken(HttpServletRequest request, Map<String, Object> model) {
		TokenProcessor.getInstance().saveToken(request);
	}
	
	protected boolean isTokenValid(HttpServletRequest request) {
		return TokenProcessor.getInstance().isTokenValid(request);
	}
	
	protected boolean isTokenValid(HttpServletRequest request, boolean reset) {
		return TokenProcessor.getInstance().isTokenValid(request, reset);
	}
	
	protected void resetToken(HttpServletRequest request) {
		TokenProcessor.getInstance().resetToken(request);
	}
}

class DateEditor extends PropertyEditorSupport {

	private static final DateFormat DATEFORMAT = new SimpleDateFormat(
			"yyyy-MM-dd");
	private static final DateFormat TIMEFORMAT = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss");

	private DateFormat dateFormat;
	private boolean allowEmpty = true;

	public DateEditor() {
	}

	public DateEditor(DateFormat dateFormat) {
		this.dateFormat = dateFormat;
	}

	public DateEditor(DateFormat dateFormat, boolean allowEmpty) {
		this.dateFormat = dateFormat;
		this.allowEmpty = allowEmpty;
	}

	/**
	 * Parse the Date from the given text, using the specified DateFormat.
	 */
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		if (this.allowEmpty && !StringUtils.hasText(text)) {
			// Treat empty String as null value.
			setValue(null);
		} else {
			try {
				if (this.dateFormat != null)
					setValue(this.dateFormat.parse(text));
				else {
					if (text.contains(":"))
						setValue(TIMEFORMAT.parse(text));
					else
						setValue(DATEFORMAT.parse(text));
				}
			} catch (ParseException ex) {
				throw new IllegalArgumentException("Could not parse date: "
						+ ex.getMessage(), ex);
			}
		}
	}

	/**
	 * Format the Date as String, using the specified DateFormat.
	 */
	@Override
	public String getAsText() {
		Date value = (Date) getValue();
		DateFormat dateFormat = this.dateFormat;
		if (dateFormat == null)
			dateFormat = TIMEFORMAT;
		return (value != null ? dateFormat.format(value) : "");
	}
}
