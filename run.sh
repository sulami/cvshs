#!/bin/sh

CC="gcc"
CFLAGS="-O2"

HC="ghc"
HFLAGS="-O2 --make"

LOG="log"
TIME="/usr/bin/time"
TFLAGS="-p -a -o ${LOG}"

prepC() {
    echo "Building ${1}..."
    ${CC} ${CFLAGS} -o ${1}_c ${1}.c
}

prepHS() {
    echo "Building ${1}..."
    ${HC} ${HFLAGS} -o ${1}_hs ${1}.hs
}

cleanup() {
    if [ -e ${LOG} ]; then
        rm ${LOG}
    fi
}

runVS() {
    echo "TESTING: ${1}" >> ${LOG}
    echo "C version:" >> ${LOG}
    ${TIME} ${TFLAGS} ./${1}_c > /dev/null
    echo "Haskell version:" >> ${LOG}
    ${TIME} ${TFLAGS} ./${1}_hs > /dev/null
    echo "" >> ${LOG}
}

run() {
    cleanup
    for f in $(cat files); do
        prepC $f
        prepHS $f
        runVS $f
    done
}

run

