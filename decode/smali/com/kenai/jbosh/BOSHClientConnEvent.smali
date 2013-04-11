.class public final Lcom/kenai/jbosh/BOSHClientConnEvent;
.super Ljava/util/EventObject;
.source "BOSHClientConnEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final connected:Z

.field private final requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/kenai/jbosh/BOSHClient;ZLjava/util/List;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kenai/jbosh/BOSHClient;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 70
    iput-boolean p2, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->connected:Z

    .line 71
    iput-object p4, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->cause:Ljava/lang/Throwable;

    .line 73
    iget-boolean v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->connected:Z

    if-eqz v0, :cond_1

    .line 74
    if-eqz p4, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be connected and have a cause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be connected and have outstanding requests"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    if-nez p3, :cond_2

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->requests:Ljava/util/List;

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->requests:Ljava/util/List;

    goto :goto_0
.end method

.method static createConnectionClosedEvent(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConnEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/kenai/jbosh/BOSHClientConnEvent;-><init>(Lcom/kenai/jbosh/BOSHClient;ZLjava/util/List;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static createConnectionClosedOnErrorEvent(Lcom/kenai/jbosh/BOSHClient;Ljava/util/List;Ljava/lang/Throwable;)Lcom/kenai/jbosh/BOSHClientConnEvent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kenai/jbosh/BOSHClient;",
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/kenai/jbosh/BOSHClientConnEvent;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConnEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/kenai/jbosh/BOSHClientConnEvent;-><init>(Lcom/kenai/jbosh/BOSHClient;ZLjava/util/List;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static createConnectionEstablishedEvent(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConnEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/kenai/jbosh/BOSHClientConnEvent;-><init>(Lcom/kenai/jbosh/BOSHClient;ZLjava/util/List;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getBOSHClient()Lcom/kenai/jbosh/BOSHClient;
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConnEvent;->getSource()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kenai/jbosh/BOSHClient;

    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getOutstandingRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->requests:Ljava/util/List;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->connected:Z

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConnEvent;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
