import sys
import requests
from bs4 import BeautifulSoup

# Set to the PURE page you'd like to get the bibtex entries from. Here's mine:
pure = "https://pure.royalholloway.ac.uk/portal/en/persons/nicholas-allen(f69c6bc8-318f-4578-961a-9a7d3cf07b21)/publications.html?publicationYearsFrom=2014&publicationYearsTo=2014&peerreview=true"

class BibTexEntry:

	def __init__(self, entry):
		self.entry = entry

	def withField(self, field):
		start =	self.entry.rstrip("}")
		self.entry = start + "  " + field + ",\n}"
		return self

	def withURL(self, url):
		return self.withField("url       = \"" + url + "\"")

	def withGroup(self, group):
		return self.withField("group     = \"" + group + "\"")

	def withCode(self):
		return self.withField("code      = {I-ISS-07}")

	def inProceedings(self):
		self.entry = self.entry.replace('@inbook{', '@inproceedings{')
		return self

	def process(self, url):
		return (
			self
			.withURL(url)
			.withGroup("SE")
			.withCode()
			.inProceedings()
			.entry
		)


def soupPage(url):
	response = requests.get(url)
	soup = BeautifulSoup(response.content, "html.parser")
	return soup

def titleLinks(researchOutput) :
	anchors = researchOutput.select("div.rendering_researchoutput h2.title a.link")
	links = list(map(lambda a: a['href'], anchors))
	return links

def exportPage(titleLink) :
	export = titleLink.replace('.html', '/export.html')
	return soupPage(export)

def bibtex(page) :
	bibdiv = page.select("div.rendering_bibtex")
	return bibdiv[0].text

def getBibs(paperListURL) :
	links = titleLinks(soupPage(paperListURL))
	for paperURL in links :
		bib = bibtex(exportPage(paperURL))
		print(BibTexEntry(bib).process(paperURL))

getBibs(pure)


# Copyright 2017 Arie van Deursen

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
