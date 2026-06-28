#!/usr/bin/env bash

detect_gpu_vendor() {

    if lspci | grep -qi "NVIDIA"; then
        echo "NVIDIA"
        return
    fi

    if lspci | grep -qiE "AMD|ATI"; then
        echo "AMD"
        return
    fi

    if lspci | grep -qi "Intel"; then
        echo "Intel"
        return
    fi

    echo "Unknown"

}

detect_gpu_model() {

    lspci | grep -Ei "VGA|3D" | sed 's/.*: //'

}

check_gpu_driver() {

    case "$(detect_gpu_vendor)" in

        NVIDIA)

            command -v nvidia-smi >/dev/null \
                && echo "OK" \
                || echo "Missing"
            ;;

        AMD|Intel)

            pacman -Q mesa >/dev/null 2>&1 \
                && echo "OK" \
                || echo "Missing"
            ;;

        *)

            echo "Unknown"

            ;;

    esac

}
