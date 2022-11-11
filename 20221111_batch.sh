#!/bin/bash

curl -X POST -H 'Content-type: application/json' --data '{"text":"generate seq alignment started"}' https://hooks.slack.com/services/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
time (./Alignment/align ./Data/fastas/generate_seq_train.fasta 0) >> 20221111_log.txt 2>&1
curl -X POST -H 'Content-type: application/json' --data '{"text":"alignment of rfam_train finished!"}' https://hooks.slack.com/services/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
time (./Alignment/align ./Data/fastas/generate_seq_test.fasta 0) >> 20221111_log.txt 2>&1
curl -X POST -H 'Content-type: application/json' --data '{"text":"alignment of rfam_test finished!"}' https://hooks.slack.com/services/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
curl -X POST -H 'Content-type: application/json' --data '{"text":"alignment finished!"}' https://hooks.slack.com/services/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
