.class Lcom/logitech/harmonylink/context/LoginActivity$7;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 312
    iput-object p1, p0, Lcom/logitech/harmonylink/context/LoginActivity$7;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$7;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/LoginActivity;->access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/logitech/harmonylink/context/LoginActivity$7;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/LoginActivity$7;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgLoginStatus:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/LoginActivity;->access$100(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/app/Dialog;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/LoginActivity$7;->this$0:Lcom/logitech/harmonylink/context/LoginActivity;

    #getter for: Lcom/logitech/harmonylink/context/LoginActivity;->mDlgStatusText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/LoginActivity;->access$1200(Lcom/logitech/harmonylink/context/LoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f06009c

    #calls: Lcom/logitech/harmonylink/context/LoginActivity;->changeMessage(Landroid/app/Dialog;Landroid/widget/TextView;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/LoginActivity;->access$1400(Lcom/logitech/harmonylink/context/LoginActivity;Landroid/app/Dialog;Landroid/widget/TextView;I)V

    .line 317
    :cond_0
    return-void
.end method
