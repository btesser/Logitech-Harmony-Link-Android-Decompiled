.class Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;
.super Ljava/lang/Object;
.source "StartHarmonyActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/StartHarmonyActivity;->sendHeartbeat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private monitorHeartbeats()V
    .locals 5

    .prologue
    .line 536
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->isFinishing()Z

    move-result v0

    .line 537
    .local v0, isActivityFinishing:Z
    if-eqz v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    const/4 v2, 0x1

    #setter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mPingStarted:Z
    invoke-static {v1, v2}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$702(Lcom/logitech/harmonylink/context/StartHarmonyActivity;Z)Z

    .line 542
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-static {v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$808(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)I

    .line 545
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mCurrentTry:I
    invoke-static {v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$800(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mMaxRetries:I
    invoke-static {v2}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$900(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 546
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$1000(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$1000(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mSendHeartbeat:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$1100(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 550
    :cond_2
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$1000(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mPingStarted:Z
    invoke-static {v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$700(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$1000(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mSendHeartbeat:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$1100(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 552
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->showAlertDialog(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->monitorHeartbeats()V

    .line 530
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;->monitorHeartbeats()V

    .line 525
    return-void
.end method
