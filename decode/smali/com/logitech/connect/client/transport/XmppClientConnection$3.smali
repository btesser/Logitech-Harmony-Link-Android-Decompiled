.class Lcom/logitech/connect/client/transport/XmppClientConnection$3;
.super Ljava/lang/Object;
.source "XmppClientConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/connect/client/transport/XmppClientConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;


# direct methods
.method constructor <init>(Lcom/logitech/connect/client/transport/XmppClientConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 142
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const/4 v2, 0x0

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1, v2}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$502(Lcom/logitech/connect/client/transport/XmppClientConnection;Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$000(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v0

    .line 151
    .local v0, wasConnected:I
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const/4 v2, 0x0

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I
    invoke-static {v1, v2}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$002(Lcom/logitech/connect/client/transport/XmppClientConnection;I)I

    .line 152
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$000(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCondition:Z
    invoke-static {v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$600(Lcom/logitech/connect/client/transport/XmppClientConnection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, v1, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I
    invoke-static {v2}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$000(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v2

    iget-object v3, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCondition:Z
    invoke-static {v3}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$600(Lcom/logitech/connect/client/transport/XmppClientConnection;)Z

    move-result v3

    iget-object v4, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$3;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCode:I
    invoke-static {v4}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$700(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/logitech/connect/client/transport/IConnectClient;->onConnectChanged(IZI)V

    .line 157
    :cond_3
    return-void
.end method
