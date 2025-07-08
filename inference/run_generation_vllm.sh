


MODEL_DIR='Qwen/Qwen2.5-Coder-3B'
COMPLETE_DATA_PATH="./data_comb_1"

python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'generation'
