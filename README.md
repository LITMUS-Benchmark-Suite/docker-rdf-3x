# docker-rdf-3x
Docker for RDF-3X engine
build - contains bash commands for setup & running the rdf-3x docker
Dockerfile - the configuration file for the rdf-3x docker

##Loading the data in RDF-3X
```bash
time (./rdf3xload $db_name ../path../to../bench_data/bsbm/$filename.nt) > /dev/null 2>> $data_load_result.txt
```
where, 
$db_name: the name of database which will be created after loading the data; 
$filename.nt: name of the file to be loaded; 
$data_load_result.txt: file where result is to be stored.

