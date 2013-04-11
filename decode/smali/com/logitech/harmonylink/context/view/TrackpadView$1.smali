.class Lcom/logitech/harmonylink/context/view/TrackpadView$1;
.super Lcom/logitech/harmonylink/util/SimpleTouchListener;
.source "TrackpadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/TrackpadView;->addTrackpadViewHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/TrackpadView;

.field final synthetic val$keyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/TrackpadView;Lcom/logitech/harmonylink/harmony/KeycodeMapping;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/TrackpadView$1;->this$0:Lcom/logitech/harmonylink/context/view/TrackpadView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/TrackpadView$1;->val$keyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    invoke-direct {p0}, Lcom/logitech/harmonylink/util/SimpleTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/TrackpadView$1;->this$0:Lcom/logitech/harmonylink/context/view/TrackpadView;

    #getter for: Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/TrackpadView;->access$000(Lcom/logitech/harmonylink/context/view/TrackpadView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/TrackpadView$1;->val$keyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->getCommand()Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 132
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/TrackpadView$1;->this$0:Lcom/logitech/harmonylink/context/view/TrackpadView;

    #getter for: Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/TrackpadView;->access$000(Lcom/logitech/harmonylink/context/view/TrackpadView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->start()V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public onActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/TrackpadView$1;->this$0:Lcom/logitech/harmonylink/context/view/TrackpadView;

    #getter for: Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/TrackpadView;->access$000(Lcom/logitech/harmonylink/context/view/TrackpadView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->stop()V

    .line 140
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/TrackpadView$1;->this$0:Lcom/logitech/harmonylink/context/view/TrackpadView;

    #getter for: Lcom/logitech/harmonylink/context/view/TrackpadView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/TrackpadView;->access$000(Lcom/logitech/harmonylink/context/view/TrackpadView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->send2xCancelCommand()Z

    .line 142
    const/4 v0, 0x0

    return v0
.end method
