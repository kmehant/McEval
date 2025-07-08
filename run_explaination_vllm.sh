
MODEL_DIR='Qwen/Qwen2.5-Coder-3B'
export VLLM_WORKER_MULTIPROC_METHOD=spawn

COMPLETE_DATA_PATH='./explanation/explaination_data'
python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'explain_stage1' \
    --outdir 'explain_stage1'\
    --langs Java Markdown Python "Common Lisp" Swift HTML Shell Fortan Haskell Erlang\
    --tp 2

python gen_stage2_instruction.py

COMPLETE_DATA_PATH='./explain_stage2/explain_stage1'
python inference_vllm.py \
    --data_path $COMPLETE_DATA_PATH \
    --base_model $MODEL_DIR \
    --task 'explain_stage2' \
    --outdir 'explain_result'\
    --langs Java Markdown Python "Common Lisp" Swift HTML Shell Fortan Haskell Erlang\
    --tp 2