package devutility.test.service.daemon.windows;

import devutility.internal.test.ServiceExecutor;
import devutility.test.service.service.log.log4j.Log4jService;

public class Launcher {
	public static void start(String[] args) {
		ServiceExecutor.run(new Log4jService());
	}

	public static void stop(String[] args) {
		System.exit(0);
	}
}