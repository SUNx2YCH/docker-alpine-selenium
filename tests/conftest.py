import os
import time
from urllib2 import URLError

import pytest
from selenium.common.exceptions import WebDriverException
from selenium.webdriver import Remote
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities


DEFAULT_CONNECTION_TIMEOUT = 30
SELENIUM_GRID_URL = os.getenv('SELENIUM_GRID_URL', 'http://127.0.0.1:4444/wd/hub')
STANDALONE_FIREFOX_URL = os.getenv('STANDALONE_FIREFOX_URL', 'http://127.0.0.1:4445/wd/hub')


def delayed_remote_driver(command_executor, desired_capabilities, timeout=DEFAULT_CONNECTION_TIMEOUT):
    deadline = time.time() + timeout
    while time.time() < deadline:
        try:
            return Remote(command_executor=command_executor,
                          desired_capabilities=desired_capabilities)
        except (URLError, WebDriverException) as e:
            pass
        time.sleep(1)
    raise RuntimeError('Failed to connect to {0}'.format(command_executor))


@pytest.yield_fixture
def node_firefox():
    driver = delayed_remote_driver(SELENIUM_GRID_URL, DesiredCapabilities.FIREFOX)
    yield driver
    driver.quit()


@pytest.yield_fixture
def standalone_firefox():
    driver = delayed_remote_driver(STANDALONE_FIREFOX_URL, DesiredCapabilities.FIREFOX)
    yield driver
    driver.quit()
