.class Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;
.super Ljava/lang/Object;
.source "DSAPubKey.java"

# interfaces
.implements Ljava/security/interfaces/DSAParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/security/DSAPubKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleDSAParams"
.end annotation


# instance fields
.field private G:Ljava/math/BigInteger;

.field private P:Ljava/math/BigInteger;

.field private Q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;->P:Ljava/math/BigInteger;

    .line 22
    iput-object p2, p0, Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;->Q:Ljava/math/BigInteger;

    .line 23
    iput-object p3, p0, Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;->G:Ljava/math/BigInteger;

    .line 24
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;->G:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;->P:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xbill/DNS/security/DSAPubKey$SimpleDSAParams;->Q:Ljava/math/BigInteger;

    return-object v0
.end method
