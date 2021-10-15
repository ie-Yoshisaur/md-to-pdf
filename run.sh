name=$1
docker-compose up -d
docker exec -it md-to-pdf_app_1 pandoc markdown/$name.md -f markdown-implicit_figures -o pdf/$name.pdf -V documentclass=ltjarticle -V classoption=a4j -V geometry:margin=1in --pdf-engine=lualatex
docker container stop md-to-pdf_app_1 && docker container rm md-to-pdf_app_1

