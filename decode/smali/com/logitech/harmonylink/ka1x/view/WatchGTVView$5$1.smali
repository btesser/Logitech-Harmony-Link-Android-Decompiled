.class Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5$1;
.super Ljava/lang/Object;
.source "WatchGTVView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;->onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5$1;->this$1:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;

    iput-object p2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5$1;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5$1;->this$1:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;

    iget-object v1, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->stop()V

    .line 508
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5$1;->this$1:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->sendCancelCommand()Z

    .line 510
    return-void
.end method
