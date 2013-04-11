.class public Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;
.super Landroid/widget/ScrollView;
.source "DeadZoneScrollView.java"


# static fields
.field public static final DEAD_ZONE_TOUCH_DEVICE_ID:I = -0x3353

.field public static final DELTA_ANGLE:I = 0x14

.field public static final FLING_VELOCITY:I = 0x1e


# instance fields
.field private mClusterPaginationStopArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayedDispatcherList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mModesBarView:Landroid/view/View;

.field private mPageCount:I

.field private mPageHeight:I

.field private mPageMode:Z

.field private mStopScrollWhilePressed:Z

.field private mTrackpadView:Lcom/logitech/harmonylink/context/view/TrackpadView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mStopScrollWhilePressed:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->initialize()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mStopScrollWhilePressed:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->initialize()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mStopScrollWhilePressed:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->initialize()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->prevPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->nextPage()V

    return-void
.end method

.method private addDelayedDispatcher(Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;)V
    .locals 1
    .parameter "delayedDispatcher"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 442
    return-void
.end method

.method private getDelayedDispatcherList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    return-object v0
.end method

.method private nextPage()V
    .locals 5

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollY()I

    move-result v3

    int-to-float v1, v3

    .line 278
    .local v1, currentPosition:F
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getCurrentPage(F)F

    move-result v0

    .line 280
    .local v0, currentPage:F
    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageCount:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 281
    float-to-int v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getPageTabStop(I)I

    move-result v2

    .line 282
    .local v2, edgePosition:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->smoothScrollTo(II)V

    .line 284
    .end local v2           #edgePosition:I
    :cond_0
    return-void
.end method

.method private prevPage()V
    .locals 5

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollY()I

    move-result v3

    int-to-float v1, v3

    .line 288
    .local v1, currentPosition:F
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getCurrentPage(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 290
    .local v0, currentPage:F
    const/high16 v3, 0x3f80

    sub-float v3, v0, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 291
    float-to-int v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getPageTabStop(I)I

    move-result v2

    .line 292
    .local v2, edgePosition:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->smoothScrollTo(II)V

    .line 294
    .end local v2           #edgePosition:I
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .parameter "ev"

    .prologue
    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 303
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->setStopScrollWhilePressed(Z)V

    .line 306
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getDelayedDispatcherList()Ljava/util/LinkedList;

    move-result-object v21

    .line 308
    .local v21, delayedDispatchList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    const/16 v5, -0x3353

    if-ne v4, v5, :cond_2

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 311
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 409
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mTrackpadView:Lcom/logitech/harmonylink/context/view/TrackpadView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/logitech/harmonylink/context/view/TrackpadView;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 413
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v25, v4, v5

    .line 414
    .local v25, xc:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v26, v4, v5

    .line 415
    .local v26, yc:F
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 418
    const/4 v4, 0x1

    .line 433
    .end local v25           #xc:F
    .end local v26           #yc:F
    .end local p0
    :goto_1
    return v4

    .line 316
    .restart local p0
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->isFirstPointInTrackpad(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    const/16 v16, -0x3353

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 330
    .local v18, actionDownEvent:Landroid/view/MotionEvent;
    new-instance v20, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;-><init>(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 333
    .local v20, delayedActionDownDispatch:Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->addDelayedDispatcher(Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;)V

    .line 334
    const-wide/16 v4, 0x69

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    invoke-virtual/range {p0 .. p1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 336
    const/4 v4, 0x1

    goto :goto_1

    .line 339
    .end local v18           #actionDownEvent:Landroid/view/MotionEvent;
    .end local v20           #delayedActionDownDispatch:Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 343
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->isStopped()Z

    move-result v4

    if-nez v4, :cond_4

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    const/16 v16, -0x3353

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 356
    .local v19, actionUpEvent:Landroid/view/MotionEvent;
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->setChainedEvent(Landroid/view/MotionEvent;)V

    .line 358
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 362
    .end local v19           #actionUpEvent:Landroid/view/MotionEvent;
    .restart local p0
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto/16 :goto_0

    .line 367
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 369
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v22, v0

    .line 373
    .local v22, deltaY:I
    const/16 v4, 0xa

    move/from16 v0, v22

    move v1, v4

    if-lt v0, v1, :cond_6

    .line 374
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->setStopDispatch(Z)V

    goto/16 :goto_0

    .line 378
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 384
    .end local v22           #deltaY:I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    .line 385
    .local v23, originalEventX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    .line 387
    .local v24, originalEventY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v25, v4, v5

    .line 390
    .restart local v25       #xc:F
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v26, v4, v5

    .line 391
    .restart local v26       #yc:F
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 395
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 396
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 400
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto/16 :goto_0

    .line 420
    .end local v23           #originalEventX:F
    .end local v24           #originalEventY:F
    .end local v25           #xc:F
    .end local v26           #yc:F
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v25, v4, v5

    .line 423
    .restart local v25       #xc:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v26, v4, v5

    .line 424
    .restart local v26       #yc:F
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 427
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 433
    .end local v25           #xc:F
    .end local v26           #yc:F
    :cond_a
    invoke-super/range {p0 .. p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_1
.end method

.method public getCurrentPage(F)F
    .locals 7
    .parameter "currentPosition"

    .prologue
    .line 150
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 151
    .local v0, arraySize:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    const/4 v4, 0x1

    sub-int v4, v0, v4

    if-ge v1, v4, :cond_1

    .line 152
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v3, v4

    .line 153
    .local v3, pageStartPosition:F
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v2, v4

    .line 155
    .local v2, pageEndPosition:F
    cmpl-float v4, p1, v3

    if-lez v4, :cond_0

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_0

    .line 156
    int-to-float v4, v1

    sub-float v5, p1, v3

    sub-float v6, v2, v3

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 160
    .end local v2           #pageEndPosition:F
    .end local v3           #pageStartPosition:F
    :goto_1
    return v4

    .line 151
    .restart local v2       #pageEndPosition:F
    .restart local v3       #pageStartPosition:F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v2           #pageEndPosition:F
    .end local v3           #pageStartPosition:F
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getPageTabStop(I)I
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->setSmoothScrollingEnabled(Z)V

    .line 61
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView$1;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView$1;-><init>(Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 96
    return-void
.end method

.method public isFirstPointInModesBar(II)Z
    .locals 3
    .parameter "firstPointX"
    .parameter "firstPointY"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    invoke-static {v1, p0}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->getHitRect(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 190
    .local v0, modesBarRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollX()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    .line 196
    .end local v0           #modesBarRect:Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstPointInModesBar(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 201
    .local v0, firstPointX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 203
    .local v1, firstPointY:I
    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->isFirstPointInModesBar(II)Z

    move-result v2

    return v2
.end method

.method public isFirstPointInTrackpad(II)Z
    .locals 3
    .parameter "firstPointX"
    .parameter "firstPointY"

    .prologue
    .line 166
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mTrackpadView:Lcom/logitech/harmonylink/context/view/TrackpadView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mTrackpadView:Lcom/logitech/harmonylink/context/view/TrackpadView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/TrackpadView;->isCurrentTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mTrackpadView:Lcom/logitech/harmonylink/context/view/TrackpadView;

    invoke-static {v1, p0}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->getHitRect(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 169
    .local v0, trackpadRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollX()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    .line 175
    .end local v0           #trackpadRect:Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstPointInTrackpad(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 180
    .local v0, firstPointX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 182
    .local v1, firstPointY:I
    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->isFirstPointInTrackpad(II)Z

    move-result v2

    return v2
.end method

.method public isStopScrollWhilePressed()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mStopScrollWhilePressed:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->isFirstPointInTrackpad(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 233
    :goto_0
    return v2

    .line 215
    :cond_1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->isFirstPointInModesBar(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 217
    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->isStopScrollWhilePressed()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 222
    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getTouchables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 226
    .local v1, touchableView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->setStopScrollWhilePressed(Z)V

    move v2, v3

    .line 228
    goto :goto_0

    .line 233
    .end local v1           #touchableView:Landroid/view/View;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 242
    iget-boolean v4, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageMode:Z

    if-eqz v4, :cond_3

    .line 244
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    .line 273
    :goto_0
    return v4

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getScrollY()I

    move-result v4

    int-to-float v1, v4

    .line 253
    .local v1, currentPosition:F
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getCurrentPage(F)F

    move-result v0

    .line 255
    .local v0, currentPage:F
    float-to-int v4, v0

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    move v4, v8

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 257
    .local v3, isBehindHalfScreen:Ljava/lang/Boolean;
    const/4 v2, 0x0

    .line 258
    .local v2, edgePosition:F
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    float-to-int v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getPageTabStop(I)I

    move-result v4

    int-to-float v2, v4

    .line 266
    :goto_2
    float-to-int v4, v2

    invoke-virtual {p0, v9, v4}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->smoothScrollTo(II)V

    move v4, v8

    .line 268
    goto :goto_0

    .end local v2           #edgePosition:F
    .end local v3           #isBehindHalfScreen:Ljava/lang/Boolean;
    :cond_1
    move v4, v9

    .line 255
    goto :goto_1

    .line 263
    .restart local v2       #edgePosition:F
    .restart local v3       #isBehindHalfScreen:Ljava/lang/Boolean;
    :cond_2
    float-to-int v4, v0

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->getPageTabStop(I)I

    move-result v4

    int-to-float v2, v4

    goto :goto_2

    .line 273
    .end local v0           #currentPage:F
    .end local v1           #currentPosition:F
    .end local v2           #edgePosition:F
    .end local v3           #isBehindHalfScreen:Ljava/lang/Boolean;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public setModesBarView(Landroid/view/View;)V
    .locals 0
    .parameter "modesBarView"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mModesBarView:Landroid/view/View;

    .line 104
    return-void
.end method

.method public setPageMode(Z)V
    .locals 0
    .parameter "pageMode"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageMode:Z

    .line 116
    return-void
.end method

.method public setPageParameters(II)V
    .locals 5
    .parameter "pageCount"
    .parameter "pageHeight"

    .prologue
    .line 119
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageCount:I

    .line 120
    iput p2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageHeight:I

    .line 122
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageCount:I

    if-ge v0, v2, :cond_0

    .line 123
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageHeight:I

    mul-int v1, v0, v2

    .line 124
    .local v1, paginationStop:I
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v1           #paginationStop:I
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageCount:I

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageHeight:I

    mul-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public setPageParameters([I)V
    .locals 4
    .parameter "pageHeightArray"

    .prologue
    .line 132
    array-length v2, p1

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageCount:I

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, pageStopPosition:I
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mPageCount:I

    if-ge v0, v2, :cond_0

    .line 137
    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 138
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public setStopScrollWhilePressed(Z)V
    .locals 0
    .parameter "stopScrollWhilePressed"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mStopScrollWhilePressed:Z

    .line 108
    return-void
.end method

.method public setTrackpadView(Lcom/logitech/harmonylink/context/view/TrackpadView;)V
    .locals 0
    .parameter "trackpadView"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->mTrackpadView:Lcom/logitech/harmonylink/context/view/TrackpadView;

    .line 100
    return-void
.end method
