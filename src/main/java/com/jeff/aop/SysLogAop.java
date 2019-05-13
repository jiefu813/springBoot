package com.jeff.aop;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Aspect
@Component
public class SysLogAop {

	private Logger logger = Logger.getLogger(this.getClass());

	@Pointcut("execution(* com.jeff.controller.*.*(..))")
	public void pointCut() {

	}

	@Before("pointCut()")
	public void doBefore(JoinPoint joinPoint) {
		System.out.println("前置通知");
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		String reqUrl = request.getRequestURI().toString();
		String method = request.getMethod();
		String addr = request.getRemoteAddr();
		logger.info("URL:" + reqUrl);
		logger.info("METHOD:" + method);
		logger.info("ADDR:" + addr);
		Enumeration<String> parameterNames = request.getParameterNames();
		while (parameterNames.hasMoreElements()) {
			String key = parameterNames.nextElement();
			String value = request.getParameter(key);
			logger.info("KEY:" + key + ",VALUE:" + value);
		}
	}

	@After("pointCut()")
	public void doAfter(JoinPoint joinPoint) {
		System.out.println("后置通知");
	}

}
