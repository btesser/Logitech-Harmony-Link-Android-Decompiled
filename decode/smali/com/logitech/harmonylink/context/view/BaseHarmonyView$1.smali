.class Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;
.super Lcom/logitech/harmonylink/util/SimpleTouchListener;
.source "BaseHarmonyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->addlastRowCommands(Ljava/util/ArrayList;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

.field final synthetic val$command:Lcom/logitech/harmonylink/harmony/Command;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/harmony/Command;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;->val$command:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {p0}, Lcom/logitech/harmonylink/util/SimpleTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;->val$command:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 185
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->start()V

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->stop()V

    .line 193
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->send2xCancelCommand()Z

    .line 195
    const/4 v0, 0x0

    return v0
.end method
