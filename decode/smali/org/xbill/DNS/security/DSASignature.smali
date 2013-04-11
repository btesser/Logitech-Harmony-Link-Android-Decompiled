.class public Lorg/xbill/DNS/security/DSASignature;
.super Ljava/lang/Object;
.source "DSASignature.java"


# static fields
.field static final ASN1_INT:I = 0x2

.field static final ASN1_SEQ:I = 0x30


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromDNS([B)[B
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x14

    .line 30
    .line 34
    const/4 v0, 0x1

    aget-byte v0, p0, v0

    if-gez v0, :cond_5

    .line 35
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    .line 38
    :goto_0
    const/16 v1, 0x15

    aget-byte v1, p0, v1

    if-gez v1, :cond_4

    .line 39
    add-int/lit8 v1, v6, 0x1

    int-to-byte v1, v1

    .line 42
    :goto_1
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    .line 45
    add-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 47
    add-int/lit8 v4, v7, 0x1

    const/16 v5, 0x30

    aput-byte v5, v3, v7

    .line 48
    add-int/lit8 v5, v4, 0x1

    aput-byte v2, v3, v4

    .line 49
    add-int/lit8 v2, v5, 0x1

    aput-byte v8, v3, v5

    .line 50
    add-int/lit8 v4, v2, 0x1

    aput-byte v0, v3, v2

    .line 51
    if-le v0, v6, :cond_3

    .line 52
    add-int/lit8 v0, v4, 0x1

    aput-byte v7, v3, v4

    :goto_2
    move v2, v0

    move v0, v7

    .line 53
    :goto_3
    if-ge v0, v6, :cond_0

    .line 54
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v2

    .line 53
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 55
    :cond_0
    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v3, v2

    .line 56
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, v3, v0

    .line 57
    if-le v1, v6, :cond_2

    .line 58
    add-int/lit8 v0, v2, 0x1

    aput-byte v7, v3, v2

    :goto_4
    move v1, v0

    move v0, v7

    .line 59
    :goto_5
    if-ge v0, v6, :cond_1

    .line 60
    add-int/lit8 v2, v0, 0x15

    aget-byte v2, p0, v2

    aput-byte v2, v3, v1

    .line 59
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 61
    :cond_1
    return-object v3

    :cond_2
    move v0, v2

    goto :goto_4

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v0, v6

    goto :goto_0
.end method

.method public static toDNS(Ljava/security/interfaces/DSAParams;[B)[B
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x14

    .line 74
    aget-byte v0, p1, v8

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v3

    if-eq v0, v3, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Expected SEQ, INT"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    .line 77
    const/4 v1, 0x4

    .line 78
    aget-byte v2, p1, v1

    if-nez v2, :cond_6

    .line 79
    add-int/lit8 v0, v0, -0x1

    .line 80
    add-int/lit8 v1, v1, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    .line 82
    :goto_0
    add-int v2, v0, v1

    aget-byte v2, p1, v2

    if-eq v2, v3, :cond_2

    .line 83
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Expected INT"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    .line 85
    add-int v3, v0, v1

    add-int/lit8 v3, v3, 0x2

    .line 86
    aget-byte v4, p1, v3

    if-nez v4, :cond_5

    .line 87
    add-int/lit8 v2, v2, -0x1

    .line 88
    add-int/lit8 v3, v3, 0x1

    move v9, v3

    move v3, v2

    move v2, v9

    .line 91
    :goto_1
    if-gt v1, v7, :cond_3

    if-le v3, v7, :cond_4

    .line 92
    :cond_3
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "DSA R/S too long"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_4
    const/16 v4, 0x29

    new-array v4, v4, [B

    .line 95
    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 96
    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0x200

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 97
    sub-int v5, v7, v1

    add-int/lit8 v5, v5, 0x1

    invoke-static {p1, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    sub-int v0, v7, v3

    add-int/lit8 v0, v0, 0x15

    invoke-static {p1, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v4

    :cond_5
    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_1

    :cond_6
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_0
.end method
