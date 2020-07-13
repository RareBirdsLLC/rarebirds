#!/bin/bash

echo "Building, starting and connecting to existing RareBirds Node"

COMPOSE="docker-compose -f docker-compose/local/slave-node.yml -p rarebirds"

$COMPOSE down
$COMPOSE build --pull
$COMPOSE up
