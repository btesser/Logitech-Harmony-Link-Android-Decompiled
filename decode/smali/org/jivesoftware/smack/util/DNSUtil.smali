.class public Lorg/jivesoftware/smack/util/DNSUtil;
.super Ljava/lang/Object;
.source "DNSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/DNSUtil$1;,
        Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    }
.end annotation


# static fields
.field private static ccache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static scache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x927c0

    const/16 v1, 0x64

    .line 42
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    .line 44
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method private static resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 47
    .line 48
    const/4 v0, -0x1

    .line 49
    const v1, 0x7fffffff

    .line 53
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/Lookup;

    const/16 v3, 0x21

    invoke-direct {v2, p0, v3}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v2}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 55
    if-nez v2, :cond_0

    move-object v0, v11

    .line 86
    :goto_0
    return-object v0

    .line 56
    :cond_0
    array-length v3, v2
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    move v5, v0

    move-object v6, v11

    move v1, v12

    move v0, v12

    :goto_1
    if-ge v0, v3, :cond_3

    :try_start_1
    aget-object p0, v2, v0

    .line 57
    check-cast p0, Lorg/xbill/DNS/SRVRecord;

    .line 58
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 59
    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v7

    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 61
    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v8

    if-ge v8, v4, :cond_2

    .line 62
    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v1

    .line 64
    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 65
    :try_start_2
    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getPort()I
    :try_end_2
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    move-object v6, v4

    move v4, v1

    move v1, v7

    .line 56
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v8

    if-ne v8, v4, :cond_1

    .line 67
    if-le v7, v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v1

    .line 70
    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 71
    :try_start_4
    invoke-virtual {p0}, Lorg/xbill/DNS/SRVRecord;->getPort()I
    :try_end_4
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v5

    move-object v6, v4

    move v4, v1

    move v1, v7

    goto :goto_2

    :cond_3
    move v0, v5

    move-object v1, v6

    .line 79
    :goto_3
    if-nez v1, :cond_4

    move-object v0, v11

    .line 80
    goto :goto_0

    .line 83
    :cond_4
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_5
    new-instance v2, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    invoke-direct {v2, v1, v0, v11}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$1;)V

    move-object v0, v2

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    move-object v1, v11

    goto :goto_3

    :catch_1
    move-exception v0

    move v0, v5

    move-object v1, v6

    goto :goto_3

    :catch_2
    move-exception v0

    move v0, v5

    move-object v1, v4

    goto :goto_3

    .line 76
    :catch_3
    move-exception v1

    move-object v1, v11

    goto :goto_3

    :catch_4
    move-exception v0

    move v0, v5

    move-object v1, v6

    goto :goto_3

    :catch_5
    move-exception v0

    move v0, v5

    move-object v1, v4

    goto :goto_3
.end method

.method public static resolveXMPPDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .locals 3
    .parameter

    .prologue
    .line 117
    sget-object v1, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    monitor-enter v1

    .line 118
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    monitor-exit v1

    .line 136
    :goto_0
    return-object v0

    .line 124
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_xmpp-client._tcp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v0

    .line 126
    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_jabber._tcp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v0

    .line 129
    :cond_1
    if-nez v0, :cond_2

    .line 130
    new-instance v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    const/16 v1, 0x1466

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$1;)V

    .line 133
    :cond_2
    sget-object v1, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    monitor-enter v1

    .line 134
    :try_start_1
    sget-object v2, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 124
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static resolveXMPPServerDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .locals 3
    .parameter

    .prologue
    .line 161
    sget-object v1, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    monitor-exit v1

    .line 180
    :goto_0
    return-object v0

    .line 168
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_xmpp-server._tcp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v0

    .line 170
    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_jabber._tcp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v0

    .line 173
    :cond_1
    if-nez v0, :cond_2

    .line 174
    new-instance v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    const/16 v1, 0x1495

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$1;)V

    .line 177
    :cond_2
    sget-object v1, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    monitor-enter v1

    .line 178
    :try_start_1
    sget-object v2, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
