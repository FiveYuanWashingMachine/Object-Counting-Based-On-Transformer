### Preparation
#### 1. Download datasets

In our project, the following datasets are used.
Please visit following links to download datasets:

* [FSC147](https://github.com/cvlab-stonybrook/LearningToCountEverything)



#### 2. Download required python packages:

pip install requirements.txt -r



### 3. Modify directory

Please modify your work directory and dataset directory in the following files.


model/models_mae_noct.py
pretrain.py
model/models_mae_cross.py
finetune.py
model/models_mae_cross.py




### 4. CounTR Train


Pretrain on FSC147 

```
python pretrain.py \
    --epochs 100 \
    --warmup_epochs 10 \
    --blr 1.5e-4 --weight_decay 0.05
```

Finetune on FSC147 

```
python -u finetune.py \
    --epochs 100 \
    --blr 2e-4 --weight_decay 0.05 
```



### 5. CounTR Inference


Test on FSC147

```
test_zero_shot.py 
```


```
test_few_shot.py 
```



### 6. Fine-tuned weights

benchmark| MAE | RMSE |link|
:---:|:---:|:---:|:---:|
FSC147 | 34.57 (Test set) | 135.58 (Test set) 




