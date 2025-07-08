
COMPLETE_DATA_PATH='./generation'
export VLLM_WORKER_MULTIPROC_METHOD=spawn

# MODEL_DIR='Qwen/Qwen2.5-Coder-3B'

python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'generation'\
    --langs $langs\
    --tp $tp