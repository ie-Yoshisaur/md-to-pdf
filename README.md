## Setup
- Start docker before executing the run.sh script.

## Usage
- Place a md file in the markdown directory.
- Execute `$ bash run.sh <file name>.md`.
- A PDF file will be generated in the pdf directory.

## Diretory Structure
```
.
├── Dockerfile
├── README.md
├── docker-compose.yml
├── images
│   └── sample.png
├── markdown
│   └── sample.md
├── pdf
│   └── sample.pdf
├── run.sh
└── tex
    └── preamble.tex
```

## Recommended LaTeX Math Equation Editing Tool
- [https://latexeditor.lagrida.com/](https://latexeditor.lagrida.com/)
