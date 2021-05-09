# Basic LaTeX template

## Workflows

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
