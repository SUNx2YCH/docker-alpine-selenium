def test_node_firefox_esr(firefox):
    """
    :type firefox: selenium.webdriver.Remote
    """
    firefox.get('http://httpbin.org/user-agent')
    assert 'Firefox' in firefox.find_element_by_tag_name('body').text
