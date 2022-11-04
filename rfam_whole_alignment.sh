#!/bin/bash
#$ -S /bin/bash

curl -X POST -H 'Content-type: application/json' --data '{"text":"NIG: rfam whole alignment started"}' https://hooks.slack.com/services/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
time (./Alignment/align ./Data/fastas/rfam_train.fasta 0) >> rfam_whole_alignment_log.txt 2>&1
curl -X POST -H 'Content-type: application/json' --data '{"text":"alignment of rfam_train finished!"}' https://hooks.slack.com/services/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
time (./Alignment/align ./Data/fastas/rfam_test.fasta 0) >> rfam_whole_alignment_log.txt 2>&1
curl -X POST -H 'Content-type: application/json' --data '{"text":"alignment of rfam_test finished!"}' https://hooks.slack.com/services/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
curl -X POST -H 'Content-type: application/json' --data '{"text":"NIG: rfam whole alignment finished!"}' https://hooks.slack.com/services/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
