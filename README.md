# Basic LaTeX template
*Inspired by the style of the book [The Go Programming
Language](https://www.gopl.io/)*

## Usage
Github templates doesn't support Git LFS out of the box, here's what you have to
do to download the missing files:
```sh
git lfs fetch --all https://github.com/nymann/basic-latext-template master
git lfs push --all origin master
```
This will fetch all the LFS files from the template repository and populate
`.git/lfs/objects`, and then upload all those files to your repository.

## Used packages
- fancyhdr
- fontspec
- geometry
- graphicx
- lipsum (only for generating filler text)
- minted
- titlesec

## Preview
![record](https://user-images.githubusercontent.com/7005867/117787126-72e50a80-b246-11eb-940a-776212d3f053.gif)


## Workflows

I have a terminal window open with `ls report.tex chapters/*.tex | entr make`
and `report.pdf` open in Zathura. This way when I make any changes to any of the
TeX files the report is automatically recompiled thanks to `entr` and Zathura
automatically refreshes the document.

##### GNU Make
| Command      | Description                               |
| ---          | ---                                       |
| `make`       | Compiles the `report.tex` file.           |
| `make clean` | Cleans the directory for any build files. |


##### Docker
A simple `Dockerfile` is provided if you are in an environment with Docker but
without TexLive. This is how you use it:

```sh
docker build -t my_report -f Dockerfile .
docker run --detach=true --tty=true --name my_report_container my_report 
docker cp my_report_container:/doc/report.pdf .
```
