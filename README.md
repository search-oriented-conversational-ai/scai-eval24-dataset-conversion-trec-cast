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

Paper: https://arxiv.org/abs/2304.13874

MSMARCO doc v1
https://github.com/microsoft/MSMARCO-Document-Ranking/tree/d0a6c5b0ebdd1cd9dcf2b93fa593b7d56100d346
https://msmarco.blob.core.windows.net/msmarcoranking/msmarco-docs.tsv.gz
Creative Commons Attribution 4.0 International Public License

MSMARCO doc v2
https://microsoft.github.io/msmarco/TREC-Deep-Learning-2021#document-ranking-dataset
https://msmarco.blob.core.windows.net/msmarcoranking/msmarco_v2_doc.tar
Creative Commons Attribution 4.0 International Public License

KILT
https://github.com/facebookresearch/KILT/
http://dl.fbaipublicfiles.com/KILT/kilt_knowledgesource.json
MIT
