package devutility.test.service.service.log.log4j2;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import devutility.internal.test.BaseService;

public class Log4j2Service extends BaseService {
	@Override
	public void run() {
		Logger logger = LogManager.getLogger(Log4j2Service.class.getName());
		logger.trace("Test trace!");
		logger.debug("Test debug!");
		logger.info("Test info!");
		logger.warn("Test warn!");
		logger.error("Test error!");
		logger.fatal("Test fatal!");
	}
}