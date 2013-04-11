.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Lcom/logitech/connect/IConnectClientObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(IZI)V
    .locals 5
    .parameter "connectionState"
    .parameter "iserror"
    .parameter "errorCode"

    .prologue
    const/4 v4, 0x2

    .line 139
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mGuid:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirmwareInstallInProgress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$900(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMatchFound:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1000(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$900(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const/4 v1, 0x0

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;Z)V
    invoke-static {v0, v1, p2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;Z)V

    .line 166
    :cond_2
    :goto_0
    return-void

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMatchFound:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1000(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mReconnect:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1200(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1300(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x3a980

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onTargetsChanged(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mGuid:Ljava/lang/String;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/Target;

    .line 174
    .local v1, target:Lcom/logitech/connect/Target;
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mGuid:Ljava/lang/String;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/logitech/connect/Target;->getGuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMatchFound:Z
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1000(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const/4 v3, 0x1

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMatchFound:Z
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1002(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Z)Z

    .line 176
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v1}, Lcom/logitech/connect/Target;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mHostAddress:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$202(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v1}, Lcom/logitech/connect/Target;->getPort()I

    move-result v3

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPort:I
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$302(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I

    .line 179
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Lcom/logitech/connect/ConnectClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/connect/ConnectClient;->stopDiscoveryProbe()V

    .line 181
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mReconnect:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1200(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/32 v4, 0xafc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 185
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #target:Lcom/logitech/connect/Target;
    :cond_1
    return-void
.end method
