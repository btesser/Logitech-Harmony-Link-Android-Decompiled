.class Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;
.super Lcom/logitech/harmonylink/util/SimpleTouchListener;
.source "WatchGTVView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

.field final synthetic val$command:Lcom/logitech/harmonylink/harmony/Command;

.field final synthetic val$dom:Lcom/logitech/harmonylink/harmony/Dom;

.field final synthetic val$pageNumber:Ljava/lang/Integer;

.field final synthetic val$tabNumber:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iput-object p2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    iput-object p3, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$command:Lcom/logitech/harmonylink/harmony/Command;

    iput-object p4, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$tabNumber:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$pageNumber:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/logitech/harmonylink/util/SimpleTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$command:Lcom/logitech/harmonylink/harmony/Command;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;Z)Z

    .line 410
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->start()V

    .line 412
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$tabNumber:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$pageNumber:Ljava/lang/Integer;

    #calls: Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setTabAndPage(Ljava/lang/Integer;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->access$200(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public onActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->stop()V

    .line 419
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->sendCancelCommand()Z

    .line 421
    const/4 v0, 0x0

    return v0
.end method
