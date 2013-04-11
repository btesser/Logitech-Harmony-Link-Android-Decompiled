.class public Lorg/xbill/DNS/DSRecord;
.super Lorg/xbill/DNS/Record;
.source "DSRecord.java"


# static fields
.field public static final SHA1_DIGEST_ID:B = 0x1t

.field public static final SHA256_DIGEST_ID:B = 0x2t

.field private static final serialVersionUID:J = -0x7cece2fc9704af55L


# instance fields
.field private alg:I

.field private digest:[B

.field private digestid:I

.field private footprint:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const/16 v2, 0x2b

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 48
    const-string v0, "footprint"

    invoke-static {v0, p5}, Lorg/xbill/DNS/DSRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 49
    const-string v0, "alg"

    invoke-static {v0, p6}, Lorg/xbill/DNS/DSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 50
    const-string v0, "digestid"

    invoke-static {v0, p7}, Lorg/xbill/DNS/DSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 51
    iput-object p8, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 52
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    return v0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    return-object v0
.end method

.method public getDigestID()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    return v0
.end method

.method public getFootprint()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DSRecord;-><init>()V

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
    .line 64
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 65
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 66
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 67
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 68
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
    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 57
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 58
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 59
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 60
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    iget-object v1, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    if-eqz v1, :cond_0

    .line 82
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    iget-object v1, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
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
    .line 124
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 125
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 126
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 129
    :cond_0
    return-void
.end method
