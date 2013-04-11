.class Lcom/logitech/connect/client/transport/XmppClientConnection$1;
.super Ljava/lang/Object;
.source "XmppClientConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/client/transport/XmppClientConnection;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

.field final synthetic val$port:I

.field final synthetic val$server:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/logitech/connect/client/transport/XmppClientConnection;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iput-object p2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->val$server:Ljava/lang/String;

    iput p3, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->val$port:I

    iput-object p4, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->val$userName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$000(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$100(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->val$server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mPort:I
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$200(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v0

    iget v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->val$port:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mUserName:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$300(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->val$userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v0, v0, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdDisconnect:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->val$userName:Ljava/lang/String;

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mUserName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$302(Lcom/logitech/connect/client/transport/XmppClientConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->val$server:Ljava/lang/String;

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$102(Lcom/logitech/connect/client/transport/XmppClientConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->val$port:I

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mPort:I
    invoke-static {v0, v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$202(Lcom/logitech/connect/client/transport/XmppClientConnection;I)I

    .line 77
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$100(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$100(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$1;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v0, v0, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdConnect:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 79
    :cond_2
    return-void
.end method
