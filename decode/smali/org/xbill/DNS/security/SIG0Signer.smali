.class public Lorg/xbill/DNS/security/SIG0Signer;
.super Ljava/lang/Object;
.source "SIG0Signer.java"


# static fields
.field private static final VALIDITY:S = 0x12cs


# instance fields
.field private algorithm:I

.field private footprint:I

.field private name:Lorg/xbill/DNS/Name;

.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(ILjava/security/PrivateKey;Lorg/xbill/DNS/Name;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    int-to-byte v0, p1

    iput v0, p0, Lorg/xbill/DNS/security/SIG0Signer;->algorithm:I

    .line 46
    iput-object p2, p0, Lorg/xbill/DNS/security/SIG0Signer;->privateKey:Ljava/security/PrivateKey;

    .line 47
    iput-object p3, p0, Lorg/xbill/DNS/security/SIG0Signer;->name:Lorg/xbill/DNS/Name;

    .line 48
    iput p4, p0, Lorg/xbill/DNS/security/SIG0Signer;->footprint:I

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/security/PrivateKey;Lorg/xbill/DNS/Name;Ljava/security/PublicKey;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    int-to-byte v0, p1

    iput v0, p0, Lorg/xbill/DNS/security/SIG0Signer;->algorithm:I

    .line 61
    iput-object p2, p0, Lorg/xbill/DNS/security/SIG0Signer;->privateKey:Ljava/security/PrivateKey;

    .line 62
    iput-object p3, p0, Lorg/xbill/DNS/security/SIG0Signer;->name:Lorg/xbill/DNS/Name;

    .line 63
    const/16 v1, 0x19

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    move-object v0, p3

    move v7, p1

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lorg/xbill/DNS/security/KEYConverter;->buildRecord(Lorg/xbill/DNS/Name;IIJIIILjava/security/PublicKey;)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 67
    check-cast v0, Lorg/xbill/DNS/KEYRecord;

    .line 68
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getFootprint()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/security/SIG0Signer;->footprint:I

    .line 69
    return-void
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;[B)V
    .locals 18
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v3, "sig0validity"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v3

    .line 82
    if-gez v3, :cond_0

    .line 83
    const/16 v3, 0x12c

    .line 85
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 86
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 87
    new-instance v12, Ljava/util/Date;

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    add-long v3, v4, v6

    invoke-direct {v12, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 90
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->algorithm:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 91
    const-string v3, "SHA1withDSA"

    move-object/from16 v17, v3

    .line 100
    :goto_0
    new-instance v3, Lorg/xbill/DNS/SIGRecord;

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->algorithm:I

    move v9, v0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->footprint:I

    move v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->name:Lorg/xbill/DNS/Name;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lorg/xbill/DNS/SIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 104
    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/DNSSEC;->digestMessage(Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/Message;[B)[B

    move-result-object v3

    .line 106
    invoke-static/range {v17 .. v17}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->privateKey:Ljava/security/PrivateKey;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 108
    invoke-virtual {v4, v3}, Ljava/security/Signature;->update([B)V

    .line 109
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->algorithm:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->privateKey:Ljava/security/PrivateKey;

    move-object/from16 p2, v0

    check-cast p2, Ljava/security/interfaces/DSAKey;

    .line 117
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/xbill/DNS/security/DSASignature;->toDNS(Ljava/security/interfaces/DSAParams;[B)[B

    move-result-object v3

    move-object/from16 v16, v3

    .line 120
    :goto_1
    new-instance v3, Lorg/xbill/DNS/SIGRecord;

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->algorithm:I

    move v9, v0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->footprint:I

    move v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->name:Lorg/xbill/DNS/Name;

    move-object v15, v0

    invoke-direct/range {v3 .. v16}, Lorg/xbill/DNS/SIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 123
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 124
    return-void

    .line 92
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->algorithm:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 93
    const-string v3, "MD5withRSA"

    move-object/from16 v17, v3

    goto/16 :goto_0

    .line 94
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/security/SIG0Signer;->algorithm:I

    move v3, v0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 95
    const-string v3, "SHA1withRSA"

    move-object/from16 v17, v3

    goto/16 :goto_0

    .line 97
    :cond_3
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "Unknown algorithm"

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object/from16 v16, v3

    goto :goto_1
.end method
