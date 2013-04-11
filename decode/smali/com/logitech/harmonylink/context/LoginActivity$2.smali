.class Lcom/logitech/harmonylink/context/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/LoginActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 158
    iput-object p1, p0, Lcom/logitech/harmonylink/context/LoginActivity$2;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$2;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$2;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$400(Lcom/logitech/harmonylink/context/LoginActivity;)Lcom/logitech/connect/pairing/PairingResponseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/pairing/PairingResponseHandler;->cancel()V

    .line 162
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$2;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$2;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$500(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$2;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$500(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/LoginActivity$2;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/LoginActivity;->dialogTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$2;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/context/LoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/LoginActivity;->access$502(Lcom/logitech/harmonylink/context/LoginActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 168
    :cond_1
    return-void
.end method
