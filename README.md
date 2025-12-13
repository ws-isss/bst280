# BST 280 Project: Group 6 (ER+ Breast Cancer Analysis)

## 1. Project Overview
This project focuses on the **Estrogen Receptor Positive (ER+)** subtype of breast cancer. We aim to compare ER+ tumor samples from TCGA with normal breast tissue from GTEx to identify differentially expressed genes and rewired regulatory networks.

## 2. Data Cleaning & Processing
We have processed the raw data using `recount3`. The cleaning pipeline includes:
* **Filtering:** Selected only **ER Positive** samples from TCGA-BRCA metadata.
* **Merging:** Combined TCGA ER+ tumors with GTEx normal breast tissue.
* **Alignment:** Aligned genes to ensure both datasets match perfectly.

### Key Statistics
* **TCGA ER+ Samples:** ~802 samples
* **GTEx Normal Samples:** ~180 samples
* **Common Genes:** ~35,168 genes
**Important:** Due to GitHub file size limits (>100MB), the cleaned count matrix is **NOT** hosted here.
