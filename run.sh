#!/bin/bash


source ~/miniconda3/etc/profile.d/conda.sh

conda activate textgen


if [[ $1 == *"glm"* ]] || [[ $1 == "chatglm" ]]; then
    python server.py --chat \
        --model "THUDM_chatglm-6b" \
        --verbose \
        --trust-remote-code \
        --listen \
        --verbose \
    ;

else 
   python server.py --chat \
        --auto-devices \
        --pre_layer 30 \
        --threads 8 \
        --mlock \
        --disk \
        --model "wizardLM-7B.ggmlv3.q4_0.bin" \
        --no-stream \
        --trust-remote-code \
        --listen \
        --verbose \
        --extensions \
        send_pictures \
        silero_tts \
        gallery \
    ;
fi
