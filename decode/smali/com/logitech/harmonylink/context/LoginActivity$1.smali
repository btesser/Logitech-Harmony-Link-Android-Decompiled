.class Lcom/logitech/harmonylink/context/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/LoginActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/logitech/harmonylink/context/LoginActivity$1;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelDialog()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$1;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$1;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/LoginActivity$1;->cancelDialog()V

    .line 68
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$1;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #calls: Lcom/logitech/harmonylink/context/LoginActivity;->startOliveSyncActivity()V
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$000(Lcom/logitech/harmonylink/context/LoginActivity;)V

    .line 69
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, newConfigHash:Ljava/lang/String;
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, res:Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 83
    .local v0, indexOfEqual:I
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 84
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/LoginActivity$1;->cancelDialog()V

    .line 87
    const-string v4, "0x00000000"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 89
    .local v1, isManufacturingConfig:Z
    invoke-static {}, Lcom/logitech/harmonylink/context/LoginActivity;->access$200()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setIsManufacturingConfig(Z)V

    .line 91
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity$1;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mSyncRequiredOnPairing:Z
    invoke-static {v4}, Lcom/logitech/harmonylink/context/LoginActivity;->access$300(Lcom/logitech/harmonylink/context/LoginActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    :cond_1
    iget-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity$1;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #calls: Lcom/logitech/harmonylink/context/LoginActivity;->startOliveSyncActivity()V
    invoke-static {v4}, Lcom/logitech/harmonylink/context/LoginActivity;->access$000(Lcom/logitech/harmonylink/context/LoginActivity;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_2
    iget-object v4, p0, Lcom/logitech/harmonylink/context/LoginActivity$1;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/context/LoginActivity;->goToHome()V

    goto :goto_0
.end method
