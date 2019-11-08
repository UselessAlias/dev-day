from urllib import request
from bs4 import BeautifulSoup as bs
import os

user_agent = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36"}
url = "https://www.reddit.com"

req = request.Request(url, headers=user_agent)
with request.urlopen(req) as r:
    data = bs(r, 'html.parser')

title = data.title.string

module_path = os.path.dirname(__file__)


with open(os.path.join(module_path, 'data', 'scrappedtitles.txt'), 'a') as f:
    f.write(title)
