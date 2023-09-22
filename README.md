# SCAI Eval 2024 Dataset Conversion: TREC CAsT

This repository contains code for converting TREC CAsT datasets into the SCAI Eval 2024 dataset submission format.

## Generic Setup
```bash
git clone git@github.com:johanneskiesel/treccastweb.git
```

## Convert Data
### 2022
Adds text, title, and url of [MSMARCO doc v2](#msmarco-doc-v2) and [KILT](#kilt), as well as the [information needs](#information-needs-for-2022) to the dataset. Does not add data for Washington Post as the license of that dataset prevents open sharing.

```bash
./src/bash/parse-treccast.sh \
  treccastweb/2022/2022_evaluation_topics_flattened_duplicated_v1.0.json 2022 \
  > data/trec-cast-2022.ndjson

python src/python/add-by-id.py data/2022-information-needs-per-* data/provenance-* data/trec-cast-2022.ndjson \
  | sponge data/trec-cast-2022.ndjson
```

Converted dataset: `data/trec-cast-2022.ndjson`


### 2021
Missing provenance at the moment.

```bash
./src/bash/parse-treccast.sh \
  treccastweb/2021/2021_manual_evaluation_topics_v1.0.json 2021 \
  > data/trec-cast-2021.ndjson
```

Converted dataset: `data/trec-cast-2021.ndjson`



## Resources

### Information Needs for 2022
Created for and described in the paper:

> Paul Owoicho, Ivan Sekulic, Mohammad Aliannejadi, Jeffrey Dalton and Fabio Crestani. Exploiting Simulated User Feedback for Conversational Search: Ranking, Rewriting, and Beyond. In Proceedings of the 46th International ACM SIGIR Conference on Research and Development in Information Retrieval (SIGIR 2023), pages 632-642, 2023. ACM. DOI: 10.1145/3539618.3591683

Provided by the authors.

### KILT
- Repository: https://github.com/facebookresearch/KILT/
- Download:   http://dl.fbaipublicfiles.com/KILT/kilt_knowledgesource.json
- License:    MIT

### MSMARCO doc v1
- Repository: https://github.com/microsoft/MSMARCO-Document-Ranking/tree/d0a6c5b0ebdd1cd9dcf2b93fa593b7d56100d346
- Download:   https://msmarco.blob.core.windows.net/msmarcoranking/msmarco-docs.tsv.gz
- License:    Creative Commons Attribution 4.0 International Public License

### MSMARCO doc v2
- Repository: https://microsoft.github.io/msmarco/TREC-Deep-Learning-2021#document-ranking-dataset
- Download:   https://msmarco.blob.core.windows.net/msmarcoranking/msmarco_v2_doc.tar
- License:    Creative Commons Attribution 4.0 International Public License

