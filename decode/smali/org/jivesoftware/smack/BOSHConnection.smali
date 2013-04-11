.class public Lorg/jivesoftware/smack/BOSHConnection;
.super Lorg/jivesoftware/smack/Connection;
.source "BOSHConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;,
        Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;
    }
.end annotation


# static fields
.field public static final BOSH_URI:Ljava/lang/String; = "http://jabber.org/protocol/httpbind"

.field public static final XMPP_BOSH_NS:Ljava/lang/String; = "urn:xmpp:xbosh"


# instance fields
.field private anonymous:Z

.field protected authID:Ljava/lang/String;

.field private authenticated:Z

.field private client:Lcom/kenai/jbosh/BOSHClient;

.field private final config:Lorg/jivesoftware/smack/BOSHConfiguration;

.field private connected:Z

.field private done:Z

.field private isFirstInitialization:Z

.field private listenerExecutor:Ljava/util/concurrent/ExecutorService;

.field private readerConsumer:Ljava/lang/Thread;

.field private readerPipe:Ljava/io/PipedWriter;

.field private roster:Lorg/jivesoftware/smack/Roster;

.field protected sessionID:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private wasAuthenticated:Z


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/BOSHConfiguration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 83
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    .line 84
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 85
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    .line 87
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    .line 88
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 102
    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 146
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    .line 147
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 135
    new-instance v0, Lorg/jivesoftware/smack/BOSHConfiguration;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/BOSHConfiguration;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 83
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    .line 84
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 85
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    .line 87
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    .line 88
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 102
    iput-object v7, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 107
    iput-object v7, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 112
    iput-object v7, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 117
    iput-object v7, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 136
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/BOSHConfiguration;

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/io/PipedWriter;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/BOSHConnection;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    return v0
.end method

.method static synthetic access$302(Lorg/jivesoftware/smack/BOSHConnection;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    return p1
.end method

.method static synthetic access$400(Lorg/jivesoftware/smack/BOSHConnection;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    return v0
.end method

.method static synthetic access$402(Lorg/jivesoftware/smack/BOSHConnection;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    return p1
.end method

.method static synthetic access$500(Lorg/jivesoftware/smack/BOSHConnection;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    return v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smack/BOSHConnection;)Lorg/jivesoftware/smack/BOSHConfiguration;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    return-object v0
.end method

.method private setWasAuthenticated(Z)V
    .locals 1
    .parameter

    .prologue
    .line 545
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    if-nez v0, :cond_0

    .line 546
    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    .line 548
    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected to a server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHClient;->close()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->init()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->getURI()Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->create(Ljava/net/URI;Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->getProxyAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConfiguration;->getProxyPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->setProxy(Ljava/lang/String;I)Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    .line 170
    :cond_2
    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->build()Lcom/kenai/jbosh/BOSHClientConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/kenai/jbosh/BOSHClient;->create(Lcom/kenai/jbosh/BOSHClientConfig;)Lcom/kenai/jbosh/BOSHClient;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    .line 174
    new-instance v0, Lorg/jivesoftware/smack/BOSHConnection$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/BOSHConnection$1;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    new-instance v1, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;

    invoke-direct {v1, p0, p0}, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;-><init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->addBOSHClientConnListener(Lcom/kenai/jbosh/BOSHClientConnListener;)V

    .line 185
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    new-instance v1, Lorg/jivesoftware/smack/BOSHPacketReader;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/BOSHPacketReader;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->addBOSHClientResponseListener(Lcom/kenai/jbosh/BOSHClientResponseListener;)V

    .line 188
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->isDebuggerEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->initDebugger()V

    .line 190
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v0}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getReaderListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v0}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getReaderListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/BOSHConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 194
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v0}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getWriterListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v0}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getWriterListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/BOSHConnection;->addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 201
    :cond_4
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    const-string v2, "xmpp"

    const-string v3, "urn:xmpp:xbosh"

    invoke-virtual {v1, v2, v3}, Lcom/kenai/jbosh/ComposableBody$Builder;->setNamespaceDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    const-string v2, "urn:xmpp:xbosh"

    const-string v3, "version"

    const-string v4, "xmpp"

    invoke-static {v2, v3, v4}, Lcom/kenai/jbosh/BodyQName;->createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    monitor-enter p0

    .line 211
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 213
    :goto_0
    iget-boolean v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_5

    .line 215
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 219
    :cond_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    if-nez v0, :cond_6

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout reached for the connection to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v2, v3, v0}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 219
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 230
    :cond_6
    return-void
.end method

.method public disconnect(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 2
    .parameter

    .prologue
    .line 447
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v0, :cond_1

    .line 477
    :cond_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/BOSHConnection;->shutdown(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 453
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Roster;->cleanup()V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 457
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->sendListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 458
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->recvListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 459
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->collectors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 460
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->interceptors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    .line 467
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getConnectionListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/ConnectionListener;

    .line 469
    :try_start_0
    invoke-interface {p0}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    .line 474
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getConnectionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRoster()Lorg/jivesoftware/smack/Roster;
    .locals 9

    .prologue
    .line 243
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->isRosterLoadedAtLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Roster;->reload()V

    .line 256
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    iget-boolean v0, v0, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-nez v0, :cond_3

    .line 258
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :try_start_1
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v7, v3

    move-wide v3, v1

    move-wide v1, v7

    .line 261
    :goto_1
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    iget-boolean v5, v5, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-nez v5, :cond_2

    .line 262
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_4

    .line 270
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    goto :goto_0

    .line 265
    :cond_4
    :try_start_2
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 267
    sub-long v1, v5, v1

    sub-long v1, v3, v1

    move-wide v3, v1

    move-wide v1, v5

    .line 269
    goto :goto_1

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    return-object v0
.end method

.method protected initDebugger()V
    .locals 2

    .prologue
    .line 598
    new-instance v0, Lorg/jivesoftware/smack/BOSHConnection$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/BOSHConnection$2;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->writer:Ljava/io/Writer;

    .line 606
    :try_start_0
    new-instance v0, Ljava/io/PipedWriter;

    invoke-direct {v0}, Ljava/io/PipedWriter;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    .line 607
    new-instance v0, Ljava/io/PipedReader;

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    invoke-direct {v0, v1}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    invoke-super {p0}, Lorg/jivesoftware/smack/Connection;->initDebugger()V

    .line 617
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    new-instance v1, Lorg/jivesoftware/smack/BOSHConnection$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/BOSHConnection$3;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->addBOSHClientResponseListener(Lcom/kenai/jbosh/BOSHClientResponseListener;)V

    .line 629
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    new-instance v1, Lorg/jivesoftware/smack/BOSHConnection$4;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/BOSHConnection$4;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->addBOSHClientRequestListener(Lcom/kenai/jbosh/BOSHClientRequestListener;)V

    .line 642
    new-instance v0, Lorg/jivesoftware/smack/BOSHConnection$5;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/BOSHConnection$5;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    .line 657
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 658
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 659
    return-void

    .line 609
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    return v0
.end method

.method public isSecureConnection()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingCompression()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 306
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already logged in to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->hasNonAnonymousAuthentication()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 319
    if-eqz p2, :cond_7

    .line 320
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1, v0, p2, p3}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_0
    if-eqz v1, :cond_9

    .line 331
    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 333
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->setServiceName(Ljava/lang/String;)V

    .line 342
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-nez v1, :cond_3

    .line 343
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

    if-nez v1, :cond_a

    .line 344
    new-instance v1, Lorg/jivesoftware/smack/Roster;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 350
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isRosterLoadedAtLogin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 351
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Roster;->reload()V

    .line 355
    :cond_4
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isSendPresence()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/BOSHConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 360
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    .line 364
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1, v0, p2, p3}, Lorg/jivesoftware/smack/BOSHConfiguration;->setLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->isDebuggerEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-eqz v0, :cond_6

    .line 370
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->userHasLogged(Ljava/lang/String;)V

    .line 372
    :cond_6
    return-void

    .line 322
    :cond_7
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConfiguration;->getCallbackHandler()Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    move-result-object v2

    invoke-virtual {v1, v0, p3, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 326
    :cond_8
    new-instance v1, Lorg/jivesoftware/smack/NonSASLAuthentication;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v1, v0, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 335
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 336
    if-eqz p3, :cond_2

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 347
    :cond_a
    new-instance v1, Lorg/jivesoftware/smack/Roster;

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/RosterStorage;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    goto/16 :goto_2
.end method

.method public loginAnonymously()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 375
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already logged in to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->hasAnonymousAuthentication()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticateAnonymously()Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 395
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->setServiceName(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 401
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->isSendPresence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 406
    :cond_2
    iput-boolean v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 407
    iput-boolean v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    .line 413
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->isDebuggerEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->userHasLogged(Ljava/lang/String;)V

    .line 416
    :cond_3
    return-void

    .line 389
    :cond_4
    new-instance v0, Lorg/jivesoftware/smack/NonSASLAuthentication;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticateAnonymously()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected notifyConnectionError(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 669
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConnection;->shutdown(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 671
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getConnectionListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/ConnectionListener;

    .line 675
    :try_start_0
    invoke-interface {p0, p1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosedOnError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v1

    .line 680
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 683
    :cond_0
    return-void
.end method

.method protected processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter

    .prologue
    .line 577
    if-nez p1, :cond_0

    .line 588
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getPacketCollectors()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketCollector;

    .line 583
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_1

    .line 587
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;

    invoke-direct {v1, p0, p1}, Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;-><init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method protected send(Lcom/kenai/jbosh/ComposableBody;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 556
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to a server!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    if-nez p1, :cond_1

    .line 560
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Body mustn\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 563
    invoke-virtual {p1}, Lcom/kenai/jbosh/ComposableBody;->rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/httpbind"

    const-string v2, "sid"

    invoke-static {v1, v2}, Lcom/kenai/jbosh/BodyQName;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    .line 566
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v1, v0}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V

    .line 567
    return-void

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    if-nez p1, :cond_1

    .line 423
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    if-nez v0, :cond_2

    .line 429
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/BOSHConnection;->firePacketInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 432
    :try_start_0
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->setPayloadXML(Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConnection;->send(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/BOSHConnection;->firePacketSendingListeners(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 444
    :cond_2
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRosterStorage(Lorg/jivesoftware/smack/RosterStorage;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-eqz v0, :cond_0

    .line 776
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Roster is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

    .line 779
    return-void
.end method

.method protected shutdown(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 489
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/BOSHConnection;->setWasAuthenticated(Z)V

    .line 490
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 491
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 493
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 494
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    .line 495
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    .line 498
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    const-string v2, "xmpp"

    const-string v3, "urn:xmpp:xbosh"

    invoke-virtual {v1, v2, v3}, Lcom/kenai/jbosh/ComposableBody$Builder;->setNamespaceDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setPayloadXML(Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->disconnect(Lcom/kenai/jbosh/ComposableBody;)V

    .line 503
    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 510
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    if-eqz v0, :cond_0

    .line 512
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    invoke-virtual {v0}, Ljava/io/PipedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 515
    :goto_1
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    .line 517
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_1

    .line 519
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 522
    :goto_2
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    .line 524
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_2

    .line 526
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 529
    :goto_3
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->writer:Ljava/io/Writer;

    .line 533
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 536
    :cond_3
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    .line 537
    return-void

    .line 528
    :catch_0
    move-exception v0

    goto :goto_3

    .line 521
    :catch_1
    move-exception v0

    goto :goto_2

    .line 514
    :catch_2
    move-exception v0

    goto :goto_1

    .line 505
    :catch_3
    move-exception v0

    goto :goto_0
.end method
