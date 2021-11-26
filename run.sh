name=$1
docker-compose up -d
docker exec -it md-to-pdf pandoc -H tex/preamble.tex markdown/$name.md -f markdown -o pdf/$name.pdf -V documentclass=ltjarticle -V classoption=a4j -V geometry:margin=1in --listings --pdf-engine=lualatex --metadata=tables:true 
docker container stop md-to-pdf && docker container rm md-to-pdf
open pdf/$name.pdf
