#!/bin/bash

time (./Alignment/align ./Data/test.fasta 0) >> log_test.txt 2>&1
curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World!"}' https://hooks.slack.com/services/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
