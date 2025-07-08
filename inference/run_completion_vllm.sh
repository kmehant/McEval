
MODEL_DIR='Qwen/Qwen2.5-Coder-3B'
COMPLETE_DATA_PATH="./data_comb_1"

COMPLETE_DATA_PATH='./completion/merge'
python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'completion'  \
    --outdir 'completion_result'


COMPLETE_DATA_PATH='./completion/light'
python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'completion_light'  \
    --outdir 'completion_result'