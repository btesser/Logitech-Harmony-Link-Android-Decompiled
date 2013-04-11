.class public Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;
.super Ljava/lang/Object;
.source "Socks5TransferNegotiatorManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiatorManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;
    }
.end annotation


# static fields
.field private static final BLACKLIST_LIFETIME:J = 0x6ddd00L

.field private static proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;


# instance fields
.field private final addressBlacklist:Lorg/jivesoftware/smack/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/Cache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Lorg/jivesoftware/smack/Connection;

.field private final processLock:Ljava/lang/Object;

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyLock:Ljava/lang/Object;

.field private streamHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 4
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->processLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    const/16 v1, 0x64

    const-wide/32 v2, 0x6ddd00

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->addressBlacklist:Lorg/jivesoftware/smack/util/Cache;

    .line 64
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 65
    return-void
.end method

.method private checkIsProxy(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 125
    :try_start_0
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getIdentities()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 133
    const-string v2, "proxy"

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "bytestreams"

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 128
    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 139
    goto :goto_0
.end method

.method private initProxies()V
    .locals 4

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxies:Ljava/util/List;

    .line 144
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v2

    .line 149
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 151
    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->checkIsProxy(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->initStreamHosts()V

    goto :goto_1
.end method

.method private initStreamHosts()V
    .locals 7

    .prologue
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 174
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    new-instance v3, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$1;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$1;-><init>(Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;)V

    .line 181
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 182
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v4

    .line 186
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 188
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/Bytestream;

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getStreamHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    :cond_0
    invoke-virtual {v4}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    goto :goto_0

    .line 195
    :cond_1
    iput-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->streamHosts:Ljava/util/List;

    .line 196
    return-void
.end method


# virtual methods
.method public addTransfer()Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->processLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    new-instance v2, Ljava/net/ServerSocket;

    const/16 v3, 0x1e61

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;-><init>(Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;Ljava/net/ServerSocket;)V

    sput-object v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    .line 91
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->start()V

    .line 93
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->addTransfer()V

    .line 95
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    return-object v0

    .line 93
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->processLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->stop()V

    .line 202
    const/4 v1, 0x0

    sput-object v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    .line 204
    :cond_0
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createNegotiator()Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;-><init>(Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;Lorg/jivesoftware/smack/Connection;)V

    return-object v0
.end method

.method public getConnectionFailures(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->addressBlacklist:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStreamHosts()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxies:Ljava/util/List;

    if-nez v1, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->initProxies()V

    .line 110
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->streamHosts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 110
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public incrementConnectionFailures(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->addressBlacklist:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->addressBlacklist:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v1, p1, v0}, Lorg/jivesoftware/smack/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public removeTransfer()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->proxyProcess:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->removeTransfer()V

    goto :goto_0
.end method
