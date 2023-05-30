python pretrain.py  --epochs 5  --warmup_epochs 10  --blr 1.5e-4 --weight_decay 0.05 --batch_size 16
python -u finetune.py --epochs 2 --blr 2e-4 --weight_decay 0.05 --batch_size 8
python -u test_zero_shot.py
python -u test_few_shot.py