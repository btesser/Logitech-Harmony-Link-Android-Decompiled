.class public Lcom/logitech/harmonylink/util/SimpleTouchListener;
.super Ljava/lang/Object;
.source "SimpleTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public onActionMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 22
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 13
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/logitech/harmonylink/util/SimpleTouchListener;->onActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 16
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/logitech/harmonylink/util/SimpleTouchListener;->onActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 19
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/logitech/harmonylink/util/SimpleTouchListener;->onActionMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 9
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
