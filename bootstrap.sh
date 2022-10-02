echo "[~] Starting..."
echo "[~] Applying configset"
docker-compose exec solr1 bin/solr zk upconfig -n book_config -d /app/configset
echo "[~] Creating collection"
docker-compose exec solr1 bin/solr create -c books -n book_config -s 3 -rf 2
echo "[~] Done"