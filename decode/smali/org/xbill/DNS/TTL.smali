.class public final Lorg/xbill/DNS/TTL;
.super Ljava/lang/Object;
.source "TTL.java"


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(J)V
    .locals 2
    .parameter

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidTTLException;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/InvalidTTLException;-><init>(J)V

    throw v0

    .line 24
    :cond_1
    return-void
.end method

.method public static format(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    .line 88
    invoke-static {p0, p1}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    const-wide/16 v1, 0x3c

    rem-long v1, p0, v1

    .line 92
    const-wide/16 v3, 0x3c

    div-long/2addr p0, v3

    .line 93
    const-wide/16 v3, 0x3c

    rem-long v3, p0, v3

    .line 94
    const-wide/16 v5, 0x3c

    div-long/2addr p0, v5

    .line 95
    const-wide/16 v5, 0x18

    rem-long v5, p0, v5

    .line 96
    const-wide/16 v7, 0x18

    div-long/2addr p0, v7

    .line 97
    const-wide/16 v7, 0x7

    rem-long v7, p0, v7

    .line 98
    const-wide/16 v9, 0x7

    div-long/2addr p0, v9

    .line 100
    const-wide/16 v9, 0x0

    cmp-long v9, p0, v9

    if-lez v9, :cond_0

    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "W"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_1

    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_2

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "H"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_3

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "M"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_3
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-gtz v9, :cond_4

    const-wide/16 v9, 0x0

    cmp-long p0, p0, v9

    if-nez p0, :cond_5

    const-wide/16 p0, 0x0

    cmp-long p0, v7, p0

    if-nez p0, :cond_5

    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-nez p0, :cond_5

    const-wide/16 p0, 0x0

    cmp-long p0, v3, p0

    if-nez p0, :cond_5

    .line 109
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "S"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Z)J
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 38
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    .line 40
    :cond_1
    const-wide/16 v0, 0x0

    .line 41
    const-wide/16 v2, 0x0

    .line 42
    const/4 v4, 0x0

    move v10, v4

    move-wide v11, v2

    move-wide v3, v0

    move v0, v10

    move-wide v1, v11

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 45
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v3

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    int-to-long v8, v5

    add-long v5, v6, v8

    .line 47
    cmp-long v3, v5, v3

    if-gez v3, :cond_3

    .line 48
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    .line 50
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 56
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    .line 51
    :sswitch_0
    const-wide/16 v5, 0x7

    mul-long/2addr v3, v5

    .line 52
    :sswitch_1
    const-wide/16 v5, 0x18

    mul-long/2addr v3, v5

    .line 53
    :sswitch_2
    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    .line 54
    :sswitch_3
    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    .line 58
    :sswitch_4
    add-long/2addr v1, v3

    .line 59
    const-wide/16 v3, 0x0

    .line 60
    const-wide v5, 0xffffffffL

    cmp-long v5, v1, v5

    if-lez v5, :cond_4

    .line 61
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_3
    move-wide v3, v5

    .line 42
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_5
    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-nez p0, :cond_8

    move-wide v0, v3

    .line 67
    :goto_1
    const-wide v2, 0xffffffffL

    cmp-long p0, v0, v2

    if-lez p0, :cond_6

    .line 68
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    .line 69
    :cond_6
    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_7

    if-eqz p1, :cond_7

    .line 70
    const-wide/32 p0, 0x7fffffff

    .line 71
    :goto_2
    return-wide p0

    :cond_7
    move-wide p0, v0

    goto :goto_2

    :cond_8
    move-wide v0, v1

    goto :goto_1

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x48 -> :sswitch_2
        0x4d -> :sswitch_3
        0x53 -> :sswitch_4
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseTTL(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/TTL;->parse(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method
