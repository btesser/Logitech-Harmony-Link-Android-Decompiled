.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->startSync()V
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
    .line 499
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTimeOutFactor:I
    invoke-static {v0, v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2202(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I

    .line 493
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutFactor:I
    invoke-static {v0, v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2302(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I

    .line 494
    if-eqz p3, :cond_2

    .line 495
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2502(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const/4 v1, 0x1

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showAppDialog(I)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)V

    goto :goto_0
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const/4 v1, 0x3

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxRetry:I
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2602(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I

    .line 508
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
