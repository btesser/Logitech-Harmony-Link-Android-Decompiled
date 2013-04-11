.class public Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;
.super Lcom/logitech/harmonylink/util/SimpleTouchListener;
.source "DeviceCommandsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridViewListener"
.end annotation


# instance fields
.field mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field mGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/widget/GridView;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter "gridView"
    .parameter "dom"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/logitech/harmonylink/util/SimpleTouchListener;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mGridView:Landroid/widget/GridView;

    .line 128
    iput-object p2, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 130
    return-void
.end method


# virtual methods
.method public onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 133
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v1

    .line 134
    .local v1, position:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Command;

    .line 137
    .local v0, command:Lcom/logitech/harmonylink/harmony/Command;
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;Z)Z

    .line 139
    new-instance v2, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$ItemSelectionViewDelegate;

    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mGridView:Landroid/widget/GridView;

    invoke-direct {v2, v3, v1}, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$ItemSelectionViewDelegate;-><init>(Landroid/widget/GridView;I)V

    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {v2, v3}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->start()V

    .line 141
    .end local v0           #command:Lcom/logitech/harmonylink/harmony/Command;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v0

    .line 146
    .local v0, position:I
    new-instance v1, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$ItemSelectionViewDelegate;

    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mGridView:Landroid/widget/GridView;

    invoke-direct {v1, v2, v0}, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$ItemSelectionViewDelegate;-><init>(Landroid/widget/GridView;I)V

    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {v1, v2}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->stop()V

    .line 147
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity$GridViewListener;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->sendCancelCommand()Z

    .line 149
    const/4 v1, 0x0

    return v1
.end method
