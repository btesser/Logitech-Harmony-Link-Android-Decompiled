.class Lcom/logitech/connect/ConnectClient$10;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/ConnectClient;->onPacketWasWritten(Lorg/jivesoftware/smack/packet/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/ConnectClient;

.field final synthetic val$r:Lorg/jivesoftware/smack/packet/Packet;


# direct methods
.method constructor <init>(Lcom/logitech/connect/ConnectClient;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    iput-object p2, p0, Lcom/logitech/connect/ConnectClient$10;->val$r:Lorg/jivesoftware/smack/packet/Packet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 740
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient$10;->val$r:Lorg/jivesoftware/smack/packet/Packet;

    check-cast v0, Lcom/logitech/connect/client/transport/OaIQ;

    .line 741
    .local v0, iq:Lcom/logitech/connect/client/transport/OaIQ;
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mWrittenRequests:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/logitech/connect/ConnectClient;->access$800(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/OaIQ;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mWriteTimeoutPending:Z
    invoke-static {v1}, Lcom/logitech/connect/ConnectClient;->access$1200(Lcom/logitech/connect/ConnectClient;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    #setter for: Lcom/logitech/connect/ConnectClient;->mWriteTimeoutPending:Z
    invoke-static {v1, v7}, Lcom/logitech/connect/ConnectClient;->access$1202(Lcom/logitech/connect/ConnectClient;Z)Z

    .line 745
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/logitech/connect/ConnectClient;->access$300(Lcom/logitech/connect/ConnectClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mWriteTimeoutCheck:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/logitech/connect/ConnectClient;->access$1300(Lcom/logitech/connect/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutPending:Z
    invoke-static {v1}, Lcom/logitech/connect/ConnectClient;->access$1500(Lcom/logitech/connect/ConnectClient;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    #setter for: Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutPending:Z
    invoke-static {v1, v7}, Lcom/logitech/connect/ConnectClient;->access$1502(Lcom/logitech/connect/ConnectClient;Z)Z

    .line 751
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/logitech/connect/ConnectClient;->access$300(Lcom/logitech/connect/ConnectClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutCheck:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/logitech/connect/ConnectClient;->access$1400(Lcom/logitech/connect/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient$10;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #setter for: Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J
    invoke-static {v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->access$1002(Lcom/logitech/connect/ConnectClient;J)J

    .line 756
    return-void
.end method
