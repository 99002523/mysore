
import re
import itertools
from bs4 import BeautifulSoup


def xpath_soup(element):
    # type: (typing.Union[bs4.element.Tag, bs4.element.NavigableString]) -> str
    components = []
    child = element if element.name else element.parent
    for parent in child.parents:  # type: bs4.element.Tag
        siblings = parent.find_all(child.name, recursive=False)
        components.append(
            child.name if 1 == len(siblings) else '%s[%d]' % (
                child.name,
                next(i for i, s in enumerate(siblings, 1) if s is child)
                )
            )
        child = parent
    components.reverse()
    return '/%s' % '/'.join(components)


if __name__ == '__main__':
    import doctest
    doctest.testmod(verbose=True)
    
html = '<html><body><div><h1>Hello World</h1><href=https://gist.github.com/ergoithz/6cf043e3fdedd1b94fcf>hi prasanna,</heref></div></body></html>'
soup = BeautifulSoup(html, 'lxml')
elem = soup.find(string=re.compile('hi prasanna'))
print(xpath_soup(elem))
