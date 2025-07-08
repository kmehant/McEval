# export MASTER_ADDR="localhost"
# export MASTER_PORT="1231"
# export GLOO_SOCKET_IFNAME="lo"
# export NCCL_SOCKET_IFNAME="lo"


# MODEL_PATH='CodeQwen1.5-7B'

# DATA_PATH="<your data path>"

# SAVE_PATH='./ckpt/sft-codewen-1.5-7b'
# /data/odm_ase/train
torchrun --nnodes=1 --node_rank=0 --nproc_per_node=${nproc_per_node} --rdzv_id=101 --rdzv_endpoint=0.0.0.0:8888 train.py \
    --model_name_or_path $MODEL_PATH \
    --data_path $DATA_PATH \
    --bf16 True \
    --output_dir $SAVE_PATH \
    --num_train_epochs 2 \
    --per_device_train_batch_size 1\
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 64 \
    --save_strategy "steps" \
    --model_max_length 5000 \
    --save_steps 10000 \
    --save_total_limit 40 \
    --learning_rate 2e-5 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --fsdp "full_shard auto_wrap" \
    --fsdp_transformer_layer_cls_to_wrap 'Qwen2DecoderLayer' \
    --gradient_checkpointing True \
    --tf32 True\
    --langs ${langs}


