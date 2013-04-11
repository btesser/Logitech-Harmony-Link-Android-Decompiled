.class public Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;
.super Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
.source "Socks5TransferNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$BytestreamSIDFilter;,
        Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;
    }
.end annotation


# static fields
.field private static final CONNECT_FAILURE_THRESHOLD:I = 0x2

.field protected static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/bytestreams"

.field public static isAllowLocalProxyHost:Z


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private transferNegotiatorManager:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->isAllowLocalProxyHost:Z

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;-><init>()V

    .line 89
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 90
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->transferNegotiatorManager:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;

    .line 91
    return-void
.end method

.method private cleanupListeningSocket()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->transferNegotiatorManager:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->removeTransfer()V

    .line 389
    return-void
.end method

.method private static createByteStreamActivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/Bytestream;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    new-instance v0, Lorg/jivesoftware/smackx/packet/Bytestream;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/packet/Bytestream;-><init>(Ljava/lang/String;)V

    .line 465
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/Bytestream;->setMode(Lorg/jivesoftware/smackx/packet/Bytestream$Mode;)V

    .line 466
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/packet/Bytestream;->setToActivate(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->setFrom(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/Bytestream;->setTo(Ljava/lang/String;)V

    .line 469
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 470
    return-object v0
.end method

.method private createByteStreamInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/jivesoftware/smackx/packet/Bytestream;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    new-instance v0, Lorg/jivesoftware/smackx/packet/Bytestream;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/Bytestream;-><init>()V

    .line 429
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/Bytestream;->setTo(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->setFrom(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/packet/Bytestream;->setSessionID(Ljava/lang/String;)V

    .line 432
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 433
    sget-object v1, Lorg/jivesoftware/smackx/packet/Bytestream$Mode;->tcp:Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/Bytestream;->setMode(Lorg/jivesoftware/smackx/packet/Bytestream$Mode;)V

    .line 434
    if-eqz p4, :cond_0

    if-lez p5, :cond_0

    .line 435
    invoke-virtual {v0, p1, p4, p5}, Lorg/jivesoftware/smackx/packet/Bytestream;->addStreamHost(Ljava/lang/String;Ljava/lang/String;I)Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    .line 438
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->transferNegotiatorManager:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->getStreamHosts()Ljava/util/Collection;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_1

    .line 441
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    .line 442
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/packet/Bytestream;->addStreamHost(Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;)V

    goto :goto_0

    .line 446
    :cond_1
    return-object v0
.end method

.method private createDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static createIncomingSocks5Message(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 501
    new-array v0, v1, [B

    .line 502
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 504
    const/4 v1, 0x4

    aget-byte v0, v0, v1

    new-array v0, v0, [B

    .line 505
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 506
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 507
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 508
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 510
    return-object v1
.end method

.method static createOutgoingSocks5Message(ILjava/lang/String;)[B
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 516
    array-length v1, v0

    add-int/lit8 v1, v1, 0x7

    new-array v1, v1, [B

    .line 517
    aput-byte v7, v1, v4

    .line 518
    int-to-byte v2, p0

    aput-byte v2, v1, v5

    .line 519
    aput-byte v4, v1, v6

    .line 520
    aput-byte v3, v1, v3

    .line 521
    const/4 v2, 0x4

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 523
    array-length v2, v0

    invoke-static {v0, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    array-length v0, v1

    sub-int/2addr v0, v6

    aput-byte v4, v1, v0

    .line 525
    array-length v0, v1

    sub-int/2addr v0, v5

    aput-byte v4, v1, v0

    .line 527
    return-object v1
.end method

.method private createUsedHostConfirmation(Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/Bytestream;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    new-instance v0, Lorg/jivesoftware/smackx/packet/Bytestream;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/Bytestream;-><init>()V

    .line 164
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/Bytestream;->setTo(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/packet/Bytestream;->setFrom(Ljava/lang/String;)V

    .line 166
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 167
    invoke-virtual {v0, p4}, Lorg/jivesoftware/smackx/packet/Bytestream;->setPacketID(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/Bytestream;->setUsedHost(Ljava/lang/String;)V

    .line 169
    return-object v0
.end method

.method private discoverLocalIP()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private establishListeningSocket()Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->transferNegotiatorManager:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->addTransfer()Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;

    move-result-object v0

    return-object v0
.end method

.method private establishSOCKS5ConnectionToProxy(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 480
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 482
    const/4 v1, 0x5

    aput-byte v1, v0, v2

    .line 483
    aput-byte v3, v0, v3

    .line 484
    aput-byte v2, v0, v4

    .line 486
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 487
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 489
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 490
    new-array v2, v4, [B

    .line 492
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 494
    invoke-static {v3, p2}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->createOutgoingSocks5Message(ILjava/lang/String;)[B

    move-result-object v2

    .line 495
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 496
    invoke-static {v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->createIncomingSocks5Message(Ljava/io/InputStream;)Ljava/lang/String;

    .line 497
    return-void
.end method

.method private getConnectionFailures(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->transferNegotiatorManager:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->getConnectionFailures(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private incrementConnectionFailures(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->transferNegotiatorManager:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;->incrementConnectionFailures(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private initBytestreamSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 278
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->establishListeningSocket()Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 288
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->discoverLocalIP()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v4, v0

    .line 294
    :goto_1
    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->getPort()I

    move-result v0

    move v5, v0

    :goto_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->createByteStreamInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/jivesoftware/smackx/packet/Bytestream;

    move-result-object v0

    .line 299
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->createDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v6, v1, v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->waitForUsedHostResponse(Ljava/lang/String;Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/Bytestream;)Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->establishedSocket:Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->cleanupListeningSocket()V

    .line 306
    return-object v0

    .line 280
    :catch_0
    move-exception v0

    move-object v6, v1

    .line 281
    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    move-object v4, v1

    .line 291
    goto :goto_1

    .line 294
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2

    .line 303
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->cleanupListeningSocket()V

    throw v0
.end method

.method private selectHost(Lorg/jivesoftware/smackx/packet/Bytestream;)Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 182
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getStreamHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v7

    move-object v0, v7

    .line 185
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    .line 187
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->getConnectionFailures(Ljava/lang/String;)I

    move-result v4

    .line 191
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 196
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 198
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getTo()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->createDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->establishSOCKS5ConnectionToProxy(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, v2

    .line 210
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 211
    :cond_1
    const-string v0, "Could not establish socket with any provided host"

    .line 212
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->no_acceptable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v2, v3, v0}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->incrementConnectionFailures(Ljava/lang/String;)V

    move-object v2, v7

    move-object v0, v7

    .line 209
    goto :goto_0

    .line 216
    :cond_2
    new-instance v2, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;

    invoke-direct {v2, v1, v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;-><init>(Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;Ljava/net/Socket;)V

    return-object v2

    :cond_3
    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method private waitForUsedHostResponse(Ljava/lang/String;Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/Bytestream;)Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;-><init>()V

    .line 328
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {p4}, Lorg/jivesoftware/smackx/packet/Bytestream;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 330
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 332
    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 333
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 335
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/jivesoftware/smackx/packet/Bytestream;

    if-eqz v2, :cond_0

    .line 336
    check-cast v0, Lorg/jivesoftware/smackx/packet/Bytestream;

    .line 343
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    const-string v2, "Remote client returned error, stream hosts expected"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 339
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Unexpected response from remote user"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getUsedHost()Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;

    move-result-object v2

    .line 349
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;->getJID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jivesoftware/smackx/packet/Bytestream;->getStreamHost(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    move-result-object v3

    .line 350
    if-nez v3, :cond_2

    .line 351
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Remote user responded with unknown host"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_2
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;->getJID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lorg/jivesoftware/smackx/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {p2, p3}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->getSocket(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->establishedSocket:Ljava/net/Socket;

    .line 356
    iput-object v3, v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->selectedHost:Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    move-object v0, v1

    .line 378
    :goto_0
    return-object v0

    .line 360
    :cond_3
    new-instance v2, Ljava/net/Socket;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->getPort()I

    move-result v5

    invoke-direct {v2, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->establishedSocket:Ljava/net/Socket;

    .line 362
    iget-object v2, v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->establishedSocket:Ljava/net/Socket;

    invoke-direct {p0, v2, p3}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->establishSOCKS5ConnectionToProxy(Ljava/net/Socket;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->getJID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v3, v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->createByteStreamActivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/Bytestream;

    move-result-object v0

    .line 367
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 369
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 371
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 373
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 374
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 375
    iget-object v0, v1, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->establishedSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 376
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 378
    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public createIncomingStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->initiateIncomingStream(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/packet/StreamInitiation;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 257
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->initBytestreamSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 265
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 271
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    const-string v2, "Error establishing transfer socket"

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 267
    :catch_1
    move-exception v0

    .line 268
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    const-string v2, "Error establishing output stream"

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    invoke-direct {v3, p1}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$BytestreamSIDFilter;

    invoke-direct {v3, p2}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$BytestreamSIDFilter;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method public getNamespaces()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://jabber.org/protocol/bytestreams"

    aput-object v2, v0, v1

    return-object v0
.end method

.method negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 106
    check-cast p1, Lorg/jivesoftware/smackx/packet/Bytestream;

    .line 108
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 114
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->selectHost(Lorg/jivesoftware/smackx/packet/Bytestream;)Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    iget-object v1, v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->selectedHost:Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->createUsedHostConfirmation(Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/Bytestream;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 133
    :try_start_1
    new-instance v1, Ljava/io/PushbackInputStream;

    iget-object v0, v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$SelectedHostInfo;->establishedSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 135
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 136
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Bytestream;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    invoke-super {p0, v1, v2, v3, v4}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 123
    :cond_1
    throw v0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    const-string v2, "Error establishing input stream"

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
