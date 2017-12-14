package devutility.test.service.service.log.log4j;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import devutility.internal.test.BaseTest;

public class Log4jService extends BaseTest {
	@Override
	public void run() {
		Logger logger = LoggerFactory.getLogger(Log4jService.class);
		logger.trace("trace log output!");
		logger.debug("debug log output!");
		logger.info("info log output!");
		logger.warn("warn log output!");
		logger.error("error log output!");
	}
}