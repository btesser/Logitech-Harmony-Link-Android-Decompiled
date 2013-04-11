.class Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;
.super Ljava/lang/Object;
.source "CustomSlidingDrawer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollY:F

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollX:F

    .line 558
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->initChange()Z

    .line 559
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 562
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$002(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 563
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$300(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, p4

    :goto_0
    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mVelocity:F
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1002(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;F)F

    .line 564
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v1, v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->post(Ljava/lang/Runnable;)Z

    .line 565
    return v2

    :cond_0
    move v1, p3

    .line 563
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 569
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 571
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    sget-object v3, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->TRACKING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$002(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 572
    const/4 v1, 0x0

    .local v1, tmpY:F
    const/4 v0, 0x0

    .line 573
    .local v0, tmpX:F
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I
    invoke-static {v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$300(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 574
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollY:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollY:F

    .line 575
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v2

    if-nez v2, :cond_2

    .line 576
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentHeight:I
    invoke-static {v4}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$600(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v4

    neg-int v4, v4

    #calls: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1800(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;FII)F

    move-result v1

    .line 588
    :goto_0
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F
    invoke-static {v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F
    invoke-static {v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1100(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F
    invoke-static {v2, v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1402(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;F)F

    .line 590
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F
    invoke-static {v2, v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1102(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;F)F

    .line 591
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->invalidate()V

    .line 593
    :cond_1
    return v6

    .line 578
    :cond_2
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentHeight:I
    invoke-static {v4}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$600(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v4

    #calls: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1800(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;FII)F

    move-result v1

    goto :goto_0

    .line 581
    :cond_3
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollX:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollX:F

    .line 582
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 583
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentWidth:I
    invoke-static {v4}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$500(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v4

    neg-int v4, v4

    #calls: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1800(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;FII)F

    move-result v0

    goto :goto_0

    .line 585
    :cond_4
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentWidth:I
    invoke-static {v4}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$500(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v4

    #calls: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1800(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;FII)F

    move-result v0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 597
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public setScroll(II)V
    .locals 1
    .parameter "initScrollX"
    .parameter "initScrollY"

    .prologue
    .line 553
    int-to-float v0, p1

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollX:F

    .line 554
    int-to-float v0, p2

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->scrollY:F

    .line 555
    return-void
.end method
