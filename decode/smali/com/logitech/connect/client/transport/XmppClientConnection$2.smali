.class Lcom/logitech/connect/client/transport/XmppClientConnection$2;
.super Ljava/lang/Thread;
.source "XmppClientConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/client/transport/XmppClientConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IConnectClient;)V
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
    .line 98
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$2;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 102
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$2;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$402(Lcom/logitech/connect/client/transport/XmppClientConnection;Landroid/os/Handler;)Landroid/os/Handler;

    .line 103
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$2;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$100(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$2;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$100(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$2;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v0, v0, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdConnect:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 108
    return-void
.end method
