import time
from urllib2 import URLError

import pytest
from selenium.common.exceptions import WebDriverException
from selenium.webdriver import Remote
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

SELENIUM_HUB_URL = 'http://hub:4444/wd/hub'
CONNECTION_TIMEOUT = 30


@pytest.yield_fixture
def firefox():
    driver = None

    deadline = time.time() + CONNECTION_TIMEOUT
    while time.time() < deadline:
        try:
            driver = Remote(command_executor=SELENIUM_HUB_URL,
                            desired_capabilities=DesiredCapabilities.FIREFOX)
            break
        except (URLError, WebDriverException) as e:
            pass
        time.sleep(1)

    if not driver:
        raise RuntimeError('Failed to connect to {0}'.format(SELENIUM_HUB_URL))

    yield driver
    driver.quit()
