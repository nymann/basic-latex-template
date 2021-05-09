### Basic LaTeX template

##### Using docker
A simple `Dockerfile` is provided if you are in an environment with docker but without TexLive. This is how you use it:

```sh
docker build -t my_report -f Dockerfile .
docker run --detach=true --tty=true --name my_report_container my_report 
docker cp my_report_container:/doc/report.pdf .
```
