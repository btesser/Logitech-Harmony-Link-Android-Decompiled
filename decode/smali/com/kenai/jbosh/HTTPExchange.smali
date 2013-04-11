.class final Lcom/kenai/jbosh/HTTPExchange;
.super Ljava/lang/Object;
.source "HTTPExchange.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final ready:Ljava/util/concurrent/locks/Condition;

.field private final request:Lcom/kenai/jbosh/AbstractBody;

.field private response:Lcom/kenai/jbosh/HTTPResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/kenai/jbosh/HTTPExchange;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/HTTPExchange;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->lock:Ljava/util/concurrent/locks/Lock;

    .line 52
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->ready:Ljava/util/concurrent/locks/Condition;

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request body cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/kenai/jbosh/HTTPExchange;->request:Lcom/kenai/jbosh/AbstractBody;

    .line 72
    return-void
.end method


# virtual methods
.method getHTTPResponse()Lcom/kenai/jbosh/HTTPResponse;
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 113
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->response:Lcom/kenai/jbosh/HTTPResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->ready:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_2
    sget-object v1, Lcom/kenai/jbosh/HTTPExchange;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/HTTPExchange;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 120
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->response:Lcom/kenai/jbosh/HTTPResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    iget-object v1, p0, Lcom/kenai/jbosh/HTTPExchange;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method getRequest()Lcom/kenai/jbosh/AbstractBody;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->request:Lcom/kenai/jbosh/AbstractBody;

    return-object v0
.end method

.method setHTTPResponse(Lcom/kenai/jbosh/HTTPResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->response:Lcom/kenai/jbosh/HTTPResponse;

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTPResponse was already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/HTTPExchange;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 98
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/kenai/jbosh/HTTPExchange;->response:Lcom/kenai/jbosh/HTTPResponse;

    .line 99
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->ready:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    iget-object v0, p0, Lcom/kenai/jbosh/HTTPExchange;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    return-void
.end method
