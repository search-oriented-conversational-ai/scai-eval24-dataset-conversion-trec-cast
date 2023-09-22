#!/bin/bash

source_dir=$(dirname $0)
ids="$(cat $source_dir/../../data/relevant-provenance.txt | awk '{printf ",\"%s\"", $1}' | sed 's/^,//')"
cat $@ \
  | jq -c '. as $context
    | [ {
        id:.id,
        text:(.contents | map(.body) | join("\n")),
        title:.title,
        url:.url
      } ] + [ (.contents[] | {
        id:($context.id+"-"+(.id|tostring)),
        text:.body,
        title:$context.title,
        url:$context.url
      }) ]
    | .[]
    | select(.id == ('"$ids"'))'
