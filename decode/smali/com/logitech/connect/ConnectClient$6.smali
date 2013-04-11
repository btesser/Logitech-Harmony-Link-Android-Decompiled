.class Lcom/logitech/connect/ConnectClient$6;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/ConnectClient;->onOaRequestReceived(Lcom/logitech/connect/client/transport/OaIQ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/ConnectClient;

.field final synthetic val$iq:Lcom/logitech/connect/client/transport/OaIQ;


# direct methods
.method constructor <init>(Lcom/logitech/connect/ConnectClient;Lcom/logitech/connect/client/transport/OaIQ;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$6;->this$0:Lcom/logitech/connect/ConnectClient;

    iput-object p2, p0, Lcom/logitech/connect/ConnectClient$6;->val$iq:Lcom/logitech/connect/client/transport/OaIQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 642
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/logitech/connect/ConnectClient;->access$700(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$6;->val$iq:Lcom/logitech/connect/client/transport/OaIQ;

    invoke-virtual {v4}, Lcom/logitech/connect/client/transport/OaIQ;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/connect/client/transport/IResponseHandler;

    .line 643
    .local v0, handler:Lcom/logitech/connect/client/transport/IResponseHandler;
    if-eqz v0, :cond_0

    .line 644
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->val$iq:Lcom/logitech/connect/client/transport/OaIQ;

    invoke-interface {v0, v3}, Lcom/logitech/connect/client/transport/IResponseHandler;->onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V

    .line 646
    :cond_0
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->val$iq:Lcom/logitech/connect/client/transport/OaIQ;

    invoke-virtual {v3}, Lcom/logitech/connect/client/transport/OaIQ;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/logitech/connect/ConnectClient;->access$700(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$6;->val$iq:Lcom/logitech/connect/client/transport/OaIQ;

    invoke-virtual {v4}, Lcom/logitech/connect/client/transport/OaIQ;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_1
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mWrittenRequests:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/logitech/connect/ConnectClient;->access$800(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$6;->val$iq:Lcom/logitech/connect/client/transport/OaIQ;

    invoke-virtual {v4}, Lcom/logitech/connect/client/transport/OaIQ;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 655
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->val$iq:Lcom/logitech/connect/client/transport/OaIQ;

    invoke-virtual {v3}, Lcom/logitech/connect/client/transport/OaIQ;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "503"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 656
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->notifyServiceUnavailable()V

    .line 663
    :cond_2
    return-void

    .line 657
    :cond_3
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->val$iq:Lcom/logitech/connect/client/transport/OaIQ;

    invoke-virtual {v3}, Lcom/logitech/connect/client/transport/OaIQ;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->val$iq:Lcom/logitech/connect/client/transport/OaIQ;

    invoke-virtual {v3}, Lcom/logitech/connect/client/transport/OaIQ;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 659
    :cond_4
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$6;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/connect/ConnectClient;->access$900(Lcom/logitech/connect/ConnectClient;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/connect/IGlobalResponseObserver;

    .line 660
    .local v2, o:Lcom/logitech/connect/IGlobalResponseObserver;
    invoke-interface {v2}, Lcom/logitech/connect/IGlobalResponseObserver;->onPacketSendingSucceeded()V

    goto :goto_0
.end method
