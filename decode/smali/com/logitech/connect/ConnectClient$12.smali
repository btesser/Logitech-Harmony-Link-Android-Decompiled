.class Lcom/logitech/connect/ConnectClient$12;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/ConnectClient;->onXmppConnectionClosedOnError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/ConnectClient;


# direct methods
.method constructor <init>(Lcom/logitech/connect/ConnectClient;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$12;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 777
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$12;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mWrittenRequests:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$800(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 778
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$12;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$700(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/connect/client/transport/IResponseHandler;

    .line 779
    .local v0, h:Lcom/logitech/connect/client/transport/IResponseHandler;
    if-eqz v0, :cond_0

    .line 780
    const-string v4, "500"

    const-string v5, "Transport closed on error"

    invoke-interface {v0, v3, v4, v5}, Lcom/logitech/connect/client/transport/IResponseHandler;->onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$12;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$700(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 785
    .end local v0           #h:Lcom/logitech/connect/client/transport/IResponseHandler;
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$12;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mWrittenRequests:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$800(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 786
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$12;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$900(Lcom/logitech/connect/ConnectClient;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/connect/IGlobalResponseObserver;

    .line 787
    .local v2, o:Lcom/logitech/connect/IGlobalResponseObserver;
    const/4 v4, 0x3

    invoke-interface {v2, v4}, Lcom/logitech/connect/IGlobalResponseObserver;->onPacketSendingFailed(I)V

    goto :goto_1

    .line 789
    .end local v2           #o:Lcom/logitech/connect/IGlobalResponseObserver;
    :cond_2
    return-void
.end method
