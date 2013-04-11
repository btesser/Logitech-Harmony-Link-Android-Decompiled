.class Lcom/logitech/connect/ConnectClient$7;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/ConnectClient;->onPacketSendFailed(Lorg/jivesoftware/smack/packet/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/ConnectClient;

.field final synthetic val$p:Lorg/jivesoftware/smack/packet/Packet;


# direct methods
.method constructor <init>(Lcom/logitech/connect/ConnectClient;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$7;->this$0:Lcom/logitech/connect/ConnectClient;

    iput-object p2, p0, Lcom/logitech/connect/ConnectClient$7;->val$p:Lorg/jivesoftware/smack/packet/Packet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 673
    iget-object v2, p0, Lcom/logitech/connect/ConnectClient$7;->val$p:Lorg/jivesoftware/smack/packet/Packet;

    check-cast v2, Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 675
    .local v2, iq:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    const-string v4, "400"

    const-string v5, "Could not be sent"

    const-string v6, ""

    invoke-interface {v2, v4, v5, v6}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->createOpenApiResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v2

    .line 677
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$7;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$700(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v2}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/connect/client/transport/IResponseHandler;

    .line 678
    .local v0, handler:Lcom/logitech/connect/client/transport/IResponseHandler;
    if-eqz v0, :cond_0

    .line 679
    invoke-interface {v0, v2}, Lcom/logitech/connect/client/transport/IResponseHandler;->onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V

    .line 682
    :cond_0
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$7;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$700(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v2}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$7;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mWrittenRequests:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$800(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v2}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 684
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$7;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$900(Lcom/logitech/connect/ConnectClient;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/connect/IGlobalResponseObserver;

    .line 685
    .local v3, o:Lcom/logitech/connect/IGlobalResponseObserver;
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$7;->this$0:Lcom/logitech/connect/ConnectClient;

    iget v4, v4, Lcom/logitech/connect/ConnectClient;->mErrorCode:I

    invoke-interface {v3, v4}, Lcom/logitech/connect/IGlobalResponseObserver;->onPacketSendingFailed(I)V

    goto :goto_0

    .line 687
    .end local v3           #o:Lcom/logitech/connect/IGlobalResponseObserver;
    :cond_1
    return-void
.end method
