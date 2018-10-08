package woven_bankwithlogging;

public aspect LoggerConfig  extends GenericLoggerAspect{
    pointcut logConstructors():
        within(Account || Customer) &&
        execution(public new(..));

    pointcut logOperations():
        target(Account) &&
        ( call(public void deposit(int)) ||
          call(public void withdraw(int)) );
}
