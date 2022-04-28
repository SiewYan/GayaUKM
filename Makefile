VER=english

ifeq ($(VER),english)
  NAME=thesis
else
  NAME=tesis
endif

.PHONY = clean all $(NAME)

all: clean $(NAME)

$(NAME):
		cd ./theses/$(VER); \
		pdflatex $(NAME); \
		bibtex $(NAME); \
		pdflatex $(NAME); \
		pdflatex $(NAME); \
		mv $(NAME).pdf ../../$(NAME).pdf

clean:
		find . \( -name "*.toc" -o -name "*.fdb_latexmk" \
						         -o -name "*.pdfsync" \
                                                         -o -name "*.pdf" \
						         -o -name "*.log" \
						         -o -name "*.fls" \
						         -o -name "*.aux" \
						         -o -name "*.bbl" \
						         -o -name "*.blg" \
						         -o -name "*.glo" \
						         -o -name "*.ist" \
						         -o -name "*.lof" \
						         -o -name "*.lot" \
						         -o -name "*.out" \
						         -o -name "*.toc" \
                                                         -o -name "*.dvi" \
                                                         -o -name "*~" \
					\) -print0 | xargs -0 rm -f
