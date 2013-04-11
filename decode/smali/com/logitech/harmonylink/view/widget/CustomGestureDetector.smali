.class public Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;,
        Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$SimpleOnGestureListener;,
        Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;,
        Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_SLOP:I = 0x64

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlopSquare:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->LONGPRESS_TIMEOUT:I

    .line 210
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->TAP_TIMEOUT:I

    .line 211
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/16 v0, 0x190

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mBiggerTouchSlopSquare:I

    .line 345
    if-eqz p3, :cond_1

    .line 346
    new-instance v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;-><init>(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    .line 350
    :goto_0
    iput-object p2, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    .line 351
    instance-of v0, p2, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    .line 352
    check-cast p2, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->setOnDoubleTapListener(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;)V

    .line 354
    :cond_0
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->init(Landroid/content/Context;)V

    .line 355
    return-void

    .line 348
    .restart local p2
    :cond_1
    new-instance v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;-><init>(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-direct {p0, v0, p1, v0}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mStillDown:Z

    return v0
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mInLongPress:Z

    .line 567
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 568
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 358
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    if-nez v3, :cond_0

    .line 359
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "OnGestureListener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mIsLongpressEnabled:Z

    .line 365
    if-nez p1, :cond_1

    .line 367
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    .line 368
    .local v2, touchSlop:I
    const/16 v1, 0x64

    .line 370
    .local v1, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mMinimumFlingVelocity:I

    .line 371
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mMaximumFlingVelocity:I

    .line 379
    :goto_0
    mul-int v3, v2, v2

    iput v3, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mTouchSlopSquare:I

    .line 380
    mul-int v3, v1, v1

    iput v3, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapSlopSquare:I

    .line 381
    return-void

    .line 373
    .end local v1           #doubleTapSlop:I
    .end local v2           #touchSlop:I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 374
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 375
    .restart local v2       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 376
    .restart local v1       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mMinimumFlingVelocity:I

    .line 377
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v6, 0x0

    .line 551
    iget-boolean v2, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v2, :cond_0

    move v2, v6

    .line 561
    :goto_0
    return v2

    .line 555
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v4, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move v2, v6

    .line 556
    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 560
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 561
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapSlopSquare:I

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 424
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 425
    .local v18, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 427
    .local v17, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 428
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 430
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 432
    const/4 v11, 0x0

    .line 434
    .local v11, handled:Z
    packed-switch v5, :pswitch_data_0

    .line 546
    :cond_1
    :goto_0
    return v11

    .line 436
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    .line 438
    .local v10, hadTapMessage:Z
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 442
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mIsDoubleTapping:Z

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v11, v11, v19

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v11, v11, v19

    .line 453
    .end local v10           #hadTapMessage:Z
    :cond_3
    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mLastMotionX:F

    .line 454
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mLastMotionY:F

    .line 455
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 456
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mAlwaysInTapRegion:Z

    .line 457
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 458
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mStillDown:Z

    .line 459
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mInLongPress:Z

    .line 461
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mIsLongpressEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sget v23, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 466
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v11, v11, v19

    .line 468
    goto/16 :goto_0

    .line 449
    .restart local v10       #hadTapMessage:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    sget v21, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 471
    .end local v10           #hadTapMessage:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v12, v19, v17

    .line 475
    .local v12, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v13, v19, v18

    .line 476
    .local v13, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v11, v11, v19

    goto/16 :goto_0

    .line 479
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v7, v0

    .line 481
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v8, v0

    .line 482
    .local v8, deltaY:I
    mul-int v19, v7, v7

    mul-int v20, v8, v8

    add-int v9, v19, v20

    .line 483
    .local v9, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mTouchSlopSquare:I

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 485
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mLastMotionX:F

    .line 486
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mLastMotionY:F

    .line 487
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mAlwaysInTapRegion:Z

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mBiggerTouchSlopSquare:I

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 493
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_0

    .line 495
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v9           #distance:I
    :cond_8
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-gez v19, :cond_9

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_1

    .line 496
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 497
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mLastMotionX:F

    .line 498
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mLastMotionY:F

    goto/16 :goto_0

    .line 503
    .end local v12           #scrollX:F
    .end local v13           #scrollY:F
    :pswitch_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mStillDown:Z

    .line 504
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 505
    .local v6, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v11, v11, v19

    .line 526
    :cond_a
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 528
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 529
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mIsDoubleTapping:Z

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 508
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mInLongPress:Z

    goto :goto_2

    .line 511
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v11

    goto :goto_2

    .line 516
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v14, v0

    .line 517
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object v0, v14

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 518
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 519
    .local v16, velocityY:F
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 521
    .local v15, velocityX:F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_e

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_a

    .line 523
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v6

    move v3, v15

    move/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    goto/16 :goto_2

    .line 534
    .end local v6           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:F
    .end local v16           #velocityY:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 538
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 539
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mIsDoubleTapping:Z

    .line 540
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mStillDown:Z

    .line 541
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mInLongPress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 542
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mInLongPress:Z

    goto/16 :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .parameter "isLongpressEnabled"

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mIsLongpressEnabled:Z

    .line 405
    return-void
.end method

.method public setOnDoubleTapListener(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;)V
    .locals 0
    .parameter "onDoubleTapListener"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    .line 392
    return-void
.end method
