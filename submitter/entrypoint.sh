#!/bin/bash

CMD="exec bin/storm jar ./topology.jar com.microsoft.example.WordCountTopology"

echo "$CMD"
eval "$CMD"
