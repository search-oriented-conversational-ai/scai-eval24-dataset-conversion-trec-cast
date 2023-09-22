#!/usr/bin/env python3

import sys, json

additional_attributes = {}

for i in range(1, len(sys.argv) - 1):
    with open(sys.argv[i]) as attributes_file:
        for line in attributes_file:
            record = json.loads(line)
            additional_attributes[record["id"]] = record

with open(sys.argv[len(sys.argv) - 1]) as data_file:
    for line in data_file:
        conversation = json.loads(line)
        if conversation["id"] in additional_attributes:
            conversation.update(additional_attributes[conversation["id"]])
        for turn in conversation["turns"]:
            if turn["id"] in additional_attributes:
                turn.update(additional_attributes[turn["id"]])
            for provenance in turn["provenance"]:
                if provenance["id"] in additional_attributes:
                    provenance.update(additional_attributes[provenance["id"]])
        json.dump(conversation, sys.stdout)
        print()

