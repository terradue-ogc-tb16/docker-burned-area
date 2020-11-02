# docker-burned-area

Dockerfile for the 

## Using this container

### Getting the help context

```console
docker run --rm -it terradue/nb-burned-area:latest burned-area --help
```

Will return:

```
usage: burned-area [-h] [--kernel KERNEL] [--output NB_TARGET] [--docker DOCKER] [--cwl] [--params] [--ndvi_threshold NDVI_THRESHOLD] [--ndwi_threshold NDWI_THRESHOLD] [--pre_event PRE_EVENT] [--post_event POST_EVENT] [--aoi AOI]

Sentinel-2 burned area Sentinel-2 burned area with NDVI/NDWI threshold

optional arguments:
  -h, --help            show this help message and exit
  --kernel KERNEL       kernel for notebook execution
  --output NB_TARGET    output notebook
  --docker DOCKER       Sets the docker image for the CWL DockerRequirement
  --cwl                 Prints the CWL script and exits
  --params              Prints the default parameters and exits
  --ndvi_threshold NDVI_THRESHOLD
                        NDVI difference threshold
  --ndwi_threshold NDWI_THRESHOLD
                        NDWI difference threshold
  --pre_event PRE_EVENT
                        Sentinel-2 Level-2A pre-event acquisition
  --post_event POST_EVENT
                        Sentinel-2 Level-2A post-event acquisition
  --aoi AOI             Area of interest in WKT
  ```
  
### Getting the Common Workflow Language (CWL) script

```console
docker run --rm -it terradue/nb-burned-area:latest burned-area --cwl --docker terradue/nb-burned-area:latest
```
### Getting the Common Workflow Language (CWL) default parameters 

```console
docker run --rm -it terradue/nb-burned-area:latest burned-area --params
```

### Executing the CWL script

Get the CWL script:

```console
docker run --rm -it terradue/nb-burned-area:latest burned-area --cwl --docker terradue/nb-burned-area:latest > burned-area.cwl
```

Get the parameters:

```console
docker run --rm -it terradue/nb-burned-area:latest burned-area --params > burned-area.yml
```

Execute the CWL script with `cwltool`:

```console
cwltool burned-area.cwl#burned-area burned-area.yml
```
