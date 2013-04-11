.class Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OneTouchGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/OneTouchGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneTouchGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Lcom/logitech/harmonylink/context/view/OneTouchGridView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;-><init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)V

    return-void
.end method

.method private hideTrashcan(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 453
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1, p1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 454
    .local v0, content:Lcom/logitech/harmonylink/model/OneTouchContent;
    if-eqz v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mCategory:Ljava/lang/String;

    .line 458
    :cond_0
    const-string v1, "activities"

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$400(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    :cond_1
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 378
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 387
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    .line 380
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "e"

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 410
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsEditMode:Z
    invoke-static {v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$200(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    const/4 v5, 0x1

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsDragable:Z
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$302(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Z)Z

    .line 419
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 420
    .local v1, rectf:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$400(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 421
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWidth:I
    invoke-static {v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$600(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashleft:I
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$502(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 422
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashleft:I
    invoke-static {v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$500(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashright:I
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$702(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 423
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->titleBarHeight:I
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$802(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 426
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 427
    .local v3, y:I
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v5, v2, v3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->pointToPosition(II)I

    move-result v5

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$902(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 428
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I
    invoke-static {v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$900(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 429
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I
    invoke-static {v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$900(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I

    move-result v4

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v0, v4, v5

    .line 431
    .local v0, itemPosition:I
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getHeight()I

    move-result v5

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1002(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 432
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTouchSlop:I
    invoke-static {v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1200(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I
    invoke-static {v6}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1000(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mUpperBound:I
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1102(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 433
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTouchSlop:I
    invoke-static {v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1200(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I
    invoke-static {v6}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1000(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mLowerBound:I
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1302(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 435
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v5, v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_Y:I
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1402(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 436
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1420(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 437
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v5, v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    #setter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_X:I
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1502(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I

    .line 442
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #getter for: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I
    invoke-static {v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$900(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->hideTrashcan(I)V

    .line 444
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    #calls: Lcom/logitech/harmonylink/context/view/OneTouchGridView;->startDrag(III)V
    invoke-static {v4, v0, v2, v3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->access$1600(Lcom/logitech/harmonylink/context/view/OneTouchGridView;III)V

    goto/16 :goto_0
.end method
