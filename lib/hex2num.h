//
// Created by kgbcomrade on 02.12.2019.
//

#ifndef FP_HEX2NUM_H
#define FP_HEX2NUM_H

#endif //FP_HEX2NUM_H


unsigned int hex2num(unsigned int inp) {
    int res = 0, sh = 1;
    while(inp != 0) {
        res += (inp & 0xF) * sh;
        sh *= 10;
        inp >>= 4;
    }
    return res;
}

unsigned int num2hex(unsigned int inp) {
    int res = 0, sh = 1;
    while(inp != 0) {
        res += (inp % 10) * sh;
        sh *= 0x10;
        inp /= 10;
    }
    return res;
}