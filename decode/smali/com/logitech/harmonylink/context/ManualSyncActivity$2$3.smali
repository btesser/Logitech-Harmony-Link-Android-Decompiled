.class Lcom/logitech/harmonylink/context/ManualSyncActivity$2$3;
.super Ljava/lang/Object;
.source "ManualSyncActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/ManualSyncActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$3;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$3;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgSyncStatus:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$3;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgSyncStatus:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$3;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$3;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method
