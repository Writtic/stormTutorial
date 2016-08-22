#!/bin/bash

CMD="exec bin/storm jar ./topology.jar com.microsoft.example.WordCountTopology Test"

echo "$CMD"
eval "$CMD"
