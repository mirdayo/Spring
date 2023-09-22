//package com.movie.aop;
//
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.ProceedingJoinPoint;
//import org.aspectj.lang.annotation.After;
//import org.aspectj.lang.annotation.Around;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Before;
//import org.springframework.stereotype.Component;
//
//@Aspect
//@Component
//public class LoggingAdvice {
//	
//	
//	@Before("execution(* com.movie.domain.service.SimpleService.get1())")
//	public void logBefore(JoinPoint joinPoint) {
//		System.out.println("BEFORE..."+joinPoint.getSignature().getName());
//	}
//	@After("execution(* com.movie.domain.service.SimpleService.get2())")
//	public void logAfter(JoinPoint joinPoint) {
//		System.out.println("AFTER..."+joinPoint.getTarget());	
//	}
//	@Around("execution(* com.movie.domain.service.SimpleService.get3())")
//	public void logAround(ProceedingJoinPoint pjp) throws Throwable {
//		long start = System.currentTimeMillis();
//		System.out.println("[AOP] START : "+pjp.getSignature().getName());
//		Object result =  pjp.proceed();	
//		System.out.println("[AOP] RESULT : "+result);
//		long end = System.currentTimeMillis();
//		System.out.println("[AOP] TIME : "+(end-start)+"ms");
//		System.out.println("[AOP] END : ");
//	}
//	
//	@Around("execution(* com.movie.domain.service.*.*(..))")
//	public Object logAroundAll(ProceedingJoinPoint pjp) throws Throwable {
//		long start = System.currentTimeMillis();
//		System.out.println("[AOP] START : "+pjp.getSignature().getName());
//		Object result =  pjp.proceed();	
//		
//		System.out.println("[AOP] RESULT : "+result);
//		long end = System.currentTimeMillis();
//		System.out.println("[AOP] TIME : "+(end-start)+"ms");
//		System.out.println("[AOP] END : ");
//		
//		return result;
//	}
//
//}
