#!/bin/bash


source ~/miniconda3/etc/profile.d/conda.sh

conda activate textgen


python server.py --chat \
	--character "Elon Musk" \
 	--model "ggml-vicuna-7b-1.1-q4_2.bin" \
	--model-menu \
	--no-stream \
	--wbits 4 \
	--trust-remote-code \
	--listen \
	--extensions \
	silero_tts \
        send_pictures \ 
        gallery \
	
;


