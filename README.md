# Read Me

This repo contains simple configuration to setup Apache Solr Cluster using `docker-compose`.

```sh
# Start all containers
docker-compose up

# Apply config set and create a new collection
./bootstrap.sh

# Re-upload config set
./upconfig.sh
```

## Notes

- The `configset` folder is applied to the `solr1` service volume so I can apply the config set using the `bin/solr` command inside the that service container.
- You may need to rename the `books` and `book_config` string in the `bootstrap.sh` and `upconfig.sh` scripts.
- All files inside the `configset` folder are copied from the Solr's `_default` configset. I only modify the `solrconfig.xml` to have the following config.
  - `autoCommit.maxTime=10000`
  - `autoCommit.maxDocs=10`
  - `autoCommit.openSearcher=true`
