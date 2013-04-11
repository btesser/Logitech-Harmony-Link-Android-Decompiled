.class abstract Lorg/xbill/DNS/KEYBase;
.super Lorg/xbill/DNS/Record;
.source "KEYBase.java"


# static fields
.field private static final serialVersionUID:J = 0x302581b9bcadf64eL


# instance fields
.field protected alg:I

.field protected flags:I

.field protected footprint:I

.field protected key:[B

.field protected proto:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJIII[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 30
    const-string v0, "flags"

    invoke-static {v0, p6}, Lorg/xbill/DNS/KEYBase;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 31
    const-string v0, "proto"

    invoke-static {v0, p7}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 32
    const-string v0, "alg"

    invoke-static {v0, p8}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 33
    iput-object p9, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    .line 34
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    return v0
.end method

.method public getFootprint()I
    .locals 7

    .prologue
    const v6, 0xffff

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 105
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    if-ltz v0, :cond_0

    .line 106
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 133
    :goto_0
    return v0

    .line 110
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/KEYBase;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 112
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 114
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    if-ne v1, v5, :cond_1

    .line 115
    array-length v1, v0

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 116
    array-length v2, v0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 117
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 132
    :goto_1
    and-int/2addr v0, v6

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 133
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 121
    :goto_2
    array-length v3, v0

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_2

    .line 122
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    .line 123
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 124
    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 121
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 126
    :cond_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 127
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 128
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    .line 130
    :goto_3
    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v6

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    return v0
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
    .line 38
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 39
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 40
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 41
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    .line 43
    :cond_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const-string v1, " (\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    const/16 v2, 0x40

    const-string v3, "\t"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, " ; key_tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 139
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 140
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 141
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 143
    :cond_0
    return-void
.end method
