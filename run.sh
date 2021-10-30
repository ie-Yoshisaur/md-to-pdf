name=$1
docker-compose up -d
docker exec -it md-to-pdf_app_1 pandoc -H tex/preamble.tex markdown/$name.md -f markdown -o pdf/$name.pdf -V documentclass=ltjarticle -V classoption=a4j -V geometry:margin=1in --listings --pdf-engine=lualatex --metadata=tables:true 
docker container stop md-to-pdf_app_1 && docker container rm md-to-pdf_app_1
open pdf/$1.pdf
