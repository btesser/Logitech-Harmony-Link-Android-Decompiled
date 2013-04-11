.class Lcom/logitech/harmonylink/context/StartHarmonyActivity$4;
.super Ljava/lang/Object;
.source "StartHarmonyActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/StartHarmonyActivity;->launchOneTouchContent()V
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
    .line 407
    iput-object p1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$4;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$4;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #getter for: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mIsAlertShown:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$600(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$4;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->finish()V

    .line 405
    :cond_0
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 408
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$4;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->completeLoading()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$4;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
