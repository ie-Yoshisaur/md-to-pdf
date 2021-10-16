# Setup
- Start docker before executing the run.sh script.

# Usage
- Place a md file in the markdown directory.
- Execute `$ bash run.sh <name-of-md-file>`.
  - \<name-of-md-file\> is the name of the md file without the ".md" extention.
- A PDF file will be generated in the pdf directory.
# Diretory Structure
```
.
├── Dockerfile
├── docker-compose.yml
├── images
│   └── sample.png
├── markdown
│   └── sample.md
├── pdf
│   └── sample.pdf
└── run.sh
```
