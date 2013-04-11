.class public Lorg/xbill/DNS/Master;
.super Ljava/lang/Object;
.source "Master.java"


# instance fields
.field private currentDClass:I

.field private currentTTL:J

.field private currentType:I

.field private defaultTTL:J

.field private file:Ljava/io/File;

.field private generator:Lorg/xbill/DNS/Generator;

.field private generators:Ljava/util/List;

.field private included:Lorg/xbill/DNS/Master;

.field private last:Lorg/xbill/DNS/Record;

.field private needSOATTL:Z

.field private noExpandGenerate:Z

.field private origin:Lorg/xbill/DNS/Name;

.field private st:Lorg/xbill/DNS/Tokenizer;


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    .line 22
    iput-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 34
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    .line 38
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    .line 39
    iput-object p2, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 40
    iput-wide p3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    .line 22
    iput-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 84
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 87
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    .line 88
    iput-object p2, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 89
    iput-wide p3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 53
    return-void
.end method

.method private endGenerate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    .line 250
    return-void
.end method

.method private nextGenerated()Lorg/xbill/DNS/Record;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    invoke-virtual {v0}, Lorg/xbill/DNS/Generator;->nextRecord()Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Lorg/xbill/DNS/Tokenizer$TokenizerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$TokenizerException;->getBaseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private parseTTLClassAndType()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 124
    .line 133
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    if-ltz v2, :cond_0

    .line 136
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    .line 140
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    .line 142
    :try_start_0
    invoke-static {v1}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    .line 143
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 153
    invoke-static {v1}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    if-ltz v0, :cond_3

    .line 154
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_1
    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Master;->currentType:I

    if-gez v1, :cond_5

    .line 161
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 145
    :catch_0
    move-exception v2

    .line 146
    iget-wide v2, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    cmp-long v2, v2, v5

    if-ltz v2, :cond_2

    .line 147
    iget-wide v2, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    iput-wide v2, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    goto :goto_0

    .line 148
    :cond_2
    iget-object v2, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    goto :goto_0

    .line 156
    :cond_3
    iput v4, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 166
    :cond_5
    iget-wide v0, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_7

    .line 167
    iget v0, p0, Lorg/xbill/DNS/Master;->currentType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    .line 168
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const-string v1, "missing TTL"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 169
    :cond_6
    iput-boolean v4, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    .line 170
    iput-wide v5, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    .line 172
    :cond_7
    return-void
.end method

.method private parseUInt32(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v4

    .line 185
    :cond_0
    :goto_0
    return-wide v0

    .line 179
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 180
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :cond_2
    move-wide v0, v4

    .line 181
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    move-wide v0, v4

    .line 185
    goto :goto_0
.end method

.method private startGenerate()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    .line 196
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 198
    if-gez v1, :cond_0

    .line 199
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid $GENERATE range specifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 200
    :cond_0
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 201
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    const/4 v3, 0x0

    .line 203
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 204
    if-ltz v4, :cond_6

    .line 205
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v5, v3

    move-object v3, v1

    .line 208
    :goto_0
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v1

    .line 209
    invoke-direct {p0, v3}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v3

    .line 211
    if-eqz v5, :cond_2

    .line 212
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Master;->parseUInt32(Ljava/lang/String;)J

    move-result-wide v5

    .line 215
    :goto_1
    cmp-long v7, v1, v8

    if-ltz v7, :cond_1

    cmp-long v7, v3, v8

    if-ltz v7, :cond_1

    cmp-long v7, v1, v3

    if-gtz v7, :cond_1

    cmp-long v7, v5, v8

    if-gtz v7, :cond_3

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid $GENERATE range specifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 214
    :cond_2
    const-wide/16 v5, 0x1

    goto :goto_1

    .line 219
    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 223
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->parseTTLClassAndType()V

    .line 224
    iget v0, p0, Lorg/xbill/DNS/Master;->currentType:I

    invoke-static {v0}, Lorg/xbill/DNS/Generator;->supportedType(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$GENERATE does not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/xbill/DNS/Master;->currentType:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 229
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v12

    .line 233
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 234
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 236
    new-instance v0, Lorg/xbill/DNS/Generator;

    iget v8, p0, Lorg/xbill/DNS/Master;->currentType:I

    iget v9, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    iget-wide v10, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    iget-object v13, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    invoke-direct/range {v0 .. v13}, Lorg/xbill/DNS/Generator;-><init>(JJJLjava/lang/String;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    .line 239
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    if-nez v0, :cond_5

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    .line 241
    :cond_5
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void

    :cond_6
    move-object v5, v3

    move-object v3, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public _nextRecord()Lorg/xbill/DNS/Record;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 277
    iget-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    iput-object v4, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 283
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    if-eqz v0, :cond_3

    .line 284
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->nextGenerated()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->endGenerate()V

    .line 292
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0, v3, v7}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 293
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 294
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 295
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eq v1, v3, :cond_3

    .line 297
    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v0, :cond_4

    move-object v0, v4

    .line 298
    goto :goto_0

    .line 300
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 301
    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-nez v0, :cond_5

    .line 302
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    const-string v1, "no owner"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 303
    :cond_5
    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 364
    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->parseTTLClassAndType()V

    .line 365
    iget v1, p0, Lorg/xbill/DNS/Master;->currentType:I

    iget v2, p0, Lorg/xbill/DNS/Master;->currentDClass:I

    iget-wide v3, p0, Lorg/xbill/DNS/Master;->currentTTL:J

    iget-object v5, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    iget-object v6, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    .line 367
    iget-boolean v0, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    if-eqz v0, :cond_7

    .line 368
    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    check-cast v0, Lorg/xbill/DNS/SOARecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v0

    .line 369
    iget-object v2, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v2, v0, v1}, Lorg/xbill/DNS/Record;->setTTL(J)V

    .line 370
    iput-wide v0, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 371
    iput-boolean v7, p0, Lorg/xbill/DNS/Master;->needSOATTL:Z

    .line 373
    :cond_7
    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    goto :goto_0

    .line 305
    :cond_8
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eq v1, v3, :cond_3

    .line 307
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v1, :cond_9

    move-object v0, v4

    .line 308
    goto :goto_0

    .line 309
    :cond_9
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_12

    .line 310
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 312
    const-string v1, "$ORIGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 313
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 314
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    goto/16 :goto_1

    .line 316
    :cond_a
    const-string v1, "$TTL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 317
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    .line 318
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    goto/16 :goto_1

    .line 320
    :cond_b
    const-string v1, "$INCLUDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 321
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    if-eqz v1, :cond_d

    .line 324
    iget-object v1, p0, Lorg/xbill/DNS/Master;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 329
    :goto_3
    iget-object v1, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    .line 330
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 332
    iget-object v1, v2, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Master;->parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 336
    :cond_c
    new-instance v2, Lorg/xbill/DNS/Master;

    iget-wide v3, p0, Lorg/xbill/DNS/Master;->defaultTTL:J

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    iput-object v2, p0, Lorg/xbill/DNS/Master;->included:Lorg/xbill/DNS/Master;

    .line 342
    invoke-virtual {p0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    goto/16 :goto_0

    .line 327
    :cond_d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    .line 343
    :cond_e
    const-string v1, "$GENERATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 344
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generator:Lorg/xbill/DNS/Generator;

    if-eqz v0, :cond_f

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot nest $GENERATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_f
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->startGenerate()V

    .line 348
    iget-boolean v0, p0, Lorg/xbill/DNS/Master;->noExpandGenerate:Z

    if-eqz v0, :cond_10

    .line 349
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->endGenerate()V

    goto/16 :goto_1

    .line 352
    :cond_10
    invoke-direct {p0}, Lorg/xbill/DNS/Master;->nextGenerated()Lorg/xbill/DNS/Record;

    move-result-object v0

    goto/16 :goto_0

    .line 354
    :cond_11
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 357
    :cond_12
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lorg/xbill/DNS/Master;->origin:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Master;->parseName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 360
    iget-object v0, p0, Lorg/xbill/DNS/Master;->last:Lorg/xbill/DNS/Record;

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public expandGenerate(Z)V
    .locals 1
    .parameter

    .prologue
    .line 406
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/xbill/DNS/Master;->noExpandGenerate:Z

    .line 407
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->close()V

    .line 425
    return-void
.end method

.method public generators()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lorg/xbill/DNS/Master;->generators:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public nextRecord()Lorg/xbill/DNS/Record;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Master;->_nextRecord()Lorg/xbill/DNS/Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 391
    if-nez v0, :cond_0

    .line 392
    iget-object v1, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->close()V

    .line 395
    :cond_0
    return-object v0

    .line 391
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lorg/xbill/DNS/Master;->st:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->close()V

    :cond_1
    throw v1
.end method
