.class public Lorg/xbill/DNS/LOCRecord;
.super Lorg/xbill/DNS/Record;
.source "LOCRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x7db54773c7eed6c9L

.field private static w2:Ljava/text/NumberFormat;

.field private static w3:Ljava/text/NumberFormat;


# instance fields
.field private altitude:J

.field private hPrecision:J

.field private latitude:J

.field private longitude:J

.field private size:J

.field private vPrecision:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    .line 25
    sget-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    .line 28
    sget-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJDDDDDD)V
    .locals 6
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
    .line 51
    const/16 v2, 0x1d

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 52
    const-wide v0, 0x40ac200000000000L

    mul-double/2addr v0, p5

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41e0

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 53
    const-wide v0, 0x40ac200000000000L

    mul-double/2addr v0, p7

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41e0

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 54
    const-wide v0, 0x40f86a0000000000L

    add-double/2addr v0, p9

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 55
    const-wide/high16 v0, 0x4059

    mul-double v0, v0, p11

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 56
    const-wide/high16 v0, 0x4059

    mul-double v0, v0, p13

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 57
    const-wide/high16 v0, 0x4059

    mul-double v0, v0, p15

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 58
    return-void
.end method

.method private parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 137
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    if-eqz p3, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid LOC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    move-wide v0, p8

    .line 151
    :cond_1
    return-wide v0

    .line 144
    :cond_2
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_3

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_3
    const-wide/high16 v1, 0x4059

    :try_start_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide v3

    mul-double v0, v1, v3

    double-to-long v0, v0

    .line 149
    cmp-long v2, v0, p4

    if-ltz v2, :cond_4

    cmp-long v2, v0, p6

    if-lez v2, :cond_1

    .line 150
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid LOC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid LOC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private parseFixedPoint(Ljava/lang/String;)D
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 79
    const-string v0, "^\\d+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    .line 86
    :goto_0
    return-wide v0

    .line 81
    :cond_0
    const-string v0, "^\\d+\\.\\d*$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    .line 84
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    .line 85
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 86
    const-wide/high16 v5, 0x4024

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    add-double v0, v1, v3

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method private static parseLOCformat(I)J
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 293
    shr-int/lit8 v0, p0, 0x4

    int-to-long v0, v0

    .line 294
    and-int/lit8 v2, p0, 0xf

    .line 295
    const-wide/16 v3, 0x9

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    const/16 v3, 0x9

    if-le v2, v3, :cond_2

    .line 296
    :cond_0
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "Invalid LOC Encoding"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_1

    .line 298
    const-wide/16 v4, 0xa

    mul-long v0, v1, v4

    move-wide v6, v0

    move-wide v1, v6

    move v0, v3

    goto :goto_0

    .line 299
    :cond_1
    return-wide v1

    :cond_2
    move v6, v2

    move-wide v7, v0

    move-wide v1, v7

    move v0, v6

    goto :goto_0
.end method

.method private parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J
    .locals 17
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v2, "latitude"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 94
    const/4 v3, 0x0

    .line 95
    const-wide/16 v4, 0x0

    .line 99
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v6

    .line 100
    const/16 v7, 0xb4

    if-gt v6, v7, :cond_0

    const/16 v7, 0x5a

    if-le v6, v7, :cond_1

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid LOC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " degrees"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 103
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v7

    .line 105
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    if-ltz v3, :cond_2

    const/16 v8, 0x3b

    if-le v3, v8, :cond_3

    .line 107
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid LOC "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " minutes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v8

    throw v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    move-exception v8

    move-object/from16 v16, v7

    move v7, v3

    move-object/from16 v3, v16

    .line 116
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid LOC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 108
    :cond_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v7

    .line 109
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide v4

    .line 110
    const-wide/16 v8, 0x0

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_4

    const-wide/high16 v8, 0x404e

    cmpl-double v8, v4, v8

    if-ltz v8, :cond_5

    .line 111
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid LOC "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v8

    throw v8

    .line 112
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    move-object/from16 v16, v7

    move v7, v3

    move-object/from16 v3, v16

    .line 114
    goto :goto_0

    .line 119
    :cond_6
    const-wide v8, 0x408f400000000000L

    const-wide/16 v10, 0x3c

    int-to-long v12, v7

    const-wide/16 v14, 0x3c

    int-to-long v6, v6

    mul-long/2addr v6, v14

    add-long/2addr v6, v12

    mul-long/2addr v6, v10

    long-to-double v6, v6

    add-double/2addr v4, v6

    mul-double/2addr v4, v8

    double-to-long v4, v4

    .line 121
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 122
    if-eqz v2, :cond_7

    const/16 v6, 0x53

    if-eq v3, v6, :cond_8

    :cond_7
    if-nez v2, :cond_9

    const/16 v6, 0x57

    if-ne v3, v6, :cond_9

    .line 123
    :cond_8
    neg-long v2, v4

    .line 127
    :goto_1
    const-wide v4, 0x80000000L

    add-long/2addr v2, v4

    .line 129
    return-wide v2

    .line 124
    :cond_9
    if-eqz v2, :cond_a

    const/16 v6, 0x4e

    if-ne v3, v6, :cond_b

    :cond_a
    if-nez v2, :cond_c

    const/16 v2, 0x45

    if-eq v3, v2, :cond_c

    .line 125
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid LOC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    :cond_c
    move-wide v2, v4

    goto :goto_1
.end method

.method private positionToString(JCC)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    const-wide v2, 0x80000000L

    sub-long v2, p1, v2

    .line 189
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 190
    neg-long v2, v2

    move v7, p4

    .line 195
    :goto_0
    const-wide/32 v4, 0x36ee80

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 196
    const-wide/32 v4, 0x36ee80

    rem-long/2addr v2, v4

    .line 197
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-wide/32 v4, 0xea60

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 200
    const-wide/32 v4, 0xea60

    rem-long v3, v2, v4

    .line 201
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    sget-object v2, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const-wide/16 v5, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 204
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v7, p3

    .line 193
    goto :goto_0
.end method

.method private renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    div-long v0, p3, p5

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 176
    rem-long v0, p3, p5

    .line 177
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 178
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_0
    return-void
.end method

.method private toLOCformat(J)I
    .locals 5
    .parameter

    .prologue
    .line 304
    const/4 v0, 0x0

    move-wide v1, p1

    .line 305
    :goto_0
    const-wide/16 v3, 0x9

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 306
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 307
    const-wide/16 v3, 0xa

    div-long/2addr v1, v3

    goto :goto_0

    .line 309
    :cond_0
    const/4 v3, 0x4

    shl-long/2addr v1, v3

    int-to-long v3, v0

    add-long v0, v1, v3

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getAltitude()D
    .locals 4

    .prologue
    .line 259
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v2, 0x989680

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getHPrecision()D
    .locals 4

    .prologue
    .line 271
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitude()D
    .locals 4

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitude()D
    .locals 4

    .prologue
    .line 253
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/xbill/DNS/LOCRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/LOCRecord;-><init>()V

    return-object v0
.end method

.method public getSize()D
    .locals 4

    .prologue
    .line 265
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getVPrecision()D
    .locals 4

    .prologue
    .line 277
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    return-wide v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const-string v0, "latitude"

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 161
    const-string v0, "longitude"

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 162
    const-string v2, "altitude"

    const/4 v3, 0x1

    const-wide/32 v4, -0x989680

    const-wide v6, 0xff67697fL

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 164
    const-string v2, "size"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x218711a00L

    const-wide/16 v8, 0x64

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 165
    const-string v2, "horizontal precision"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x218711a00L

    const-wide/32 v8, 0xf4240

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 167
    const-string v2, "vertical precision"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x218711a00L

    const-wide/16 v8, 0x3e8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 169
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "Invalid LOC version"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 69
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 70
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 71
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 73
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 74
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v5, 0x64

    .line 215
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    iget-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const/16 v0, 0x4e

    const/16 v4, 0x53

    invoke-direct {p0, v2, v3, v0, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    iget-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const/16 v0, 0x45

    const/16 v4, 0x57

    invoke-direct {p0, v2, v3, v0, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    sget-object v2, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v3, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v7, 0x989680

    sub-long/2addr v3, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 227
    const-string v0, "m "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    sget-object v2, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v3, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 231
    const-string v0, "m "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    sget-object v2, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v3, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 235
    const-string v0, "m "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    sget-object v2, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v3, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 239
    const-string v0, "m"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 283
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 284
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 285
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 286
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 287
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 288
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 289
    return-void
.end method
