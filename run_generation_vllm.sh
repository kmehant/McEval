
COMPLETE_DATA_PATH='./generation'

MODEL_DIR='Qwen/Qwen2.5-Coder-3B'

python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'generation'\
    --langs Java Markdown Python "Common Lisp" Swift HTML Shell Fortan Haskell Erlang\
    --tp 2