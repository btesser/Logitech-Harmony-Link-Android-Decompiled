.class public Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;
.super Ljava/lang/Object;
.source "ListenerEventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;
    }
.end annotation


# instance fields
.field protected transient hasFinishedDispatching:Z

.field protected transient isRunning:Z

.field protected transient triplets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;->triplets:Ljava/util/ArrayList;

    .line 47
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;->hasFinishedDispatching:Z

    .line 48
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;->isRunning:Z

    .line 49
    return-void
.end method


# virtual methods
.method public addListenerTriplet(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;->isRunning:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;->triplets:Ljava/util/ArrayList;

    new-instance v1, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;-><init>(Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-void
.end method

.method public hasFinished()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;->hasFinishedDispatching:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 84
    .line 86
    iput-boolean v5, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;->isRunning:Z

    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;->triplets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 89
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;

    .line 93
    :try_start_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->getListenerMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->getListenerInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->getMethodArguments()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception dispatching an event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 101
    :cond_0
    iput-boolean v5, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;->hasFinishedDispatching:Z

    .line 102
    return-void
.end method
