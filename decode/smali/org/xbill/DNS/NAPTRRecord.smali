.class public Lorg/xbill/DNS/NAPTRRecord;
.super Lorg/xbill/DNS/Record;
.source "NAPTRRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x480af65b3257263aL


# instance fields
.field private flags:[B

.field private order:I

.field private preference:I

.field private regexp:[B

.field private replacement:Lorg/xbill/DNS/Name;

.field private service:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const/16 v4, 0x23

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 47
    const-string v2, "order"

    invoke-static {v2, p5}, Lorg/xbill/DNS/NAPTRRecord;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NAPTRRecord;->order:I

    .line 48
    const-string v2, "preference"

    invoke-static {v2, p6}, Lorg/xbill/DNS/NAPTRRecord;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NAPTRRecord;->preference:I

    .line 50
    :try_start_0
    invoke-static {p7}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/NAPTRRecord;->flags:[B

    .line 51
    invoke-static/range {p8 .. p8}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/NAPTRRecord;->service:[B

    .line 52
    invoke-static/range {p9 .. p9}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/NAPTRRecord;->regexp:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const-string v2, "replacement"

    move-object v0, v2

    move-object/from16 v1, p10

    invoke-static {v0, v1}, Lorg/xbill/DNS/NAPTRRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/NAPTRRecord;->replacement:Lorg/xbill/DNS/Name;

    .line 58
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->replacement:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getFlags()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->flags:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/xbill/DNS/NAPTRRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NAPTRRecord;-><init>()V

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/xbill/DNS/NAPTRRecord;->order:I

    return v0
.end method

.method public getPreference()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/xbill/DNS/NAPTRRecord;->preference:I

    return v0
.end method

.method public getRegexp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->regexp:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplacement()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->replacement:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->service:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

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
    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NAPTRRecord;->order:I

    .line 73
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NAPTRRecord;->preference:I

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->flags:[B

    .line 76
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->service:[B

    .line 77
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->regexp:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->replacement:Lorg/xbill/DNS/Name;

    .line 83
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
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
    .line 62
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NAPTRRecord;->order:I

    .line 63
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/NAPTRRecord;->preference:I

    .line 64
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->flags:[B

    .line 65
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->service:[B

    .line 66
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->regexp:[B

    .line 67
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->replacement:Lorg/xbill/DNS/Name;

    .line 68
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    iget v1, p0, Lorg/xbill/DNS/NAPTRRecord;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget v1, p0, Lorg/xbill/DNS/NAPTRRecord;->preference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v1, p0, Lorg/xbill/DNS/NAPTRRecord;->flags:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v1, p0, Lorg/xbill/DNS/NAPTRRecord;->service:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    iget-object v1, p0, Lorg/xbill/DNS/NAPTRRecord;->regexp:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/NAPTRRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Lorg/xbill/DNS/NAPTRRecord;->replacement:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iget v0, p0, Lorg/xbill/DNS/NAPTRRecord;->order:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 142
    iget v0, p0, Lorg/xbill/DNS/NAPTRRecord;->preference:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 143
    iget-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->flags:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 144
    iget-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->service:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 145
    iget-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->regexp:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 146
    iget-object v0, p0, Lorg/xbill/DNS/NAPTRRecord;->replacement:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 147
    return-void
.end method
