.class public Lorg/xbill/DNS/spi/DNSJavaNameService;
.super Ljava/lang/Object;
.source "DNSJavaNameService.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final domainProperty:Ljava/lang/String; = "sun.net.spi.nameservice.domain"

.field private static final nsProperty:Ljava/lang/String; = "sun.net.spi.nameservice.nameservers"

.field private static final v6Property:Ljava/lang/String; = "java.net.preferIPv6Addresses"


# instance fields
.field private preferV6:Z


# direct methods
.method protected constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v5, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    .line 55
    const-string v0, "sun.net.spi.nameservice.nameservers"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "sun.net.spi.nameservice.domain"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "java.net.preferIPv6Addresses"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    if-eqz v0, :cond_1

    .line 60
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v4, v5

    .line 63
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    move v4, v5

    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    new-instance v3, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v3, v0}, Lorg/xbill/DNS/ExtendedResolver;-><init>([Ljava/lang/String;)V

    .line 67
    invoke-static {v3}, Lorg/xbill/DNS/Lookup;->setDefaultResolver(Lorg/xbill/DNS/Resolver;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 77
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/xbill/DNS/Lookup;->setDefaultSearchPath([Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    const-string v0, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iput-boolean v7, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    .line 87
    :cond_3
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "DNSJavaNameService: invalid sun.net.spi.nameservice.nameservers"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 80
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "DNSJavaNameService: invalid sun.net.spi.nameservice.domain"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getHostByAddr([B)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 171
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    .line 174
    :cond_0
    const/4 v1, 0x0

    aget-object p0, v0, v1

    check-cast p0, Lorg/xbill/DNS/PTRRecord;

    invoke-virtual {p0}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getHostByAddr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/spi/DNSJavaNameService;->getHostByAddr([B)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookupAllHostAddr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/spi/DNSJavaNameService;->lookupAllHostAddr(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 99
    const-class v2, [Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const-class v2, [[B

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    array-length v1, v0

    .line 105
    new-array v2, v1, [[B

    .line 107
    :goto_1
    if-ge v3, v1, :cond_2

    .line 108
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 109
    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 111
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "DNSJavaNameService: Unexpected error."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    throw v0

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown function name or arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupAllHostAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1c

    .line 130
    .line 133
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v1, 0x0

    .line 140
    iget-boolean v2, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    if-eqz v2, :cond_0

    .line 141
    new-instance v1, Lorg/xbill/DNS/Lookup;

    invoke-direct {v1, v0, v3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 142
    :cond_0
    if-nez v1, :cond_1

    .line 143
    new-instance v1, Lorg/xbill/DNS/Lookup;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 144
    :cond_1
    if-nez v1, :cond_5

    iget-boolean v2, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    if-nez v2, :cond_5

    .line 145
    new-instance v1, Lorg/xbill/DNS/Lookup;

    invoke-direct {v1, v0, v3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 146
    :goto_0
    if-nez v0, :cond_2

    .line 147
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    array-length v1, v0

    new-array v1, v1, [Ljava/net/InetAddress;

    .line 150
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 151
    aget-object v3, v0, v2

    .line 152
    aget-object v3, v0, v2

    instance-of v3, v3, Lorg/xbill/DNS/ARecord;

    if-eqz v3, :cond_3

    .line 153
    aget-object p0, v0, v2

    check-cast p0, Lorg/xbill/DNS/ARecord;

    .line 154
    invoke-virtual {p0}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v1, v2

    .line 150
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_3
    aget-object p0, v0, v2

    check-cast p0, Lorg/xbill/DNS/AAAARecord;

    .line 157
    invoke-virtual {p0}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_2

    .line 160
    :cond_4
    return-object v1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
