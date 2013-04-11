.class Lcom/logitech/connect/ConnectClient$5;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/ConnectClient;->onOaEventMessageReceived(Lorg/jivesoftware/smack/packet/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/ConnectClient;

.field final synthetic val$m:Lorg/jivesoftware/smack/packet/Message;


# direct methods
.method constructor <init>(Lcom/logitech/connect/ConnectClient;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$5;->this$0:Lcom/logitech/connect/ConnectClient;

    iput-object p2, p0, Lcom/logitech/connect/ConnectClient$5;->val$m:Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 615
    iget-object v2, p0, Lcom/logitech/connect/ConnectClient$5;->val$m:Lorg/jivesoftware/smack/packet/Message;

    const-string v3, "event"

    const-string v4, "connect.logitech.com"

    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/client/transport/EventMessageExtension;

    .line 618
    .local v1, x:Lcom/logitech/connect/client/transport/EventMessageExtension;
    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {v1}, Lcom/logitech/connect/client/transport/EventMessageExtension;->getType()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, type:Ljava/lang/String;
    iget-object v2, p0, Lcom/logitech/connect/ConnectClient$5;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mEventMessageHandlers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/logitech/connect/ConnectClient;->access$600(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/logitech/connect/ConnectClient$5;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mEventMessageHandlers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/logitech/connect/ConnectClient;->access$600(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/connect/client/transport/IEventMessageHandler;

    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$5;->val$m:Lorg/jivesoftware/smack/packet/Message;

    invoke-interface {v2, v3, v1}, Lcom/logitech/connect/client/transport/IEventMessageHandler;->onEventMessage(Lorg/jivesoftware/smack/packet/Message;Lcom/logitech/connect/client/transport/EventMessageExtension;)V

    .line 625
    .end local v0           #type:Ljava/lang/String;
    :cond_0
    return-void
.end method
