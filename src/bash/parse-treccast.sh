#!/bin/bash

input=$1
year=$2

cat $input \
  | jq '.[]
      | ("treccast'$year'-" + (.number|tostring)) as $conversationId
      | {
          id: $conversationId,
          turns: (.turn | map({
            id: ($conversationId + "-" + (.number|tostring)),
            utterance: (.raw_utterance + .utterance),
            rewritten_utterance: [ {
              source: "human",
              text: .manual_rewritten_utterance
            } ],
            response: .passage,
            provenance: ([ (select(.canonical_result_id != null) | {id: .canonical_result_id}  ) ] + ((.provenance // []) | map({id: .})))
          }))
        }'

