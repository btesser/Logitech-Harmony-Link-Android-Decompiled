.class Lcom/logitech/connect/ConnectClient$8;
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
    .line 695
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x7d0

    const/4 v8, 0x0

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 697
    .local v0, now:J
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$1000(Lcom/logitech/connect/ConnectClient;)J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 699
    .local v2, timeSinceLastPacketWritten:J
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$1000(Lcom/logitech/connect/ConnectClient;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mLastPresence:J
    invoke-static {v6}, Lcom/logitech/connect/ConnectClient;->access$1100(Lcom/logitech/connect/ConnectClient;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 700
    cmp-long v4, v2, v9

    if-lez v4, :cond_0

    .line 701
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/logitech/connect/ConnectClient;->onWriteTimeout()V

    .line 702
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    #setter for: Lcom/logitech/connect/ConnectClient;->mWriteTimeoutPending:Z
    invoke-static {v4, v8}, Lcom/logitech/connect/ConnectClient;->access$1202(Lcom/logitech/connect/ConnectClient;Z)Z

    .line 711
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/logitech/connect/ConnectClient;->access$300(Lcom/logitech/connect/ConnectClient;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mWriteTimeoutCheck:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/logitech/connect/ConnectClient;->access$1300(Lcom/logitech/connect/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v5

    iget-object v6, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J
    invoke-static {v6}, Lcom/logitech/connect/ConnectClient;->access$1000(Lcom/logitech/connect/ConnectClient;)J

    move-result-wide v6

    add-long/2addr v6, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 709
    :cond_1
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$8;->this$0:Lcom/logitech/connect/ConnectClient;

    #setter for: Lcom/logitech/connect/ConnectClient;->mWriteTimeoutPending:Z
    invoke-static {v4, v8}, Lcom/logitech/connect/ConnectClient;->access$1202(Lcom/logitech/connect/ConnectClient;Z)Z

    goto :goto_0
.end method
