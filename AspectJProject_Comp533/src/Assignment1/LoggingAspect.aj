package Assignment1;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public aspect LoggingAspect {
	@After("execution(*.new(String)) || execution(*.new(int, Customer))")
	public void LoggingAccountCreationAdvice(JoinPoint joinPoint) {
		Logger.log("Created object " + joinPoint.getThis());
	}
	
	@Before("execution(public void *(int))")
	public void LoggingDepositAdvice(JoinPoint joinPoint) {
        Logger.log(joinPoint.getSignature().getName() + " called on object " + joinPoint.getThis() + " with parameter " + joinPoint.getArgs()[0]);
	}
}
