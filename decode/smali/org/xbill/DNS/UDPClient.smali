.class final Lorg/xbill/DNS/UDPClient;
.super Lorg/xbill/DNS/Client;
.source "UDPClient.java"


# static fields
.field private static final EPHEMERAL_RANGE:I = 0xfbff

.field private static final EPHEMERAL_START:I = 0x400

.field private static final EPHEMERAL_STOP:I = 0xffff

.field private static prng:Ljava/security/SecureRandom;


# instance fields
.field private bound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/xbill/DNS/UDPClient;->prng:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/Client;-><init>(Ljava/nio/channels/SelectableChannel;J)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    .line 24
    return-void
.end method

.method private bind_random(Ljava/net/InetSocketAddress;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 32
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x400

    if-ge v1, v2, :cond_0

    .line 34
    :try_start_0
    sget-object v2, Lorg/xbill/DNS/UDPClient;->prng:Ljava/security/SecureRandom;

    const v3, 0xfbff

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x400

    .line 36
    if-eqz p1, :cond_1

    .line 37
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v2, v3

    .line 41
    :goto_1
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 42
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    .line 48
    :cond_0
    return-void

    .line 40
    :cond_1
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v2}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    .line 45
    :catch_0
    move-exception v2

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B
    .locals 2
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
    .line 111
    new-instance v0, Lorg/xbill/DNS/UDPClient;

    invoke-direct {v0, p4, p5}, Lorg/xbill/DNS/UDPClient;-><init>(J)V

    .line 113
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/UDPClient;->bind(Ljava/net/SocketAddress;)V

    .line 114
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/UDPClient;->connect(Ljava/net/SocketAddress;)V

    .line 115
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/UDPClient;->send([B)V

    .line 116
    invoke-virtual {v0, p3}, Lorg/xbill/DNS/UDPClient;->recv(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 119
    invoke-virtual {v0}, Lorg/xbill/DNS/UDPClient;->cleanup()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/xbill/DNS/UDPClient;->cleanup()V

    throw v1
.end method

.method static sendrecv(Ljava/net/SocketAddress;[BIJ)[B
    .locals 6
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
    .line 127
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/UDPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bind(Ljava/net/SocketAddress;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    if-nez v1, :cond_2

    .line 56
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/UDPClient;->bind_random(Ljava/net/InetSocketAddress;)V

    .line 57
    iget-boolean v1, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    if-eqz v1, :cond_2

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    if-eqz p1, :cond_1

    .line 62
    iget-object v1, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 63
    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    goto :goto_0
.end method

.method connect(Ljava/net/SocketAddress;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/UDPClient;->bind(Ljava/net/SocketAddress;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p0

    check-cast p0, Ljava/nio/channels/DatagramChannel;

    .line 73
    invoke-virtual {p0, p1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 74
    return-void
.end method

.method recv(I)[B
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 85
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 86
    new-array v1, p1, [B

    .line 87
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 89
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v3, p0, Lorg/xbill/DNS/UDPClient;->endTime:J

    invoke-static {v2, v3, v4}, Lorg/xbill/DNS/UDPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_0
    throw v0

    .line 93
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 96
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v2, v0

    .line 97
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 98
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 99
    :cond_3
    long-to-int v0, v2

    .line 100
    new-array v2, v0, [B

    .line 101
    invoke-static {v1, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    const-string v0, "UDP read"

    invoke-static {v0, v2}, Lorg/xbill/DNS/UDPClient;->verboseLog(Ljava/lang/String;[B)V

    .line 103
    return-object v2
.end method

.method send([B)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p0

    check-cast p0, Ljava/nio/channels/DatagramChannel;

    .line 79
    const-string v0, "UDP write"

    invoke-static {v0, p1}, Lorg/xbill/DNS/UDPClient;->verboseLog(Ljava/lang/String;[B)V

    .line 80
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 81
    return-void
.end method
