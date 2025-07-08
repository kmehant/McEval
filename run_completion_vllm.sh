
MODEL_DIR='Qwen/Qwen2.5-Coder-3B'


COMPLETE_DATA_PATH='completion/completion_data/merge'
python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'completion'  \
    --outdir 'completion_result'\
    --langs Java Markdown Python "Common Lisp" Swift HTML Shell Fortan Haskell Erlang\
    --tp 2


COMPLETE_DATA_PATH='./completion/completion_data/light'
python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'completion_light'  \
    --outdir 'completion_result'\
    --langs Java Markdown Python "Common Lisp" Swift HTML Shell Fortan Haskell Erlang\
    --tp 2
