.class public Lorg/xbill/DNS/Generator;
.super Ljava/lang/Object;
.source "Generator.java"


# instance fields
.field private current:J

.field public final dclass:I

.field public end:J

.field public final namePattern:Ljava/lang/String;

.field public final origin:Lorg/xbill/DNS/Name;

.field public final rdataPattern:Ljava/lang/String;

.field public start:J

.field public step:J

.field public final ttl:J

.field public final type:I


# direct methods
.method public constructor <init>(JJJLjava/lang/String;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 2
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
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid range specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    invoke-static {p8}, Lorg/xbill/DNS/Generator;->supportedType(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    invoke-static {p9}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 84
    iput-wide p1, p0, Lorg/xbill/DNS/Generator;->start:J

    .line 85
    iput-wide p3, p0, Lorg/xbill/DNS/Generator;->end:J

    .line 86
    iput-wide p5, p0, Lorg/xbill/DNS/Generator;->step:J

    .line 87
    iput-object p7, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    .line 88
    iput p8, p0, Lorg/xbill/DNS/Generator;->type:I

    .line 89
    iput p9, p0, Lorg/xbill/DNS/Generator;->dclass:I

    .line 90
    iput-wide p10, p0, Lorg/xbill/DNS/Generator;->ttl:J

    .line 91
    iput-object p12, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    .line 92
    iput-object p13, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    .line 93
    iput-wide p1, p0, Lorg/xbill/DNS/Generator;->current:J

    .line 94
    return-void
.end method

.method private substitute(Ljava/lang/String;J)Ljava/lang/String;
    .locals 17
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    const/4 v3, 0x0

    move v15, v3

    move v3, v0

    move v0, v15

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_18

    .line 103
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 104
    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    const/4 v3, 0x0

    .line 102
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 108
    add-int/lit8 v3, v0, 0x1

    array-length v4, v1

    if-ne v3, v4, :cond_1

    .line 109
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string v1, "invalid escape character"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 112
    :cond_2
    const/16 v5, 0x24

    if-ne v4, v5, :cond_17

    .line 113
    const/4 v5, 0x0

    .line 114
    const-wide/16 v6, 0x0

    .line 115
    const-wide/16 v8, 0x0

    .line 116
    const-wide/16 v10, 0xa

    .line 117
    const/4 v12, 0x0

    .line 118
    add-int/lit8 v13, v0, 0x1

    array-length v14, v1

    if-ge v13, v14, :cond_3

    add-int/lit8 v13, v0, 0x1

    aget-byte v13, v1, v13

    const/16 v14, 0x24

    if-ne v13, v14, :cond_3

    .line 121
    add-int/lit8 v0, v0, 0x1

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 124
    :cond_3
    add-int/lit8 v13, v0, 0x1

    array-length v14, v1

    if-ge v13, v14, :cond_20

    add-int/lit8 v13, v0, 0x1

    aget-byte v13, v1, v13

    const/16 v14, 0x7b

    if-ne v13, v14, :cond_20

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 127
    add-int/lit8 v13, v0, 0x1

    array-length v14, v1

    if-ge v13, v14, :cond_1f

    add-int/lit8 v13, v0, 0x1

    aget-byte v13, v1, v13

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_1f

    .line 128
    const/4 v5, 0x1

    .line 129
    add-int/lit8 v0, v0, 0x1

    move-wide v15, v6

    move v6, v4

    move v7, v0

    move v0, v5

    move-wide v4, v15

    .line 131
    :goto_2
    add-int/lit8 v13, v7, 0x1

    array-length v14, v1

    if-ge v13, v14, :cond_4

    .line 132
    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    .line 133
    const/16 v13, 0x2c

    if-eq v7, v13, :cond_1e

    const/16 v13, 0x7d

    if-ne v7, v13, :cond_7

    move v15, v7

    move v7, v6

    move v6, v15

    .line 142
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 143
    neg-long v4, v4

    .line 145
    :cond_5
    const/16 v0, 0x2c

    if-ne v6, v0, :cond_1d

    move v0, v6

    move-wide v15, v8

    move v8, v7

    move-wide v6, v15

    .line 146
    :goto_4
    add-int/lit8 v9, v8, 0x1

    array-length v13, v1

    if-ge v9, v13, :cond_6

    .line 147
    add-int/lit8 v0, v8, 0x1

    aget-byte v8, v1, v0

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    .line 148
    const/16 v9, 0x2c

    if-eq v8, v9, :cond_1c

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_a

    move v15, v8

    move v8, v0

    move v0, v15

    .line 160
    :cond_6
    :goto_5
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_1b

    .line 161
    add-int/lit8 v0, v8, 0x1

    array-length v9, v1

    if-ne v0, v9, :cond_d

    .line 162
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string v1, "invalid base"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_7
    const/16 v13, 0x30

    if-lt v7, v13, :cond_8

    const/16 v13, 0x39

    if-le v7, v13, :cond_9

    .line 136
    :cond_8
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string v1, "invalid offset"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_9
    const/16 v13, 0x30

    sub-int/2addr v7, v13

    int-to-char v7, v7

    .line 139
    const-wide/16 v13, 0xa

    mul-long/2addr v4, v13

    .line 140
    int-to-long v13, v7

    add-long/2addr v4, v13

    move v15, v7

    move v7, v6

    move v6, v15

    goto :goto_2

    .line 150
    :cond_a
    const/16 v9, 0x30

    if-lt v8, v9, :cond_b

    const/16 v9, 0x39

    if-le v8, v9, :cond_c

    .line 151
    :cond_b
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string v1, "invalid width"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_c
    const/16 v9, 0x30

    sub-int/2addr v8, v9

    int-to-char v8, v8

    .line 155
    const-wide/16 v13, 0xa

    mul-long/2addr v6, v13

    .line 156
    int-to-long v13, v8

    add-long/2addr v6, v13

    move v15, v8

    move v8, v0

    move v0, v15

    goto :goto_4

    .line 164
    :cond_d
    add-int/lit8 v0, v8, 0x1

    aget-byte v8, v1, v0

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    .line 165
    const/16 v9, 0x6f

    if-ne v8, v9, :cond_f

    .line 166
    const-wide/16 v8, 0x8

    move v10, v0

    move v0, v12

    .line 178
    :goto_6
    add-int/lit8 v11, v10, 0x1

    array-length v12, v1

    if-eq v11, v12, :cond_e

    add-int/lit8 v11, v10, 0x1

    aget-byte v11, v1, v11

    const/16 v12, 0x7d

    if-eq v11, v12, :cond_12

    .line 179
    :cond_e
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string v1, "invalid modifiers"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_f
    const/16 v9, 0x78

    if-ne v8, v9, :cond_10

    .line 168
    const-wide/16 v8, 0x10

    move v10, v0

    move v0, v12

    goto :goto_6

    .line 169
    :cond_10
    const/16 v9, 0x58

    if-ne v8, v9, :cond_11

    .line 170
    const-wide/16 v8, 0x10

    .line 171
    const/4 v10, 0x1

    move v15, v10

    move v10, v0

    move v0, v15

    goto :goto_6

    .line 173
    :cond_11
    const/16 v9, 0x64

    if-eq v8, v9, :cond_1a

    .line 174
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string v1, "invalid base"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_12
    add-int/lit8 v10, v10, 0x1

    move-wide v15, v8

    move-wide v8, v4

    move-wide v4, v15

    .line 183
    :goto_7
    add-long v8, v8, p2

    .line 184
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-gez v11, :cond_13

    .line 185
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string v1, "invalid offset expansion"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_13
    const-wide/16 v11, 0x8

    cmp-long v11, v4, v11

    if-nez v11, :cond_14

    .line 189
    invoke-static {v8, v9}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v4

    .line 194
    :goto_8
    if-eqz v0, :cond_19

    .line 195
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_9
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v6, v4

    if-lez v4, :cond_16

    .line 197
    long-to-int v4, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 198
    :goto_a
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_16

    .line 199
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    goto :goto_a

    .line 190
    :cond_14
    const-wide/16 v11, 0x10

    cmp-long v4, v4, v11

    if-nez v4, :cond_15

    .line 191
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 193
    :cond_15
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 201
    :cond_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v10

    .line 202
    goto/16 :goto_1

    .line 203
    :cond_17
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 206
    :cond_18
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    move-object v0, v4

    goto :goto_9

    :cond_1a
    move-wide v8, v10

    move v10, v0

    move v0, v12

    goto/16 :goto_6

    :cond_1b
    move v0, v12

    move-wide v15, v10

    move v10, v8

    move-wide v8, v15

    goto/16 :goto_6

    :cond_1c
    move v15, v8

    move v8, v0

    move v0, v15

    goto/16 :goto_5

    :cond_1d
    move v0, v6

    move-wide v15, v8

    move v8, v7

    move-wide v6, v15

    goto/16 :goto_5

    :cond_1e
    move v15, v7

    move v7, v6

    move v6, v15

    goto/16 :goto_3

    :cond_1f
    move-wide v15, v6

    move v6, v4

    move v7, v0

    move v0, v5

    move-wide v4, v15

    goto/16 :goto_2

    :cond_20
    move-wide v4, v10

    move v10, v0

    move v0, v12

    move-wide v15, v6

    move-wide v6, v8

    move-wide v8, v15

    goto/16 :goto_7
.end method

.method public static supportedType(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-static {p0}, Lorg/xbill/DNS/Type;->check(I)V

    .line 52
    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public expand()[Lorg/xbill/DNS/Record;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    iget-wide v0, p0, Lorg/xbill/DNS/Generator;->start:J

    move-wide v8, v0

    :goto_0
    iget-wide v0, p0, Lorg/xbill/DNS/Generator;->end:J

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v1, v2, v3}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 237
    iget v1, p0, Lorg/xbill/DNS/Generator;->type:I

    iget v2, p0, Lorg/xbill/DNS/Generator;->dclass:I

    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->ttl:J

    iget-object v6, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-wide v0, p0, Lorg/xbill/DNS/Generator;->step:J

    add-long/2addr v0, v8

    move-wide v8, v0

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/xbill/DNS/Record;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/xbill/DNS/Record;

    check-cast p0, [Lorg/xbill/DNS/Record;

    return-object p0
.end method

.method public nextRecord()Lorg/xbill/DNS/Record;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/xbill/DNS/Generator;->current:J

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->end:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v1, v2, v3}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 221
    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->current:J

    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->step:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/xbill/DNS/Generator;->current:J

    .line 222
    iget v1, p0, Lorg/xbill/DNS/Generator;->type:I

    iget v2, p0, Lorg/xbill/DNS/Generator;->dclass:I

    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->ttl:J

    iget-object v6, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    const-string v1, "$GENERATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->step:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->step:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget v1, p0, Lorg/xbill/DNS/Generator;->dclass:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "noPrintIN"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Generator;->dclass:I

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/Generator;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
