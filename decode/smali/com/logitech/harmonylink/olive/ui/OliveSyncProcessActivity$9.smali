.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->sendHeartBeat()V
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
    .line 552
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const/4 v1, 0x1

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1102(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Z)Z

    .line 524
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2708(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I

    .line 526
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mGuid:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirmwareInstallInProgress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 531
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->disconnect()V

    .line 532
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->sendDiscoveryProbe()V

    goto :goto_0

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTry:I
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxRetry:I
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 538
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 544
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Error Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const/4 v1, 0x1

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1102(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Z)Z

    .line 558
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2708(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I

    .line 559
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTry:I
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxRetry:I
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 560
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 566
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const v2, 0x7f060093

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
