package Assignment1;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public aspect LoggingAspect {
	@Pointcut("@annotation(ObjectConstruction) && execution(*.new(..))")
	public void constructorPointCutDefinition() {
	}
	
	@After("constructorPointCutDefinition()")
	public void LoggingAccountCreationAdvice(JoinPoint joinPoint) {
		if(joinPoint.getTarget() != null) {
			Logger.log("Created object " + joinPoint.getTarget());
		}
	}
	
	@Pointcut("@annotation(MethodOperation) && execution(* *(..))")
	public void operationPointcut() {
		
	}
	
	@Before("operationPointcut()")
	public void LoggingOperationAdvice(JoinPoint joinPoint) {
		if(joinPoint.getTarget() !=null && joinPoint.getArgs() != null) {
			Logger.log(joinPoint.getSignature().getName() + " called on object " + joinPoint.getTarget() + " with parameter " + joinPoint.getArgs()[0]);
		}
	}
}
