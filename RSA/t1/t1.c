#include <stdio.h>
#include <openssl/bn.h>
#define NBITS 128
//p = F7E75FDC469067FFDC4E847C51F452DF
//q = E85CED54AF57E53E092113E62F436F4F
//e = 0D88C3
void printBN(char *msg, BIGNUM * a){
//Use BN_bn2hex(a) for hex string
//Use BN_bn2dec(a) for decimal string
    char * number_str = BN_bn2hex(a);
    printf("%s %s\n", msg, number_str);
    OPENSSL_free(number_str);
}
int main (){
    BN_CTX *ctx = BN_CTX_new();
    BIGNUM *p = BN_new();
    BIGNUM *q = BN_new();
    BIGNUM *e = BN_new();
    BIGNUM *d = BN_new();
    BIGNUM *n = BN_new();
    BIGNUM *phi = BN_new();
    BIGNUM *p_sub_1 = BN_new();
    BIGNUM *q_sub_1 = BN_new();
    BIGNUM *res= BN_new();

    // Initialize p,q,e
    BN_hex2bn(&p, "F7E75FDC469067FFDC4E847C51F452DF");
    BN_hex2bn(&q, "E85CED54AF57E53E092113E62F436F4F");
    BN_hex2bn(&e, "0D88C3");

    //sub p,q
    BN_sub(p_sub_1, p, BN_value_one());
    BN_sub(q_sub_1, q, BN_value_one());
    //phi(n)=(p-1)*(q-1)
    BN_mul(phi, p_sub_1, q_sub_1, ctx);
    BN_mul(n, p, q, ctx);

    BN_gcd(res, phi, e, ctx);
    if (!BN_is_one(res)){
        exit(0);
    }
    BN_mod_inverse(d, e, phi, ctx);
    printBN("d= ", d);
    return 0;
}