all:
	xelatex LIVRO.tex
latexmk:
	latexmk -xelatex -interaction=nonstopmode LIVRO.tex
clean:
	-rm *aux *log *tui *toc *.4ct *.4tc *.html *.css *.dvi *.epub *.lg *.ncx *.xref *.tmp *.idv *.opf *.png  LIVRO.pdf *.fdb_latexmk *.fls
git:
	git add .
	git commit -m "mudança pequena"
	git push


calibre:
	sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"
linuxli-bertine:
	sudo apt-get install fonts-linuxlibertine
fonts-chines:
	sudo apt-get install ttf-wqy-microhei
server-path-restore:
	PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
bashrc-make4ht:
	echo "export TEXMFHOME=${HOME}/texmf" >> ~/.bashrc
	echo "export PATH=${HOME}/texmf/tex/scripts/lua/make4ht-master:${HOME}/texmf/tex/scripts/lua/tex4ebook-master:${HOME}/texmf/tex/scripts/lua/epubcheck-master:${PATH}" >> ~/.bashrc
update-latexmk:
	wget http://users.phys.psu.edu/~collins/software/latexmk-jcc/latexmk-439.zip
	unzip latexmk-439.zip -d latexmk
	sudo mv ./latexmk/latexmk.pl /usr/bin/
	sudo mv /usr/bin/latexmk /usr/bin/latexmk.old
	sudo mv /usr/bin/latexmk.pl /usr/bin/latexmk 
	rm ./latexmk -r
	rm latexmk-439.zip
	latexmk -v
update-pandoc:
	# ubuntu package is too old, use haskell-platform
	sudo apt-get install haskell-platform
	sudo cabal update
	sudo cabal install pandoc
	sudo mv /usr/bin/pandoc /usr/bin/pandoc.bak
	# if you make it using deploy account, just sudo cp /home/deploy/.cabal/bin/pandoc /usr/bin/pandoc 
	sudo cp ~/.cabal/bin/pandoc /usr/bin/pandoc 
	sudo chmod +rx /usr/bin/pandoc #no need if you using deploy account
amazon-widbook:
	ssh ubuntu@184.73.101.57
fonts-link:
	ln -s ~/texmf/tex/fonts ~/.fonts
	fc-cache -f -v
