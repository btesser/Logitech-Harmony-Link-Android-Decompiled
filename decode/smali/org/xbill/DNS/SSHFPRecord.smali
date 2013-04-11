.class public Lorg/xbill/DNS/SSHFPRecord;
.super Lorg/xbill/DNS/Record;
.source "SSHFPRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/SSHFPRecord$Digest;,
        Lorg/xbill/DNS/SSHFPRecord$Algorithm;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7079aefc33d7bf31L


# instance fields
.field private alg:I

.field private digestType:I

.field private fingerprint:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJII[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const/16 v2, 0x2c

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 53
    const-string v0, "alg"

    invoke-static {v0, p5}, Lorg/xbill/DNS/SSHFPRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    .line 54
    const-string v0, "digestType"

    invoke-static {v0, p6}, Lorg/xbill/DNS/SSHFPRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    .line 55
    iput-object p7, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    .line 56
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    return v0
.end method

.method public getDigestType()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    return v0
.end method

.method public getFingerPrint()[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/xbill/DNS/SSHFPRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SSHFPRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    .line 68
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    .line 70
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    .line 61
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    .line 62
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    .line 63
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    iget v1, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget v1, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-object v1, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 104
    iget v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 105
    iget-object v0, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 106
    return-void
.end method
