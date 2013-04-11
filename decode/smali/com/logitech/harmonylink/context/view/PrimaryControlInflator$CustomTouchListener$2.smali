.class Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;
.super Ljava/lang/Object;
.source "PrimaryControlInflator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f070004

    .line 472
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->selectedView:Landroid/view/View;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$300(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    iget-object v3, v3, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$200(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->stop()V

    .line 473
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$200(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->send2xCancelCommand()Z

    .line 474
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->button:Landroid/view/View;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$700(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->button:Landroid/view/View;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$700(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->baseView:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$600(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 481
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v2, "item"

    const-string v3, "primarycontrol"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    if-eqz v1, :cond_2

    .line 484
    const-string v2, "swapview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    const-string v2, "screen"

    const-string v3, "dpadcontrols"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_0
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->baseView:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$600(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getGestureView()Lcom/logitech/harmonylink/context/view/GestureView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/context/view/GestureView;->SwapView()V

    .line 494
    .end local v0           #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 487
    .restart local v0       #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    const-string v2, "screen"

    const-string v3, "default"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_2
    const-string v2, "screen"

    const-string v3, "default"

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
