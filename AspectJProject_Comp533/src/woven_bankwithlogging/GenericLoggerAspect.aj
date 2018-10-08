package woven_bankwithlogging;

public abstract aspect GenericLoggerAspect{

    abstract pointcut logConstructors();

    abstract pointcut logOperations();
	
    after() : logConstructors() {
        String stringToLog = "Created object " + thisJoinPoint.getThis();
        Logger.log(stringToLog);
    }

    before(): logOperations(){
        String stringToLog = thisJoinPoint.getSignature().getName() + " called on object " + thisJoinPoint.getTarget() + " with parameter " + thisJoinPoint.getArgs()[0];
        Logger.log(stringToLog);
    }
}
