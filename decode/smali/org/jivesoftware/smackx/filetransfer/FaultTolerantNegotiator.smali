.class public Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;
.super Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
.source "FaultTolerantNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;
    }
.end annotation


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

.field private secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;-><init>()V

    .line 53
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 54
    iput-object p3, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->determineNegotiator(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v0

    return-object v0
.end method

.method private determineNegotiator(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public createIncomingStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)Ljava/io/InputStream;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, p1, v2}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createInitiationAccept(Lorg/jivesoftware/smackx/packet/StreamInitiation;[Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/StreamInitiation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 82
    new-instance v1, Ljava/util/concurrent/ExecutorCompletionService;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :try_start_0
    new-instance v3, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;

    invoke-direct {v3, p0, v0}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;-><init>(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v3, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;

    invoke-direct {v3, p0, v0}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator$NegotiatorService;-><init>(Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;Lorg/jivesoftware/smack/PacketCollector;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v3, 0x0

    move-object v5, v4

    .line 92
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ge v3, v6, :cond_1

    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 96
    const-wide/16 v6, 0xa

    :try_start_1
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v6, v7, v8}, Ljava/util/concurrent/CompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 102
    if-eqz v6, :cond_0

    .line 107
    :try_start_2
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, p0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v4

    .line 113
    :try_start_3
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v6

    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Future;

    .line 119
    invoke-interface {p0, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 123
    if-nez v5, :cond_5

    .line 124
    if-eqz v4, :cond_4

    .line 125
    throw v4

    .line 118
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Future;

    .line 119
    invoke-interface {p0, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    throw v1

    .line 128
    :cond_4
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "File transfer negotiation failed."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_5
    return-object v5

    .line 109
    :catch_1
    move-exception v6

    goto :goto_0

    .line 98
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method public createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 63
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/filter/OrFilter;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method public getNamespaces()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->primaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;->secondaryNegotiator:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v1

    .line 156
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 157
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    return-object v2
.end method

.method final initiateIncomingStream(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/packet/StreamInitiation;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Initiation handled by createIncomingStream method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Negotiation only handled by create incoming stream method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
