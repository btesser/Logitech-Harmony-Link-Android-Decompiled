.class public final Lorg/xbill/DNS/ReverseMap;
.super Ljava/lang/Object;
.source "ReverseMap.java"


# static fields
.field private static inaddr4:Lorg/xbill/DNS/Name;

.field private static inaddr6:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "in-addr.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ReverseMap;->inaddr4:Lorg/xbill/DNS/Name;

    .line 18
    const-string v0, "ip6.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ReverseMap;->inaddr6:Lorg/xbill/DNS/Name;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAddress(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 125
    :cond_0
    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Invalid IP address"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromAddress(Ljava/lang/String;I)Lorg/xbill/DNS/Name;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Invalid IP address"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromAddress([B)Lorg/xbill/DNS/Name;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 32
    array-length v0, p0

    if-eq v0, v6, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array must contain 4 or 16 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    array-length v1, p0

    if-ne v1, v6, :cond_2

    .line 38
    array-length v1, p0

    sub-int/2addr v1, v5

    :goto_0
    if-ltz v1, :cond_6

    .line 39
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 40
    if-lez v1, :cond_1

    .line 41
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 45
    array-length v2, p0

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_6

    .line 46
    const/4 v3, 0x0

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    aput v4, v1, v3

    .line 47
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    aput v3, v1, v5

    .line 48
    array-length v3, v1

    sub-int/2addr v3, v5

    :goto_2
    if-ltz v3, :cond_5

    .line 49
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    if-gtz v2, :cond_3

    if-lez v3, :cond_4

    .line 51
    :cond_3
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 45
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 57
    :cond_6
    :try_start_0
    array-length v1, p0

    if-ne v1, v6, :cond_7

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/ReverseMap;->inaddr4:Lorg/xbill/DNS/Name;

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 60
    :goto_3
    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/ReverseMap;->inaddr6:Lorg/xbill/DNS/Name;

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "name cannot be invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromAddress([I)Lorg/xbill/DNS/Name;
    .locals 4
    .parameter

    .prologue
    .line 76
    array-length v0, p0

    new-array v0, v0, [B

    .line 77
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 78
    aget v2, p0, v1

    if-ltz v2, :cond_0

    aget v2, p0, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array must contain values between 0 and 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method
