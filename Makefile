
main: resume.md
	markdown resume.md > resume.tmp.html
	cat template/header.html resume.tmp.html template/footer.html > resume.html
	wkhtmltopdf resume.html resume.pdf
	rm resume.tmp.html
