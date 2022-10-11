#include <stdio.h>
#include <openssl/bn.h>
#define NBITS 128
//m = Launch a missile.
//s= 643D6F34902D9C7EC90CB0B2BCA36C47FA37165C0005CAB026C0542CBDB6802F
//s1 = 643D6F34902D9C7EC90CB0B2BCA36C47FA37165C0005CAB026C0542CBDB6803F
//e= 010001 (this hex value equals to decimal 65537)
//n =AE1CD4DC432798D933779FBD46C6E1247F0CF1233595113AA51B450F18116115
//$ python -c 'print("Launch a missile.".encode("hex"))'
//4c61756e63682061206d697373696c652e
void printBN(char *msg, BIGNUM * a){
//Use BN_bn2hex(a) for hex string
//Use BN_bn2dec(a) for decimal string
    char * number_str = BN_bn2hex(a);
    printf("%s %s\n", msg, number_str);
    OPENSSL_free(number_str);
}
int main (){
    BN_CTX *ctx = BN_CTX_new();
    BIGNUM *v1 = BN_new();
    BIGNUM *v2 = BN_new();
    BIGNUM *e = BN_new();
    BIGNUM *d = BN_new();
    BIGNUM *n = BN_new();
    BIGNUM *m1 = BN_new();
    BIGNUM *m2 = BN_new();
    BIGNUM *m = BN_new();

    // Initialize p,q,e
    BN_hex2bn(&n, "AE1CD4DC432798D933779FBD46C6E1247F0CF1233595113AA51B450F18116115");
    BN_hex2bn(&e, "010001");
    BN_hex2bn(&m1, "643D6F34902D9C7EC90CB0B2BCA36C47FA37165C0005CAB026C0542CBDB6802F");
    BN_hex2bn(&m2, "643D6F34902D9C7EC90CB0B2BCA36C47FA37165C0005CAB026C0542CBDB6803F");
    BN_hex2bn(&d, "74D806F9F3A62BAE331FFE3F0A68AFE35B3D2E4794148AACBC26AA381CD7D30D");
    BN_hex2bn(&m, "4c61756e63682061206d697373696c652e");

    BN_mod_exp(v1, m1, e, n, ctx);
    BN_mod_exp(v2, m2, e, n, ctx);
    printBN("v1:", v1);
    if (BN_cmp(v1, m) == 0){
        printf("Valid\n");
    }else{
        printf("Not Valid\n");
    }
    printBN("v2:", v2);


    return 0;
}
