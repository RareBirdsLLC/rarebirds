#!/bin/bash

echo "Starting and connecting to existing RareBirds Node"

COMPOSE="docker-compose -f docker-compose/master/slave-node.yml -p rarebirds"

$COMPOSE down
$COMPOSE build --pull
$COMPOSE up