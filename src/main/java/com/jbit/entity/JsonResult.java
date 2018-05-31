package com.jbit.entity;

public class JsonResult {
	
private boolean success=false;
private String message;

@Override
public String toString() {
	return "JsonResult [success=" + success + ", message=" + message + "]";
}
public JsonResult() {
	super();
}
public JsonResult(String message) {
	super();
	this.message = message;
}
public JsonResult(boolean success, String message) {
	super();
	this.success = success;
	this.message = message;
}
public boolean isSuccess() {
	return success;
}
public void setSuccess(boolean success) {
	this.success = success;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}

}
