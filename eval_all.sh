#!/bin/bash  
for((i=0;i<=9;i++));  
do   
    # echo $i
    TXT_PATH='/data/jahegoul10/GMM/minigpt4/results/test_'"$i"'.txt'
    CKPT_PATH='/data/jahegoul10/GMM/minigpt4/output/20250108183/'"$i"'/checkpoint_4.pth'
    python batch_eval.py --cfg-path eval_configs/minigpt4_eval_all_tasks_imgr.yaml \
    --gpu-id 0 --task-id $i --txt-path $TXT_PATH \
    --ckpt-path $CKPT_PATH
done  
python get_score_all.py
