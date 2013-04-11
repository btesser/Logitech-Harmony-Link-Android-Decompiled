.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getVersionNumber()V
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
    .line 404
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

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
    .line 398
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 11
    .parameter "response"

    .prologue
    const/16 v10, 0x3d

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 409
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "400"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 410
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; Message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getCompleted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 413
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, vresponse:Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 415
    .local v1, indexOfEqual:I
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 416
    .local v3, indexone:I
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 417
    .local v2, indexcolon:I
    const/4 v6, -0x1

    if-le v1, v6, :cond_0

    .line 418
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, updateNeeded:Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 421
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 422
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    iget-object v6, v6, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->isManufacturingConfig()Z

    move-result v6

    if-nez v6, :cond_2

    .line 423
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f06008d

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 426
    const v6, 0x7f06008e

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f060090

    new-instance v8, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$2;

    invoke-direct {v8, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$2;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f06008f

    new-instance v8, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$1;

    invoke-direct {v8, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7$1;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 451
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->onFirmwareUpgrade()V
    invoke-static {v6}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    goto :goto_0

    .line 454
    :cond_3
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTimeOutFactor:I
    invoke-static {v6, v8}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2202(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I

    .line 455
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutFactor:I
    invoke-static {v6, v9}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2302(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I

    .line 456
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I
    invoke-static {v6, v8}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$902(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I

    .line 457
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->startSync()V
    invoke-static {v6}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    goto/16 :goto_0
.end method
