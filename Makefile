figures = \

parts = \
		parts/util.tex \
		parts/metadata.tex


halfaker2018literacy.pdf: halfaker2018literacy.tex \
		$(figures) $(parts) refs.bib sigchi-ext.cls sigchi.cls
	rubber --pdf halfaker2018literacy.tex

anon2018literacy.pdf: anon2018literacy.tex \
		$(figures) $(parts) refs.bib sigchi-ext.cls sigchi.cls
	rubber --pdf anon2018literacy.tex

halfaker2018literacy.with_font.pdf: halfaker2018literacy.pdf
	ps2pdf13 -dPDFSETTINGS=/prepress halfaker2018literacy.pdf halfaker2018literacy.with_fonts.pdf
