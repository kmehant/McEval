
# MODEL_DIR='Qwen/Qwen2.5-Coder-3B'
# MODEL_DIR
export VLLM_WORKER_MULTIPROC_METHOD=spawn

COMPLETE_DATA_PATH='completion/completion_data/merge'
python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'completion'  \
    --outdir 'completion_result'\
    --langs $langs\
    --tp $tp


COMPLETE_DATA_PATH='./completion/completion_data/light'
python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'completion_light'  \
    --outdir 'completion_result'\
    --langs $langs\
    --tp $tp
