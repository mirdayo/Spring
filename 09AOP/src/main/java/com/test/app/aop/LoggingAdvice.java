package com.test.app.aop;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAdvice {
	
	//Pointcut 표현식 : "execution(* com.test.app.domain.service.SimpleService.get1())"
	//execution() : 메서드 실행
	//* : 모든 리턴 타입
	//com.test.app.domain.service.SimpleService.get1() : 실행할 함수위치
	
	@Before("execution(* com.test.app.domain.service.SimpleService.get1())")
	public void logBefore(JoinPoint joinPoint) { 
		System.out.println("BEFORE...호출함수명" + joinPoint.getSignature().getName());
	}
	
	@After("execution(* com.test.app.domain.service.SimpleService.get2())")
	public void logAfter(JoinPoint joinPoint) {
		System.out.println("AFTER..." + joinPoint.getTarget());
	}
	
	@Around("execution(* com.test.app.domain.service.SimpleService.get3())")
	public void logAround(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("[AOP] START : " + pjp.getSignature().getName());
		long start = System.currentTimeMillis();
		
		Object result = pjp.proceed();  //대상 타겟 함수 (get3())을 실행
		
		System.out.println("[AOP] RESULT : " + result);
		long end = System.currentTimeMillis();
		System.out.println("[AOP] TIME : " + (end-start)+"ms");
		System.out.println("[AOP] END : ");
	}
	
	@Around("execution(* com.test.app.domain.service.*.*(..))")
	public Object logAroundAll(ProceedingJoinPoint pjp) throws Throwable {
		long start = System.currentTimeMillis();
		System.out.println("[AOP] START : " + pjp.getSignature().getName());
		Object result = pjp.proceed();  //대상 타겟 함수 (get3())을 실행
		
		System.out.println("[AOP] RESULT : " + result);
		long end = System.currentTimeMillis();
		System.out.println("[AOP] TIME : " + (end-start)+"ms");
		System.out.println("[AOP] END : ");
		
		return result;
	}
}
