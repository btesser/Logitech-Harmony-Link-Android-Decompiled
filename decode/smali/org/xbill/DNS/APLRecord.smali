.class public Lorg/xbill/DNS/APLRecord;
.super Lorg/xbill/DNS/Record;
.source "APLRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/APLRecord$1;,
        Lorg/xbill/DNS/APLRecord$Element;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x12b5acebae8a7fb8L


# instance fields
.field private elements:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const/16 v2, 0x2a

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 117
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 119
    instance-of v2, v0, Lorg/xbill/DNS/APLRecord$Element;

    if-nez v2, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    check-cast v0, Lorg/xbill/DNS/APLRecord$Element;

    .line 123
    iget v2, v0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, v0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_2
    return-void
.end method

.method static synthetic access$000(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-static {p0, p1}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v0

    return v0
.end method

.method private static addressLength([B)I
    .locals 2
    .parameter

    .prologue
    .line 253
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 254
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 257
    :goto_1
    return v0

    .line 253
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseAddress([BI)[B
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 136
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "invalid address length"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    array-length v0, p0

    if-ne v0, p1, :cond_1

    move-object v0, p0

    .line 141
    :goto_0
    return-object v0

    .line 139
    :cond_1
    new-array v0, p1, [B

    .line 140
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static validatePrefixLength(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    if-ltz p1, :cond_0

    const/16 v0, 0x100

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 103
    :cond_1
    if-ne p0, v2, :cond_2

    const/16 v0, 0x20

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    const/16 v0, 0x80

    if-le p1, v0, :cond_4

    :cond_3
    move v0, v1

    .line 105
    goto :goto_0

    :cond_4
    move v0, v2

    .line 106
    goto :goto_0
.end method


# virtual methods
.method public getElements()Ljava/util/List;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/APLRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 177
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 231
    return-void

    .line 185
    :cond_0
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 187
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v5

    move v2, v5

    .line 191
    :goto_1
    const/16 v3, 0x3a

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 192
    if-gez v3, :cond_1

    .line 193
    const-string v0, "invalid address prefix element"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 194
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 195
    if-gez v4, :cond_2

    .line 196
    const-string v0, "invalid address prefix element"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 198
    :cond_2
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 199
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 200
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    if-eq v1, v5, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    .line 209
    const-string v0, "unknown family"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v0, "invalid family"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 212
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 218
    invoke-static {v1, v0}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 219
    const-string v0, "invalid prefix length"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 214
    :catch_1
    move-exception v0

    .line 215
    const-string v0, "invalid prefix length"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 222
    :cond_4
    invoke-static {v3, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    .line 223
    if-nez v1, :cond_5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid IP address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 227
    :cond_5
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 228
    iget-object v3, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    new-instance v4, Lorg/xbill/DNS/APLRecord$Element;

    invoke-direct {v4, v2, v1, v0}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move v1, v6

    move v2, v6

    goto/16 :goto_1
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 147
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 149
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 150
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 151
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    move v2, v6

    .line 152
    :goto_1
    and-int/lit16 v0, v0, -0x81

    .line 154
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v3

    .line 156
    invoke-static {v1, v4}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "invalid prefix length"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 160
    :cond_1
    if-eq v1, v6, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 161
    :cond_2
    invoke-static {v1}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v0

    invoke-static {v3, v0}, Lorg/xbill/DNS/APLRecord;->parseAddress([BI)[B

    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 164
    new-instance v1, Lorg/xbill/DNS/APLRecord$Element;

    invoke-direct {v1, v2, v0, v4}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    move-object v0, v1

    .line 168
    :goto_2
    iget-object v1, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_3
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/APLRecord$Element;-><init>(IZLjava/lang/Object;ILorg/xbill/DNS/APLRecord$1;)V

    goto :goto_2

    .line 171
    :cond_4
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    iget-object v1, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/APLRecord$Element;

    .line 238
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/APLRecord$Element;

    .line 266
    iget v0, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    .line 270
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 271
    invoke-static {v0}, Lorg/xbill/DNS/APLRecord;->addressLength([B)I

    move-result v2

    .line 277
    :goto_1
    iget-boolean v3, p0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-eqz v3, :cond_3

    .line 278
    or-int/lit16 v3, v2, 0x80

    .line 280
    :goto_2
    iget v4, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 281
    iget v4, p0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 282
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 283
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 274
    array-length v2, v0

    goto :goto_1

    .line 285
    :cond_2
    return-void

    :cond_3
    move v3, v2

    goto :goto_2
.end method
