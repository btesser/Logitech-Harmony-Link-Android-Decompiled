.class public Lorg/jivesoftware/smack/ReconnectionManager;
.super Ljava/lang/Object;
.source "ReconnectionManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field done:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lorg/jivesoftware/smack/ReconnectionManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/ReconnectionManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    .line 39
    iput-object p1, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/ReconnectionManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/ReconnectionManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/ReconnectionManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private isReconnectionAllowed()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->isReconnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connectionClosed()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    .line 166
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    .line 170
    instance-of v0, p1, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v0, :cond_1

    .line 171
    check-cast p1, Lorg/jivesoftware/smack/XMPPException;

    .line 172
    invoke-virtual {p1}, Lorg/jivesoftware/smack/XMPPException;->getStreamError()Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StreamError;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "conflict"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->reconnect()V

    goto :goto_0
.end method

.method protected notifyAttemptToReconnectIn(I)V
    .locals 2
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v0, v0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/ConnectionListener;

    .line 159
    invoke-interface {p0, p1}, Lorg/jivesoftware/smack/ConnectionListener;->reconnectingIn(I)V

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method protected notifyReconnectionFailed(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v0, v0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/ConnectionListener;

    .line 146
    invoke-interface {p0, p1}, Lorg/jivesoftware/smack/ConnectionListener;->reconnectionFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method protected reconnect()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lorg/jivesoftware/smack/ReconnectionManager$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/ReconnectionManager$2;-><init>(Lorg/jivesoftware/smack/ReconnectionManager;)V

    .line 132
    const-string v1, "Smack Reconnection Manager"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    :cond_0
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter

    .prologue
    .line 191
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method
