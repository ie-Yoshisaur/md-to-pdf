mdfilename=$1
filename=`echo ${mdfilename} | sed -e "s/^.*\///g" | sed -e "s/\.md$//g"`
docker-compose up -d
docker exec -it md-to-pdf pandoc -H tex/preamble.tex markdown/$filename.md -f markdown -o latex/$filename.tex -V documentclass=ltjarticle -V classoption=a4j -V geometry:margin=1in --listings --pdf-engine=lualatex --metadata=tables:true
docker exec -it md-to-pdf pandoc -H tex/preamble.tex markdown/$filename.md -f markdown -o pdf/$filename.pdf -V documentclass=ltjarticle -V classoption=a4j -V geometry:margin=1in --listings --pdf-engine=lualatex --metadata=tables:true
docker container stop md-to-pdf && docker container rm md-to-pdf
open pdf/$filename.pdf
