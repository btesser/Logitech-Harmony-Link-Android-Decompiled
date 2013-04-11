.class public Lorg/xbill/DNS/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final LABEL_COMPRESSION:I = 0xc0

.field private static final LABEL_MASK:I = 0xc0

.field private static final LABEL_NORMAL:I = 0x0

.field private static final MAXLABEL:I = 0x3f

.field private static final MAXLABELS:I = 0x80

.field private static final MAXNAME:I = 0xff

.field private static final MAXOFFSETS:I = 0x7

.field private static final byteFormat:Ljava/text/DecimalFormat; = null

.field public static final empty:Lorg/xbill/DNS/Name; = null

.field private static final emptyLabel:[B = null

.field private static final lowercase:[B = null

.field public static final root:Lorg/xbill/DNS/Name; = null

.field private static final serialVersionUID:J = -0x64b61d2fdd88b60cL

.field private static final wild:Lorg/xbill/DNS/Name;

.field private static final wildLabel:[B


# instance fields
.field private hashcode:I

.field private name:[B

.field private offsets:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x41

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-array v0, v4, [B

    aput-byte v3, v0, v3

    sput-object v0, Lorg/xbill/DNS/Name;->emptyLabel:[B

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/xbill/DNS/Name;->wildLabel:[B

    .line 57
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    .line 60
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lorg/xbill/DNS/Name;->lowercase:[B

    .line 66
    sget-object v0, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    move v0, v3

    .line 67
    :goto_0
    sget-object v1, Lorg/xbill/DNS/Name;->lowercase:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 68
    if-lt v0, v5, :cond_0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 69
    :cond_0
    sget-object v1, Lorg/xbill/DNS/Name;->lowercase:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    sget-object v1, Lorg/xbill/DNS/Name;->lowercase:[B

    sub-int v2, v0, v5

    add-int/lit8 v2, v2, 0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_1

    .line 73
    :cond_2
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 74
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {v0, v1, v3, v4}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 75
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    .line 76
    sget-object v0, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    new-array v1, v3, [B

    iput-object v1, v0, Lorg/xbill/DNS/Name;->name:[B

    .line 77
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    .line 78
    sget-object v0, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/Name;->wildLabel:[B

    invoke-direct {v0, v1, v3, v4}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 79
    return-void

    .line 36
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x2at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "empty name"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 208
    :cond_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    if-nez p2, :cond_2

    .line 210
    sget-object v0, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    invoke-static {v0, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    invoke-static {p2, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 214
    :cond_3
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v0, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 218
    :cond_4
    const/4 v0, -0x1

    .line 219
    const/4 v1, 0x1

    .line 220
    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 221
    const/4 v3, 0x0

    .line 222
    const/4 v4, 0x0

    .line 223
    const/4 v5, 0x0

    .line 224
    const/4 v6, 0x0

    .line 225
    const/4 v7, 0x0

    move v10, v7

    move v7, v0

    move v0, v10

    move v11, v4

    move v4, v3

    move v3, v11

    move v12, v1

    move v1, v5

    move v5, v12

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_f

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    .line 227
    if-eqz v4, :cond_9

    .line 228
    const/16 v9, 0x30

    if-lt v8, v9, :cond_7

    const/16 v9, 0x39

    if-gt v8, v9, :cond_7

    const/4 v9, 0x3

    if-ge v3, v9, :cond_7

    .line 229
    add-int/lit8 v3, v3, 0x1

    .line 230
    mul-int/lit8 v1, v1, 0xa

    .line 231
    const/16 v9, 0x30

    sub-int/2addr v8, v9

    add-int/2addr v1, v8

    .line 232
    const/16 v8, 0xff

    if-le v1, v8, :cond_5

    .line 233
    const-string v0, "bad escape"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 234
    :cond_5
    const/4 v8, 0x3

    if-ge v3, v8, :cond_6

    .line 225
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_6
    int-to-byte v4, v1

    move v10, v4

    move v4, v3

    move v3, v1

    move v1, v10

    .line 240
    :goto_3
    const/16 v7, 0x3f

    if-le v5, v7, :cond_8

    .line 241
    const-string v0, "label too long"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 238
    :cond_7
    if-lez v3, :cond_13

    const/4 v4, 0x3

    if-ge v3, v4, :cond_13

    .line 239
    const-string v0, "bad escape"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 243
    :cond_8
    add-int/lit8 v7, v5, 0x1

    aput-byte v1, v2, v5

    .line 244
    const/4 v1, 0x0

    move v10, v3

    move v3, v4

    move v4, v1

    move v1, v10

    move v11, v7

    move v7, v5

    move v5, v11

    goto :goto_2

    .line 245
    :cond_9
    const/16 v9, 0x5c

    if-ne v8, v9, :cond_a

    .line 246
    const/4 v1, 0x1

    .line 247
    const/4 v3, 0x0

    .line 248
    const/4 v4, 0x0

    move v10, v4

    move v4, v1

    move v1, v10

    goto :goto_2

    .line 249
    :cond_a
    const/16 v9, 0x2e

    if-ne v8, v9, :cond_c

    .line 250
    const/4 v8, -0x1

    if-ne v7, v8, :cond_b

    .line 251
    const-string v0, "invalid empty label"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 252
    :cond_b
    const/4 v7, 0x0

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v2, v7

    .line 253
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1, v2, v5, v7}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 254
    const/4 v5, -0x1

    .line 255
    const/4 v7, 0x1

    move v10, v7

    move v7, v5

    move v5, v10

    goto :goto_2

    .line 257
    :cond_c
    const/4 v9, -0x1

    if-ne v7, v9, :cond_d

    move v7, v0

    .line 259
    :cond_d
    const/16 v9, 0x3f

    if-le v5, v9, :cond_e

    .line 260
    const-string v0, "label too long"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 261
    :cond_e
    add-int/lit8 v9, v5, 0x1

    aput-byte v8, v2, v5

    move v5, v9

    goto :goto_2

    .line 264
    :cond_f
    if-lez v3, :cond_10

    const/4 v0, 0x3

    if-ge v3, v0, :cond_10

    .line 265
    const-string v0, "bad escape"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 266
    :cond_10
    if-eqz v4, :cond_11

    .line 267
    const-string v0, "bad escape"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 268
    :cond_11
    const/4 v0, -0x1

    if-ne v7, v0, :cond_12

    .line 269
    sget-object v0, Lorg/xbill/DNS/Name;->emptyLabel:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 270
    const/4 v0, 0x1

    .line 275
    :goto_4
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p2, Lorg/xbill/DNS/Name;->name:[B

    const/4 v1, 0x0

    invoke-direct {p2}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    goto/16 :goto_0

    .line 272
    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x1

    sub-int v1, v5, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    move v0, v6

    goto :goto_4

    :cond_13
    move v4, v3

    move v3, v1

    move v1, v8

    goto/16 :goto_3
.end method

.method public constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/16 v0, 0x40

    new-array v0, v0, [B

    move v1, v7

    move v2, v7

    .line 350
    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 351
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 352
    and-int/lit16 v4, v3, 0xc0

    sparse-switch v4, :sswitch_data_0

    .line 384
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "bad label type"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :sswitch_0
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v4

    const/16 v5, 0x80

    if-lt v4, v5, :cond_1

    .line 355
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "too many labels"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    if-nez v3, :cond_2

    .line 357
    sget-object v2, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {p0, v2, v7, v8}, Lorg/xbill/DNS/Name;->append([BII)V

    move v2, v8

    .line 358
    goto :goto_0

    .line 360
    :cond_2
    int-to-byte v4, v3

    aput-byte v4, v0, v7

    .line 361
    invoke-virtual {p1, v0, v8, v3}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    .line 362
    invoke-direct {p0, v0, v7, v8}, Lorg/xbill/DNS/Name;->append([BII)V

    goto :goto_0

    .line 366
    :sswitch_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 367
    and-int/lit16 v3, v3, -0xc1

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    .line 368
    const-string v4, "verbosecompression"

    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 369
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currently "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pointer to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_4

    .line 373
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "bad compression"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_4
    if-nez v1, :cond_5

    .line 375
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->save()V

    move v1, v8

    .line 378
    :cond_5
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 379
    const-string v4, "verbosecompression"

    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', seeking to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    :cond_6
    if-eqz v1, :cond_7

    .line 388
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->restore()V

    .line 390
    :cond_7
    return-void

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc0 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 409
    if-le p2, v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempted to remove too many labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    iput-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 413
    sub-int v1, v0, p2

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 414
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    sub-int v2, v0, p2

    if-ge v1, v2, :cond_1

    .line 415
    add-int v2, v1, p2

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :cond_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 399
    return-void
.end method

.method private final append([BII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 141
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    move v1, p2

    move v2, v7

    move v3, v7

    .line 143
    :goto_1
    if-ge v2, p3, :cond_2

    .line 144
    aget-byte v4, p1, v1

    .line 145
    const/16 v5, 0x3f

    if-le v4, v5, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v0, v0

    invoke-direct {p0, v7}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 147
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 148
    add-int/2addr v1, v4

    .line 149
    add-int/2addr v3, v4

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    :cond_2
    add-int v1, v0, v3

    .line 152
    const/16 v2, 0xff

    if-le v1, v2, :cond_3

    .line 153
    new-instance v0, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v0}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v0

    .line 154
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v2

    .line 155
    add-int v4, v2, p3

    .line 156
    const/16 v5, 0x80

    if-le v4, v5, :cond_4

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too many labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_4
    new-array v1, v1, [B

    .line 159
    if-eqz v0, :cond_5

    .line 160
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v7}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v6

    invoke-static {v5, v6, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_5
    invoke-static {p1, p2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    move v3, v7

    .line 163
    :goto_2
    if-ge v3, p3, :cond_6

    .line 164
    add-int v5, v2, v3

    invoke-direct {p0, v5, v0}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 165
    aget-byte v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 167
    :cond_6
    invoke-direct {p0, v4}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 168
    return-void
.end method

.method private final appendFromString(Ljava/lang/String;[BII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v0, "Name too long"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private final appendSafe([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private byteString([BI)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x5c

    .line 566
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 567
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    move v3, v1

    .line 568
    :goto_0
    add-int v4, v1, v2

    if-ge v3, v4, :cond_4

    .line 569
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    .line 570
    const/16 v5, 0x20

    if-le v4, v5, :cond_0

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_1

    .line 571
    :cond_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 572
    sget-object v5, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    :cond_1
    const/16 v5, 0x22

    if-eq v4, v5, :cond_2

    const/16 v5, 0x28

    if-eq v4, v5, :cond_2

    const/16 v5, 0x29

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_2

    if-eq v4, v8, :cond_2

    const/16 v5, 0x40

    if-eq v4, v5, :cond_2

    const/16 v5, 0x24

    if-ne v4, v5, :cond_3

    .line 577
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 581
    :cond_3
    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 583
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 432
    :goto_0
    return-object v0

    .line 429
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 430
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 431
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p1}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V

    goto :goto_0
.end method

.method private static final copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 124
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    iput-object v0, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 126
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    iput-wide v0, p1, Lorg/xbill/DNS/Name;->offsets:J

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 130
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    .line 131
    new-array v3, v1, [B

    iput-object v3, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 132
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v4, p1, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v3, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v5

    .line 133
    :goto_1
    if-ge v1, v2, :cond_1

    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    .line 134
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {p1, v1, v3}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_1
    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->setlabels(I)V

    goto :goto_0
.end method

.method private final equals([BI)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 734
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 735
    invoke-direct {p0, v9}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    move v2, v9

    move v3, p2

    :goto_0
    if-ge v2, v0, :cond_4

    .line 736
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v1

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_0

    move v0, v9

    .line 747
    :goto_1
    return v0

    .line 738
    :cond_0
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v4, v1

    .line 739
    add-int/lit8 v3, v3, 0x1

    .line 740
    const/16 v4, 0x3f

    if-le v1, v4, :cond_1

    .line 741
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v4, v5

    move v5, v3

    move v3, v9

    .line 742
    :goto_2
    if-ge v3, v1, :cond_3

    .line 743
    sget-object v6, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v6, v4

    sget-object v6, Lorg/xbill/DNS/Name;->lowercase:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v6, v5

    if-eq v4, v5, :cond_2

    move v0, v9

    .line 745
    goto :goto_1

    .line 742
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v8

    move v5, v7

    goto :goto_2

    .line 735
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v3, v5

    move v1, v4

    goto :goto_0

    .line 747
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 3
    .parameter

    .prologue
    .line 331
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 301
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 306
    :goto_0
    return-object v0

    .line 303
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 306
    :cond_1
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    goto :goto_0
.end method

.method private final getlabels()I
    .locals 4

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private final offset(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x6

    .line 96
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 98
    :cond_0
    if-ltz p1, :cond_1

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    if-ge p1, v2, :cond_3

    .line 101
    sub-int v0, v2, p1

    mul-int/lit8 v0, v0, 0x8

    .line 102
    iget-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    ushr-long v0, v1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    move v3, v1

    move v1, v0

    move v0, v3

    .line 105
    :goto_1
    if-ge v0, p1, :cond_4

    .line 106
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method private static parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final setlabels(I)V
    .locals 4
    .parameter

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 114
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 115
    return-void
.end method

.method private final setoffset(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x7

    .line 87
    if-lt p1, v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 90
    iget-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v3, 0xff

    shl-long/2addr v3, v0

    const-wide/16 v5, -0x1

    xor-long/2addr v3, v5

    and-long/2addr v1, v3

    iput-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 91
    iget-wide v1, p0, Lorg/xbill/DNS/Name;->offsets:J

    int-to-long v3, p2

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    .line 796
    check-cast p1, Lorg/xbill/DNS/Name;

    .line 798
    if-ne p0, p1, :cond_0

    move v0, v13

    .line 819
    :goto_0
    return v0

    .line 801
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 802
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 803
    if-le v0, v1, :cond_1

    move v2, v1

    .line 805
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-gt v3, v2, :cond_5

    .line 806
    sub-int v4, v0, v3

    invoke-direct {p0, v4}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v4

    .line 807
    sub-int v5, v1, v3

    invoke-direct {p1, v5}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    .line 808
    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v6, v6, v4

    .line 809
    iget-object v7, p1, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v7, v7, v5

    move v8, v13

    .line 810
    :goto_3
    if-ge v8, v6, :cond_3

    if-ge v8, v7, :cond_3

    .line 811
    sget-object v9, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v10, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int v11, v8, v4

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    sget-object v10, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v11, p1, Lorg/xbill/DNS/Name;->name:[B

    add-int v12, v8, v5

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    sub-int/2addr v9, v10

    .line 813
    if-eqz v9, :cond_2

    move v0, v9

    .line 814
    goto :goto_0

    :cond_1
    move v2, v0

    .line 803
    goto :goto_1

    .line 810
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 816
    :cond_3
    if-eq v6, v7, :cond_4

    .line 817
    sub-int v0, v6, v7

    goto :goto_0

    .line 805
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 819
    :cond_5
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 755
    if-ne p1, p0, :cond_0

    .line 756
    const/4 v0, 0x1

    .line 768
    :goto_0
    return v0

    .line 757
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/xbill/DNS/Name;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 758
    goto :goto_0

    .line 759
    :cond_2
    check-cast p1, Lorg/xbill/DNS/Name;

    .line 760
    iget v0, p1, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v0, :cond_3

    .line 761
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 762
    :cond_3
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v0, :cond_4

    .line 763
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 764
    :cond_4
    iget v0, p1, Lorg/xbill/DNS/Name;->hashcode:I

    iget v1, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 765
    goto :goto_0

    .line 766
    :cond_5
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    if-eq v0, v1, :cond_6

    move v0, v2

    .line 767
    goto :goto_0

    .line 768
    :cond_6
    iget-object v0, p1, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v0

    goto :goto_0
.end method

.method public fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 484
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 485
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 486
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    const/4 v0, 0x0

    .line 509
    :goto_0
    return-object v0

    .line 489
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    sub-int/2addr v2, v3

    .line 490
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v3

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    sub-int v0, v3, v0

    .line 491
    invoke-direct {p0, v9}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    .line 493
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v4

    .line 494
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v5

    .line 496
    add-int v6, v0, v5

    const/16 v7, 0xff

    if-le v6, v7, :cond_1

    .line 497
    new-instance v0, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v0}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v0

    .line 499
    :cond_1
    new-instance v6, Lorg/xbill/DNS/Name;

    invoke-direct {v6}, Lorg/xbill/DNS/Name;-><init>()V

    .line 500
    add-int v7, v2, v4

    invoke-direct {v6, v7}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 501
    add-int v7, v0, v5

    new-array v7, v7, [B

    iput-object v7, v6, Lorg/xbill/DNS/Name;->name:[B

    .line 502
    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v8, v6, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v7, v3, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget-object v1, v1, Lorg/xbill/DNS/Name;->name:[B

    iget-object v3, v6, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v1, v9, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v9

    move v1, v9

    .line 505
    :goto_1
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    add-int v3, v2, v4

    if-ge v1, v3, :cond_2

    .line 506
    invoke-direct {v6, v1, v0}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 507
    iget-object v3, v6, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v3, v3, v0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v6

    .line 509
    goto :goto_0
.end method

.method public getLabel(I)[B
    .locals 5
    .parameter

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 621
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 622
    new-array v2, v1, [B

    .line 623
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    return-object v2
.end method

.method public getLabelString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 635
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 776
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eqz v0, :cond_0

    .line 777
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    .line 782
    :goto_0
    return v0

    .line 779
    :cond_0
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 780
    shl-int/lit8 v2, v1, 0x3

    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 781
    :cond_1
    iput v1, p0, Lorg/xbill/DNS/Name;->hashcode:I

    .line 782
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 527
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 529
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public isWild()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 517
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 519
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v0, v0, v2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v0, v0, v3

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public labels()I
    .locals 1

    .prologue
    .line 547
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    return v0
.end method

.method public length()S
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 539
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v0, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 443
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 452
    :goto_0
    return-object v0

    .line 445
    :cond_1
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 446
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 447
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->length()S

    move-result v2

    sub-int/2addr v1, v2

    .line 448
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    sub-int/2addr v2, v3

    .line 449
    invoke-direct {v0, v2}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 450
    new-array v2, v1, [B

    iput-object v2, v0, Lorg/xbill/DNS/Name;->name:[B

    .line 451
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    iget-object v4, v0, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public subdomain(Lorg/xbill/DNS/Name;)Z
    .locals 3
    .parameter

    .prologue
    .line 555
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 556
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 557
    if-le v1, v0, :cond_0

    .line 558
    const/4 v0, 0x0

    .line 561
    :goto_0
    return v0

    .line 559
    :cond_0
    if-ne v1, v0, :cond_1

    .line 560
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 561
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    invoke-direct {p1, v2, v0}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 592
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 593
    if-nez v0, :cond_0

    .line 594
    const-string v0, "@"

    .line 610
    :goto_0
    return-object v0

    .line 595
    :cond_0
    if-ne v0, v6, :cond_1

    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    aget-byte v1, v1, v2

    if-nez v1, :cond_1

    .line 596
    const-string v0, "."

    goto :goto_0

    .line 597
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 598
    invoke-direct {p0, v3}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 599
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v2

    .line 600
    const/16 v5, 0x3f

    if-le v4, v5, :cond_2

    .line 601
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_2
    if-nez v4, :cond_5

    .line 608
    :cond_3
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_4

    .line 609
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 610
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 604
    :cond_5
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v5, v2}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 606
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 598
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 646
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toWire() called on non-absolute name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    move v1, v5

    .line 651
    :goto_0
    const/4 v2, 0x1

    sub-int v2, v0, v2

    if-ge v1, v2, :cond_5

    .line 653
    if-nez v1, :cond_2

    move-object v2, p0

    .line 657
    :goto_1
    const/4 v3, -0x1

    .line 658
    if-eqz p2, :cond_1

    .line 659
    invoke-virtual {p2, v2}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v3

    .line 660
    :cond_1
    if-ltz v3, :cond_3

    .line 661
    const v0, 0xc000

    or-int/2addr v0, v3

    .line 662
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 672
    :goto_2
    return-void

    .line 656
    :cond_2
    new-instance v2, Lorg/xbill/DNS/Name;

    invoke-direct {v2, p0, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    goto :goto_1

    .line 665
    :cond_3
    if-eqz p2, :cond_4

    .line 666
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v3

    invoke-virtual {p2, v3, v2}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 667
    :cond_4
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    .line 668
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v3, v2, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_5
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_2
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    if-eqz p3, :cond_0

    .line 727
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 730
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    goto :goto_0
.end method

.method public toWire()[B
    .locals 2

    .prologue
    .line 680
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 681
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 682
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V
    .locals 1
    .parameter

    .prologue
    .line 691
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v0

    .line 692
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 693
    return-void
.end method

.method public toWireCanonical()[B
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 701
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 702
    if-nez v0, :cond_0

    .line 703
    new-array v0, v11, [B

    .line 713
    :goto_0
    return-object v0

    .line 704
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v1, v1

    invoke-direct {p0, v11}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 705
    invoke-direct {p0, v11}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    move v3, v2

    move v4, v11

    move v2, v11

    :goto_1
    if-ge v4, v0, :cond_3

    .line 706
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v5, v5, v3

    .line 707
    const/16 v6, 0x3f

    if-le v5, v6, :cond_1

    .line 708
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_1
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v8, v3, 0x1

    aget-byte v3, v7, v3

    aput-byte v3, v1, v2

    move v2, v11

    move v3, v6

    move v6, v8

    .line 710
    :goto_2
    if-ge v2, v5, :cond_2

    .line 711
    add-int/lit8 v7, v3, 0x1

    sget-object v8, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v9, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v8, v6

    aput-byte v6, v1, v3

    .line 710
    add-int/lit8 v2, v2, 0x1

    move v3, v7

    move v6, v10

    goto :goto_2

    .line 705
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    move v3, v6

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 713
    goto :goto_0
.end method

.method public wild(I)Lorg/xbill/DNS/Name;
    .locals 4
    .parameter

    .prologue
    .line 461
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must replace 1 or more labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 466
    sget-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 467
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    return-object v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Name.wild: concatenate failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
