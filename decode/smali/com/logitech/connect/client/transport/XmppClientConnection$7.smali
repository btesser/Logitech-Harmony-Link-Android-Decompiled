.class Lcom/logitech/connect/client/transport/XmppClientConnection$7;
.super Ljava/lang/Object;
.source "XmppClientConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/client/transport/XmppClientConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

.field final synthetic val$p:Lorg/jivesoftware/smack/packet/Packet;


# direct methods
.method constructor <init>(Lcom/logitech/connect/client/transport/XmppClientConnection;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iput-object p2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->val$p:Lorg/jivesoftware/smack/packet/Packet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdConnect:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->val$p:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 363
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->val$p:Lorg/jivesoftware/smack/packet/Packet;

    invoke-interface {v1, v2}, Lcom/logitech/connect/client/transport/IConnectClient;->onPacketWasWritten(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_1
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 368
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in sending packet."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdDisconnect:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 374
    :try_start_1
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdConnect:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 375
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->val$p:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 378
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->val$p:Lorg/jivesoftware/smack/packet/Packet;

    invoke-interface {v1, v2}, Lcom/logitech/connect/client/transport/IConnectClient;->onPacketWasWritten(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 382
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 384
    invoke-static {}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in sending packet."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdDisconnect:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 390
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$7;->val$p:Lorg/jivesoftware/smack/packet/Packet;

    invoke-interface {v1, v2}, Lcom/logitech/connect/client/transport/IConnectClient;->onPacketSendFailed(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
