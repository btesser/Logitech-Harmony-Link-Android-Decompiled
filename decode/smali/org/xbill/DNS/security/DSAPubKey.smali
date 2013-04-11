.class Lorg/xbill/DNS/security/DSAPubKey;
.super Ljava/lang/Object;
.source "DSAPubKey.java"

# interfaces
.implements Ljava/security/interfaces/DSAPublicKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;
    }
.end annotation


# instance fields
.field private Y:Ljava/math/BigInteger;

.field private params:Ljava/security/interfaces/DSAParams;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;

    invoke-direct {v0, p1, p2, p3}, Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/xbill/DNS/security/DSAPubKey;->params:Ljava/security/interfaces/DSAParams;

    .line 49
    iput-object p4, p0, Lorg/xbill/DNS/security/DSAPubKey;->Y:Ljava/math/BigInteger;

    .line 50
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "DSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/xbill/DNS/security/DSAPubKey;->params:Ljava/security/interfaces/DSAParams;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/xbill/DNS/security/DSAPubKey;->Y:Ljava/math/BigInteger;

    return-object v0
.end method
