#!/bin/bash

echo "Starting and provisioning RareBirds"

COMPOSE="docker-compose -f docker-compose/master/master-node.yml -f docker-compose/master/provisioning.yml -p rarebirds"

$COMPOSE down
$COMPOSE build --pull
$COMPOSE up