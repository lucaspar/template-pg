LATEX = latex
BIBTEX = bibtex
DVIPS = dvips
RM = rm -f
FILE = exemplo
PS2PDF = ps2pdfwr -sPAPERSIZE=a4 -dPDFSETTINGS=/printer -dCompatibilityLevel=1.3 -dMaxSubsetPct=100 -dSubsetFonts=true  -dEmbedAllFonts=true 

all:	
		$(LATEX) $(FILE)
		$(BIBTEX) $(FILE)
		$(LATEX) $(FILE)
		$(LATEX) $(FILE)
		$(DVIPS) $(FILE).dvi -o
		$(PS2PDF) $(FILE).ps $(FILE).pdf
		@echo ---------------------------------------------------
		@echo Ps: done.

clean:	
		$(RM) $(FILE).aux $(FILE).log $(FILE).out $(FILE).ps $(FILE).pdf $(FILE).toc $(FILE).dvi $(FILE).lof $(FILE).bbl $(FILE).lot $(FILE).blg *~ *backup
		@echo ---------------------------------------------------
		@echo Directory cleaned
