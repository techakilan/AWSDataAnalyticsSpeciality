#!/bin/bash

# put record

aws kinesis put-record --stream-name test --partition-key user1 --data "user signup" --cli-binary-format raw-in-base64-out

# decribe stream

aws kinesis describe-stream --stream-name test

# get shard iterator
aws kinesis get-shard-iterator --stream-name test --shard-id shardId-0000000000 --shard-iterator-type TRIM_HORIZON

# get records - output contains next shard iterator

aws kinesis get-records --shard-iterator <shard-iterator-value from above command>




