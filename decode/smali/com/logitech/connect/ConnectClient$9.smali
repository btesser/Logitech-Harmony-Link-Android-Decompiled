.class Lcom/logitech/connect/ConnectClient$9;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/connect/ConnectClient;
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
    .line 715
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x1d4c0

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 717
    .local v0, now:J
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$1000(Lcom/logitech/connect/ConnectClient;)J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 719
    .local v2, timeSinceLastPacketWritten:J
    cmp-long v4, v2, v8

    if-gez v4, :cond_1

    .line 720
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$300(Lcom/logitech/connect/ConnectClient;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 721
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$300(Lcom/logitech/connect/ConnectClient;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutCheck:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/logitech/connect/ConnectClient;->access$1400(Lcom/logitech/connect/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v5

    iget-object v6, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J
    invoke-static {v6}, Lcom/logitech/connect/ConnectClient;->access$1000(Lcom/logitech/connect/ConnectClient;)J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    const/4 v5, 0x0

    #setter for: Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutPending:Z
    invoke-static {v4, v5}, Lcom/logitech/connect/ConnectClient;->access$1502(Lcom/logitech/connect/ConnectClient;Z)Z

    .line 727
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$1600(Lcom/logitech/connect/ConnectClient;)Lcom/logitech/connect/client/transport/XmppClientConnection;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mKeepAlive:Z
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$1700(Lcom/logitech/connect/ConnectClient;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 728
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$9;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$1600(Lcom/logitech/connect/ConnectClient;)Lcom/logitech/connect/client/transport/XmppClientConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/connect/client/transport/XmppClientConnection;->disconnect()V

    goto :goto_0
.end method
