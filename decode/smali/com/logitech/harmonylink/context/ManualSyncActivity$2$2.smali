.class Lcom/logitech/harmonylink/context/ManualSyncActivity$2$2;
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
    .line 105
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$2;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$2;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$200(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$2;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mCheckHeartbeat:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$300(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$2;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->this$0:Lcom/logitech/harmonylink/context/ManualSyncActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$2;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgSyncStatus:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$2;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->val$dlgStatusText:Landroid/widget/TextView;

    const v3, 0x7f06008a

    #calls: Lcom/logitech/harmonylink/context/ManualSyncActivity;->changeMessage(Landroid/app/Dialog;Landroid/widget/TextView;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/ManualSyncActivity;->access$400(Lcom/logitech/harmonylink/context/ManualSyncActivity;Landroid/app/Dialog;Landroid/widget/TextView;I)V

    .line 109
    return-void
.end method
