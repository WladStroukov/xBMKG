# xBMKG
(Basic) Exploratory Biomedical Knowledge Graph
[Add more descriptions on implementation strategy and usecases]


## Quick start
[Basic set up]

Build Docker:
`docker build --build-arg IMAGE_VERSION=$(cat VERSION) -t xbmkg:$(cat VERSION) .`


To create Docker container run:  
```
docker container run -it \ 
	-p 8888:8888 \
	--rm \
	-v ${PWD}:/home/jovyan/work \
	-v ${PWD}/data:/home/jovyan/data \
	--name xbmkg-dev \
	xbmkg:$(cat VERSION)`
```
?? Mount code to a workspace folder.
?? Separately mount data??



## TO DO:
* Identify data sources for entities:
	* Genes/Proteins
	* Variants (rsID)
	* Pathways
	* Phenotypes/Traits??
	* Drugs/compounds
	* GWAS study
* Relationships
	* PPI
	* GWAS
	* Compound -> GeneProtein

* Create ETL pipeline for extractions
* separate image for neo4j
* check how to version data sources?
