echo "[~] Starting..."
echo "[~] Applying configset"
docker-compose exec solr1 bin/solr zk upconfig -n book_config -d /app/configset
echo "[~] Done"