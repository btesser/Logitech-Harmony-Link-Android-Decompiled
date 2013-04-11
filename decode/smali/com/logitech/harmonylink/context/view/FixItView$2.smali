.class Lcom/logitech/harmonylink/context/view/FixItView$2;
.super Lcom/logitech/harmonylink/util/SimpleTouchListener;
.source "FixItView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/FixItView;->parseButton(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/FixItView;

.field final synthetic val$cmd:Lcom/logitech/harmonylink/harmony/Command;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/FixItView;Lcom/logitech/harmonylink/harmony/Command;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/FixItView$2;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/FixItView$2;->val$cmd:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {p0}, Lcom/logitech/harmonylink/util/SimpleTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView$2;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/FixItView$2;->val$cmd:Lcom/logitech/harmonylink/harmony/Command;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;Z)Z

    .line 319
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView$2;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->start()V

    .line 321
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView$2;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mButtonPressedCallback:Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView$2;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mButtonPressedCallback:Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;

    invoke-interface {v0, p1}, Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;->onButtonPressed(Landroid/view/View;)V

    .line 325
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView$2;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->stop()V

    .line 331
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView$2;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->sendCancelCommand()Z

    .line 333
    const/4 v0, 0x0

    return v0
.end method
