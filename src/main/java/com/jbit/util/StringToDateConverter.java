package com.jbit.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * 全局变量配置一次解决所有的时间转换 
 */
public class StringToDateConverter implements Converter<String, Date> {
	private String[] pattern;

	public StringToDateConverter(String[] pattern) {
		this.pattern = pattern;
	}

	public Date convert(String date) {
		for (String  ps: pattern) {
			SimpleDateFormat format=new SimpleDateFormat(ps);
			try {
				return format.parse(date);
			} catch (ParseException e) {
			}
		}
		return null;
	}

}
