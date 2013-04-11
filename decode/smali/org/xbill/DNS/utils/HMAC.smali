.class public Lorg/xbill/DNS/utils/HMAC;
.super Ljava/lang/Object;
.source "HMAC.java"


# static fields
.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct

.field private static final PADLEN:B = 0x40t


# instance fields
.field digest:Ljava/security/MessageDigest;

.field private ipad:[B

.field private opad:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    invoke-direct {p0, p2}, Lorg/xbill/DNS/utils/HMAC;->init([B)V

    .line 70
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown digest algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/security/MessageDigest;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 52
    iput-object p1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    .line 53
    invoke-direct {p0, p2}, Lorg/xbill/DNS/utils/HMAC;->init([B)V

    .line 54
    return-void
.end method

.method private init([B)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x40

    .line 27
    array-length v0, p1

    if-le v0, v4, :cond_2

    .line 28
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 29
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 31
    :goto_0
    new-array v1, v4, [B

    iput-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    .line 32
    new-array v1, v4, [B

    iput-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    .line 33
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 34
    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    aget-byte v3, v0, v1

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 35
    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    aget-byte v3, v0, v1

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    :goto_2
    if-ge v0, v4, :cond_0

    .line 38
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    const/16 v2, 0x36

    aput-byte v2, v1, v0

    .line 39
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    const/16 v2, 0x5c

    aput-byte v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    return-void

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 120
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 121
    return-void
.end method

.method public sign()[B
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 100
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public update([B)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 90
    return-void
.end method

.method public update([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 81
    return-void
.end method

.method public verify([B)Z
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method
