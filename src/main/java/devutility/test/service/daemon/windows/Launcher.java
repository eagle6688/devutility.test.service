package devutility.test.service.daemon.windows;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Launcher {
	private final static Logger logger = LoggerFactory.getLogger(Launcher.class);

	public static void start(String[] args) {
		int index = 0;

		while (true) {
			logger.trace(String.format("%d trace log output!", index));
			logger.debug(String.format("%d debug log output!", index));
			logger.info(String.format("%d info log output!", index));
			logger.warn(String.format("%d warn log output!", index));
			logger.error(String.format("%d error log output!", index));

			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			
			index++;
		}
	}

	public static void stop(String[] args) {
		System.exit(0);
	}
}