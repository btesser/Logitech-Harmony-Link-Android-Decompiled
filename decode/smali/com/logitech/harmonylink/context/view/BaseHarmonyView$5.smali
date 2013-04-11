.class Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;
.super Lcom/logitech/harmonylink/util/SimpleTouchListener;
.source "BaseHarmonyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

.field final synthetic val$button:Landroid/view/View;

.field final synthetic val$command:Lcom/logitech/harmonylink/harmony/Command;

.field final synthetic val$dom:Lcom/logitech/harmonylink/harmony/Dom;

.field final synthetic val$pageNumber:Ljava/lang/Integer;

.field final synthetic val$tabNumber:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/harmony/Command;Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$command:Lcom/logitech/harmonylink/harmony/Command;

    iput-object p3, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    iput-object p4, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$tabNumber:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$pageNumber:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$button:Landroid/view/View;

    invoke-direct {p0}, Lcom/logitech/harmonylink/util/SimpleTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$command:Lcom/logitech/harmonylink/harmony/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$command:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 433
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->start()V

    .line 434
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$tabNumber:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$pageNumber:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setTabAndPage(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 436
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const v3, 0x7f070004

    .line 441
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v2}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->stop()V

    .line 442
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->send2xCancelCommand()Z

    .line 443
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$button:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->val$button:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mCtxWatchGTV:Landroid/content/Context;

    invoke-static {v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 447
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v2, "item"

    const-string v3, "primarycontrol"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    if-eqz v1, :cond_2

    .line 450
    const-string v2, "swapview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    const-string v2, "screen"

    const-string v3, "dpadcontrols"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_0
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mGestureView:Lcom/logitech/harmonylink/context/view/GestureView;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/context/view/GestureView;->SwapView()V

    .line 460
    .end local v0           #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 453
    .restart local v0       #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    const-string v2, "screen"

    const-string v3, "default"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_2
    const-string v2, "screen"

    const-string v3, "default"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
