.class public Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;
.super Landroid/widget/RelativeLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/logitech/harmonylink/view/widget/dragdrop/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_UP_DURATION:I = 0x6e

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field private static final ANIMATION_TYPE_SCALE:I = 0x1

.field private static final DISTANCE_DRAW_SNAG:I = 0x14

.field private static final DRAG_SCALE:F = 24.0f

.field private static final DRAW_TARGET_SNAG:Z = false

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field private static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x14

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragCenter:[F

.field private mDragInfo:Ljava/lang/Object;

.field private mDragPaint:Landroid/graphics/Paint;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegion:Landroid/graphics/RectF;

.field private mDragScroller:Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;

.field private mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

.field private mDragging:Z

.field private mDrawEstimated:Z

.field private final mDropCoordinates:[I

.field private mEnteredRegion:Z

.field private mEstimatedCenter:[F

.field private final mEstimatedPaint:Landroid/graphics/Paint;

.field private mEstimatedRect:Landroid/graphics/Rect;

.field private mEstimatedSnagRect:Landroid/graphics/Rect;

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListener:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;

.field private mOriginator:Landroid/view/View;

.field private final mRect:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

.field private mScrollState:I

.field private mShouldDrop:Z

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private mTriggerHeight:I

.field private mTriggerWidth:I

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragging:Z

    .line 62
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 81
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 93
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 94
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDropCoordinates:[I

    .line 108
    iput v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    .line 110
    new-instance v2, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;-><init>(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    .line 117
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEstimatedPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEstimatedRect:Landroid/graphics/Rect;

    .line 128
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragCenter:[F

    .line 129
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEstimatedCenter:[F

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEstimatedSnagRect:Landroid/graphics/Rect;

    .line 131
    iput-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDrawEstimated:Z

    .line 133
    iput v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTriggerWidth:I

    .line 134
    iput v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTriggerHeight:I

    .line 149
    const/4 v2, 0x3

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationState:I

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 163
    .local v1, srcColor:I
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 167
    const/16 v0, -0x100

    .line 168
    .local v0, snagColor:I
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEstimatedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEstimatedPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEstimatedPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEstimatedPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mVibrator:Landroid/os/Vibrator;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;)Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragScroller:Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDrawEstimated:Z

    return p1
.end method

.method static synthetic access$202(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    return p1
.end method

.method private drop(FF)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 525
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->invalidate()V

    .line 527
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDropCoordinates:[I

    .line 528
    .local v7, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2, v7}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->findDropTarget(II[I)Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-result-object v0

    .line 530
    .local v0, dropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    if-eqz v0, :cond_1

    .line 531
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;->onDragExit(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V

    .line 533
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;->acceptDrop(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    aget v2, v7, v9

    aget v3, v7, v8

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;->onDrop(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V

    .line 537
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    invoke-interface {v1, v0, v8}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v8

    .line 544
    :goto_0
    return v1

    .line 540
    .restart local v0       #dropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    check-cast v0, Landroid/view/View;

    .end local v0           #dropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    invoke-interface {v1, v0, v9}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v1, v8

    .line 541
    goto :goto_0

    .restart local v0       #dropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    :cond_1
    move v1, v9

    .line 544
    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragging:Z

    if-eqz v0, :cond_2

    .line 317
    iput-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragging:Z

    .line 318
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mListener:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mListener:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;

    invoke-interface {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;->onDragEnd()V

    .line 328
    :cond_2
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    .locals 20
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 575
    .local v16, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 576
    .local v13, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int v17, p2, v6

    .line 577
    .local v17, scrolledX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    add-int v18, p3, v6

    .line 578
    .local v18, scrolledY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    move-object v15, v0

    .line 580
    .local v15, ignoredDropTarget:Landroid/view/View;
    const/4 v6, 0x1

    sub-int v14, v13, v6

    .end local v13           #count:I
    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_5

    .line 581
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 582
    .local v12, child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    if-eq v12, v15, :cond_4

    .line 583
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 584
    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 585
    const/16 v19, 0x0

    .line 586
    .local v19, target:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    instance-of v6, v12, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 588
    instance-of v6, v12, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    if-eqz v6, :cond_0

    .line 592
    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int p2, v17, v6

    .line 593
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int p3, v18, v6

    .line 596
    move-object v0, v12

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-result-object v19

    .line 598
    :cond_1
    if-nez v19, :cond_3

    .line 599
    instance-of v6, v12, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    if-eqz v6, :cond_4

    .line 601
    move-object v0, v12

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-object v5, v0

    .line 602
    .local v5, childTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    move-object v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v5 .. v11}, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;->acceptDrop(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 603
    const/4 v6, 0x0

    aput p2, p4, v6

    .line 604
    const/4 v6, 0x1

    aput p3, p4, v6

    .line 605
    check-cast v12, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    .end local v12           #child:Landroid/view/View;
    move-object v6, v12

    .line 617
    .end local v5           #childTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    .end local v19           #target:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    :goto_1
    return-object v6

    .line 607
    .restart local v5       #childTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    .restart local v12       #child:Landroid/view/View;
    .restart local v19       #target:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .end local v5           #childTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    :cond_3
    move-object/from16 v6, v19

    .line 611
    goto :goto_1

    .line 580
    .end local v19           #target:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    :cond_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 617
    .end local v12           #child:Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v5, 0x2

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 269
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 271
    iget-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragging:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 272
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationStartTime:J

    .line 274
    iput v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationState:I

    .line 277
    :cond_0
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationState:I

    if-ne v3, v5, :cond_3

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationDuration:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 280
    .local v1, normalized:F
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_1

    .line 281
    const/4 v3, 0x3

    iput v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationState:I

    .line 283
    :cond_1
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 284
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationFrom:F

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationTo:F

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    .line 286
    .local v2, value:F
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationType:I

    packed-switch v3, :pswitch_data_0

    .line 313
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_2
    :goto_0
    return-void

    .line 288
    .restart local v1       #normalized:F
    .restart local v2       #value:F
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 289
    .local v0, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 290
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionX:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mBitmapOffsetX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mBitmapOffsetY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v7, v2

    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 294
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 295
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 308
    .end local v0           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_3
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionX:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mBitmapOffsetX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionY:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mBitmapOffsetY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findDropTarget(II[I)Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 551
    .local v0, container:Landroid/view/ViewGroup;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-result-object v1

    .line 570
    .local v1, target:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    return-object v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 334
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 335
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 337
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragging:Z

    return v3

    .line 343
    :pswitch_1
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionX:F

    .line 344
    iput v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionY:F

    .line 345
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastDropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    goto :goto_0

    .line 350
    :pswitch_2
    iget-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mShouldDrop:Z

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->endDrag()V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .parameter "ev"

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragging:Z

    move v6, v0

    if-nez v6, :cond_0

    .line 363
    const/4 v6, 0x0

    .line 521
    :goto_0
    return v6

    .line 366
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 367
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    .line 368
    .local v30, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    .line 370
    .local v31, y:F
    packed-switch v13, :pswitch_data_0

    .line 521
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 374
    :pswitch_0
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionX:F

    .line 375
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionY:F

    .line 377
    const/high16 v6, 0x41a0

    cmpg-float v6, v30, v6

    if-ltz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v30, v6

    if-lez v6, :cond_3

    .line 378
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 381
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    goto :goto_1

    .line 386
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getScrollX()I

    move-result v24

    .line 387
    .local v24, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getScrollY()I

    move-result v25

    .line 389
    .local v25, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    move/from16 v27, v0

    .line 390
    .local v27, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    move/from16 v28, v0

    .line 392
    .local v28, touchY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mBitmapOffsetX:I

    move/from16 v20, v0

    .line 393
    .local v20, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mBitmapOffsetY:I

    move/from16 v21, v0

    .line 395
    .local v21, offsetY:I
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionX:F

    move v7, v0

    add-float/2addr v6, v7

    sub-float v6, v6, v27

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v19, v0

    .line 396
    .local v19, left:I
    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionY:F

    move v7, v0

    add-float/2addr v6, v7

    sub-float v6, v6, v28

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v26, v0

    .line 398
    .local v26, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    .line 399
    .local v15, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 400
    .local v29, width:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 402
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    .line 403
    .local v22, rect:Landroid/graphics/Rect;
    const/4 v6, 0x1

    sub-int v6, v19, v6

    const/4 v7, 0x1

    sub-int v7, v26, v7

    add-int v8, v19, v29

    add-int/lit8 v8, v8, 0x1

    add-int v9, v26, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 405
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionX:F

    .line 406
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionY:F

    .line 408
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    add-float v6, v6, v30

    sub-float v6, v6, v27

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v19, v0

    .line 409
    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    add-float v6, v6, v31

    sub-float v6, v6, v28

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v26, v0

    .line 412
    const/4 v6, 0x1

    sub-int v6, v19, v6

    const/4 v7, 0x1

    sub-int v7, v26, v7

    add-int v8, v19, v29

    add-int/lit8 v8, v8, 0x1

    add-int v9, v26, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragCenter:[F

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragCenter:[F

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDropCoordinates:[I

    move-object v14, v0

    .line 423
    .local v14, coordinates:[I
    move/from16 v0, v30

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->findDropTarget(II[I)Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-result-object v5

    .line 424
    .local v5, dropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    if-eqz v5, :cond_8

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastDropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-object v6, v0

    if-ne v6, v5, :cond_6

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;->onDragOver(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V

    .line 444
    :cond_4
    :goto_2
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDrawEstimated:Z

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 471
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastDropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    .line 473
    const/16 v17, 0x0

    .line 474
    .local v17, inDragRegion:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-eqz v6, :cond_5

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    .line 476
    .local v23, region:Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v18

    .line 477
    .local v18, inRegion:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-nez v6, :cond_9

    if-eqz v18, :cond_9

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 479
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEnteredRegion:Z

    .line 480
    const/16 v17, 0x1

    .line 487
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_5
    :goto_3
    if-nez v17, :cond_a

    const/high16 v6, 0x41a0

    cmpg-float v6, v30, v6

    if-gez v6, :cond_a

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_1

    .line 489
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 429
    .end local v17           #inDragRegion:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastDropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_7

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastDropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;->onDragExit(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V

    .line 433
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;->onDragEnter(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 437
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastDropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_4

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastDropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;->onDragExit(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 481
    .restart local v17       #inDragRegion:Z
    .restart local v18       #inRegion:Z
    .restart local v23       #region:Landroid/graphics/RectF;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEnteredRegion:Z

    move v6, v0

    if-eqz v6, :cond_5

    if-nez v18, :cond_5

    .line 482
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 483
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEnteredRegion:Z

    goto/16 :goto_3

    .line 493
    .end local v18           #inRegion:Z
    .end local v23           #region:Landroid/graphics/RectF;
    :cond_a
    if-nez v17, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getWidth()I

    move-result v6

    const/16 v7, 0x14

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v30, v6

    if-lez v6, :cond_b

    .line 494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    move v6, v0

    if-nez v6, :cond_1

    .line 495
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    move-object v6, v0

    const-wide/16 v7, 0x258

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 500
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 501
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 509
    .end local v5           #dropTarget:Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
    .end local v14           #coordinates:[I
    .end local v15           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v16           #height:I
    .end local v17           #inDragRegion:Z
    .end local v19           #left:I
    .end local v20           #offsetX:I
    .end local v21           #offsetY:I
    .end local v22           #rect:Landroid/graphics/Rect;
    .end local v24           #scrollX:I
    .end local v25           #scrollY:I
    .end local v26           #top:I
    .end local v27           #touchX:F
    .end local v28           #touchY:F
    .end local v29           #width:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollRunnable:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 510
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mShouldDrop:Z

    move v6, v0

    if-eqz v6, :cond_c

    .line 511
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->drop(FF)Z

    .line 512
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mShouldDrop:Z

    .line 514
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 518
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragListener(Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mListener:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;

    .line 630
    return-void
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 648
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    .line 649
    return-void
.end method

.method public setDragListener(Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mListener:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;

    .line 626
    return-void
.end method

.method public setDragScoller(Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragScroller:Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;

    .line 622
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 639
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 640
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;Ljava/lang/Object;I)V
    .locals 17
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v0

    if-nez v6, :cond_0

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mListener:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mListener:Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;->onDragStart(Landroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;Ljava/lang/Object;I)V

    .line 195
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object v14, v0

    .line 196
    .local v14, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionX:F

    move v6, v0

    iget v7, v14, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetX:F

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mLastMotionY:F

    move v6, v0

    iget v7, v14, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTouchOffsetY:F

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 203
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v16

    .line 206
    .local v16, willNotCache:Z
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v12

    .line 211
    .local v12, color:I
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 213
    if-eqz v12, :cond_2

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 216
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 218
    .local v5, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 219
    .local v8, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 221
    .local v9, height:I
    mul-int/lit8 v6, v8, 0x2

    div-int/lit8 v6, v6, 0x3

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTriggerWidth:I

    .line 222
    mul-int/lit8 v6, v9, 0x2

    div-int/lit8 v6, v6, 0x3

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mTriggerHeight:I

    .line 224
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v10, scale:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v15, v6

    .line 226
    .local v15, scaleFactor:F
    const/high16 v6, 0x41c0

    add-float/2addr v6, v15

    div-float v15, v6, v15

    .line 227
    invoke-virtual {v10, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 229
    const/high16 v6, 0x3f80

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationTo:F

    .line 230
    const/high16 v6, 0x3f80

    div-float/2addr v6, v15

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationFrom:F

    .line 231
    const/16 v6, 0x6e

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationDuration:I

    .line 232
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationState:I

    .line 233
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mAnimationType:I

    .line 235
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 237
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 238
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v13, v0

    .line 241
    .local v13, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mBitmapOffsetX:I

    .line 242
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mBitmapOffsetY:I

    .line 244
    if-nez p4, :cond_3

    .line 245
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 249
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragging:Z

    .line 250
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mShouldDrop:Z

    .line 251
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mOriginator:Landroid/view/View;

    .line 252
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragSource:Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;

    .line 253
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mVibrator:Landroid/os/Vibrator;

    move-object v6, v0

    const-wide/16 v7, 0x23

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 257
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mEnteredRegion:Z

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->invalidate()V

    .line 260
    return-void
.end method
