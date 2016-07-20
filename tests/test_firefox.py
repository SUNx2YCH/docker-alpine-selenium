import pytest


@pytest.fixture(params=['node_firefox', 'standalone_firefox'])
def firefox(request):
    return request.getfuncargvalue(request.param)


def test_firefox(firefox):
    """
    :type firefox: selenium.webdriver.Remote
    """
    firefox.get('http://httpbin.org/user-agent')
    assert 'Firefox' in firefox.find_element_by_tag_name('body').text
