.class Lcom/logitech/harmonylink/context/ManualSyncActivity$1;
.super Ljava/lang/Object;
.source "ManualSyncActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ManualSyncActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

.field final synthetic val$dlgStatusText:Landroid/widget/TextView;

.field final synthetic val$dlgSyncStatus:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ManualSyncActivity;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$1;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$1;->val$dlgStatusText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$1;->val$dlgSyncStatus:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$1;->val$dlgStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$1;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    const v2, 0x7f060088

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$1;->val$dlgSyncStatus:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 80
    :cond_0
    return-void
.end method
