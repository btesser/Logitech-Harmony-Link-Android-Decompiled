.class public final Lorg/xbill/DNS/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field public static final IPv4:I = 0x1

.field public static final IPv6:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 249
    check-cast p1, Lorg/xbill/DNS/ARecord;

    .line 250
    invoke-virtual {p1}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static addressLength(I)I
    .locals 2
    .parameter

    .prologue
    .line 365
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 366
    const/4 v0, 0x4

    .line 368
    :goto_0
    return v0

    .line 367
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 368
    const/16 v0, 0x10

    goto :goto_0

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static familyOf(Ljava/net/InetAddress;)I
    .locals 2
    .parameter

    .prologue
    .line 351
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    .line 353
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 354
    const/4 v0, 0x2

    goto :goto_0

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 278
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 285
    :goto_0
    return-object v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    invoke-static {p0}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 282
    array-length v1, v0

    new-array v1, v1, [Ljava/net/InetAddress;

    move v2, v3

    .line 283
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 284
    aget-object v3, v0, v2

    invoke-static {p0, v3}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v1, v2

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 285
    goto :goto_0
.end method

.method public static getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 300
    if-eqz v0, :cond_0

    .line 301
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 302
    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 325
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 262
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-static {p0}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 265
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHostName(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {p0}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 337
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 338
    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "unknown address"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    const/4 v1, 0x0

    aget-object p0, v0, v1

    check-cast p0, Lorg/xbill/DNS/PTRRecord;

    .line 341
    invoke-virtual {p0}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDottedQuad(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupHostName(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Lookup;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "unknown host"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "invalid name"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    return-object v0
.end method

.method private static parseV4(Ljava/lang/String;)[B
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x30

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v9

    move v3, v9

    move v4, v9

    move v5, v9

    .line 34
    :goto_0
    if-ge v2, v1, :cond_7

    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 36
    if-lt v6, v11, :cond_2

    const/16 v7, 0x39

    if-gt v6, v7, :cond_2

    .line 38
    if-ne v5, v10, :cond_0

    move-object v0, v8

    .line 69
    :goto_1
    return-object v0

    .line 41
    :cond_0
    if-lez v5, :cond_1

    if-nez v3, :cond_1

    move-object v0, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 44
    mul-int/lit8 v3, v3, 0xa

    .line 45
    sub-int/2addr v6, v11

    add-int/2addr v3, v6

    .line 47
    const/16 v6, 0xff

    if-le v3, v6, :cond_5

    move-object v0, v8

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_6

    .line 51
    if-ne v4, v10, :cond_3

    move-object v0, v8

    .line 52
    goto :goto_1

    .line 54
    :cond_3
    if-nez v5, :cond_4

    move-object v0, v8

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    add-int/lit8 v5, v4, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    move v3, v9

    move v4, v5

    move v5, v9

    .line 34
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move-object v0, v8

    .line 60
    goto :goto_1

    .line 63
    :cond_7
    if-eq v4, v10, :cond_8

    move-object v0, v8

    .line 64
    goto :goto_1

    .line 66
    :cond_8
    if-nez v5, :cond_9

    move-object v0, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_9
    int-to-byte v1, v3

    aput-byte v1, v0, v4

    goto :goto_1
.end method

.method private static parseV6(Ljava/lang/String;)[B
    .locals 13
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v12, 0x1

    const/16 v11, 0x10

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 74
    .line 75
    new-array v0, v11, [B

    .line 77
    const-string v1, ":"

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 80
    array-length v2, v1

    sub-int/2addr v2, v12

    .line 82
    aget-object v3, v1, v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_12

    .line 86
    sub-int v3, v2, v10

    if-lez v3, :cond_2

    aget-object v3, v1, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 87
    add-int/lit8 v3, v10, 0x1

    .line 92
    :goto_0
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 96
    sub-int v4, v2, v3

    if-lez v4, :cond_3

    sub-int v4, v2, v12

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 97
    add-int/lit8 v2, v2, -0x1

    .line 102
    :cond_0
    sub-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x8

    if-le v4, v5, :cond_4

    move-object v0, v9

    .line 156
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v9

    .line 89
    goto :goto_1

    :cond_3
    move-object v0, v9

    .line 99
    goto :goto_1

    :cond_4
    move v4, v3

    move v5, v6

    move v3, v10

    .line 106
    :goto_2
    if-gt v4, v2, :cond_11

    .line 107
    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 108
    if-ltz v5, :cond_5

    move-object v0, v9

    .line 109
    goto :goto_1

    :cond_5
    move v5, v3

    .line 106
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 114
    :cond_6
    aget-object v6, v1, v4

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_b

    .line 116
    if-ge v4, v2, :cond_7

    move-object v0, v9

    .line 117
    goto :goto_1

    .line 119
    :cond_7
    const/4 v2, 0x6

    if-le v4, v2, :cond_8

    move-object v0, v9

    .line 120
    goto :goto_1

    .line 121
    :cond_8
    aget-object v1, v1, v4

    invoke-static {v1, v12}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    .line 122
    if-nez v1, :cond_9

    move-object v0, v9

    .line 123
    goto :goto_1

    :cond_9
    move v2, v10

    .line 124
    :goto_4
    const/4 v4, 0x4

    if-ge v2, v4, :cond_a

    .line 125
    add-int/lit8 v4, v3, 0x1

    aget-byte v6, v1, v2

    aput-byte v6, v0, v3

    .line 124
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_4

    :cond_a
    move v1, v3

    .line 146
    :goto_5
    if-ge v1, v11, :cond_10

    if-gez v5, :cond_10

    move-object v0, v9

    .line 147
    goto :goto_1

    :cond_b
    move v6, v10

    .line 130
    :goto_6
    :try_start_0
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 131
    aget-object v7, v1, v4

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 132
    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-gez v7, :cond_c

    move-object v0, v9

    .line 133
    goto :goto_1

    .line 130
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 135
    :cond_d
    aget-object v6, v1, v4

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 136
    const v7, 0xffff

    if-gt v6, v7, :cond_e

    if-gez v6, :cond_f

    :cond_e
    move-object v0, v9

    .line 137
    goto :goto_1

    .line 138
    :cond_f
    add-int/lit8 v7, v3, 0x1

    ushr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 139
    add-int/lit8 v3, v7, 0x1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 141
    :catch_0
    move-exception v0

    move-object v0, v9

    .line 142
    goto/16 :goto_1

    .line 149
    :cond_10
    if-ltz v5, :cond_1

    .line 150
    sub-int v2, v11, v1

    .line 151
    add-int v3, v5, v2

    sub-int/2addr v1, v5

    invoke-static {v0, v5, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v5

    .line 152
    :goto_7
    add-int v3, v5, v2

    if-ge v1, v3, :cond_1

    .line 153
    aput-byte v10, v0, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    move v1, v3

    goto :goto_5

    :cond_12
    move v3, v10

    goto/16 :goto_0
.end method

.method public static toArray(Ljava/lang/String;)[I
    .locals 1
    .parameter

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/String;I)[I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    .line 171
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 172
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 173
    goto :goto_0
.end method

.method public static toByteArray(Ljava/lang/String;I)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 194
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 195
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV4(Ljava/lang/String;)[B

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 197
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV6(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDottedQuad([B)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toDottedQuad([I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
