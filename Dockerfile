FROM    base/archlinux:latest

RUN pacman -Syu --noconfirm &&\
    pacman -S --noconfirm {texlive-core,texlive-bin,texlive-bibtexextra,texlive-fontsextra,texlive-formatsextra,texlive-games,texlive-humanities,texlive-langchinese,texlive-langcyrillic,texlive-langextra,texlive-langgreek,texlive-langjapanese,texlive-langkorean,texlive-latexextra,texlive-music,texlive-pictures,texlive-pstricks,texlive-publishers,texlive-science} &&\
    pacman -S --noconfirm biber python ghostscript python python-pandas python-matplotlib ruby perl-tk psutils dialog ed poppler-data &&\
    pacman -Scc --noconfirm
    
CMD ["/bin/bash", "echo", ""Hello, I am Texlive on Archlinux!""]
