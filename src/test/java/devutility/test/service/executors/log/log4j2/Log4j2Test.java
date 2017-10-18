package devutility.test.service.executors.log.log4j2;

import devutility.internal.test.ServiceExecutor;
import devutility.test.service.service.log.log4j2.Log4j2Service;

public class Log4j2Test {
	public static void main(String[] args) {
		ServiceExecutor.run(new Log4j2Service());
	}
}