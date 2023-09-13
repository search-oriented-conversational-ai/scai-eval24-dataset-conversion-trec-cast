# trec-cast-conversion

```bash
git clone git@github.com:daltonj/treccastweb.git
cd treccastweb
git checkout 3384661
cd ..
./src/bash/parse-treccast.sh \
  treccastweb/2021/2021_manual_evaluation_topics_v1.0.json \
  treccastweb/2022/2022_evaluation_topics_flattened_duplicated_v1.0.json \
  > data/conversational-questions/corpus-treccast.jsonl
```
