package devutility.test.service.executors.log.log4j;

import devutility.internal.test.ServiceExecutor;
import devutility.test.service.service.log.log4j.Log4jService;

public class Log4jTest {
	public static void main(String[] args) {
		ServiceExecutor.run(new Log4jService());
	}
}