FROM pandoc/latex:2.14.1
RUN tlmgr update --self && \
    tlmgr install collection-basic collection-latex \
    collection-fontsrecommended collection-langjapanese \
    latexmk luatexbase ctablestack fontspec luaotfload \
    lualatex-math sourcesanspro sourcecodepro selnolig titling
WORKDIR /data
