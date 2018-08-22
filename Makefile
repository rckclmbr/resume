
main: resume.md
	markdown resume.md > resume.tmp.html
	cat template/header.html resume.tmp.html template/footer.html > resume.html
	cp resume.html resume.tmp.html
	sed -i -e 's/"normal"/"pdf"/g' resume.tmp.html
#	wkpdf --source resume.tmp.html --output resume.pdf -m 10 50
	xvfb-run -a -s "-screen 0 640x480x16" wkhtmltopdf resume.tmp.html resume.pdf
	rm resume.tmp.html*
