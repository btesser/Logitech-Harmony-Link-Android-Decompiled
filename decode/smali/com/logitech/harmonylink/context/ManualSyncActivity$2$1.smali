.class Lcom/logitech/harmonylink/context/ManualSyncActivity$2$1;
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
    .line 93
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$1;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$1;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHasResponded:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$000(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$1;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #calls: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->sendHeartBeat()V
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$100(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ManualSyncActivity$2$1;->this$1:Lcom/logitech/harmonylink/context/ManualSyncActivity$2;

    #getter for: Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->mHeartbeatHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ManualSyncActivity$2;->access$200(Lcom/logitech/harmonylink/context/ManualSyncActivity$2;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
