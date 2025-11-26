#!/bin/bash
while true
do
    echo "---------------------------------------"
    echo " 🛡️ INICIANDO MODO ESTÁVEL (ROG SERVER)..."
    echo " (CTRL + C para parar)"
    echo "---------------------------------------"
    export BOX64_DYNAREC_BIGBLOCK=0
    export BOX64_DYNAREC_STRONGMEM=1
    LD_LIBRARY_PATH=. box64 ./bedrock_server
    echo "---------------------------------------"
    echo " ⚠️ CRASH DETECTADO – REINICIANDO EM 5s..."
    echo "---------------------------------------"
    sleep 5
done