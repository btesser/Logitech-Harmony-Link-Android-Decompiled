.class Lcom/logitech/connect/client/transport/XmppClientConnection$4;
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
    .line 162
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$4;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$4;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v0, v0, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdDisconnect:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 165
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$4;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$402(Lcom/logitech/connect/client/transport/XmppClientConnection;Landroid/os/Handler;)Landroid/os/Handler;

    .line 166
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$4;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$400(Lcom/logitech/connect/client/transport/XmppClientConnection;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$4;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$400(Lcom/logitech/connect/client/transport/XmppClientConnection;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 170
    :cond_0
    return-void
.end method
