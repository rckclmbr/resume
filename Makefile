
main: resume.md
	markdown resume.md > resume.tmp.html
	cat template/header.html resume.tmp.html template/footer.html > resume.html
	cp resume.html resume.tmp.html
	sed -i -e 's/"normal"/"pdf"/g' resume.tmp.html
	wkpdf --source resume.tmp.html --output resume.pdf -m 10 50
	rm resume.tmp.html
