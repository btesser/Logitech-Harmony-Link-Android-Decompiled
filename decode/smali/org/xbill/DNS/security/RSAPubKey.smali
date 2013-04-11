.class Lorg/xbill/DNS/security/RSAPubKey;
.super Ljava/lang/Object;
.source "RSAPubKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# instance fields
.field private Exponent:Ljava/math/BigInteger;

.field private Modulus:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/xbill/DNS/security/RSAPubKey;->Modulus:Ljava/math/BigInteger;

    .line 22
    iput-object p2, p0, Lorg/xbill/DNS/security/RSAPubKey;->Exponent:Ljava/math/BigInteger;

    .line 23
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "RSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xbill/DNS/security/RSAPubKey;->Modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xbill/DNS/security/RSAPubKey;->Exponent:Ljava/math/BigInteger;

    return-object v0
.end method
