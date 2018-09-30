package Task2;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public aspect LoggingAspect {
	@After("execution(Account.new(*,*)) || execution(Customer.new(String))")
	public void LoggingAccountCreationAdvice(JoinPoint joinPoint) {
		Logger.log("Created object " + joinPoint.getThis());
	}
	
	@Before("execution(public void deposit(int))")
	public void LoggingDepositAdvice(JoinPoint joinPoint) {
        Logger.log("deposit called on object " + joinPoint.getThis() + " with parameter " + joinPoint.getArgs()[0]);
	}
	
	@Before("execution(public void withdraw(int))")
	public void LoggingWithdrawAdvice(JoinPoint joinPoint) {
        Logger.log("withdraw called on object " + joinPoint.getThis() + " with parameter " + joinPoint.getArgs()[0]);
	}
}
