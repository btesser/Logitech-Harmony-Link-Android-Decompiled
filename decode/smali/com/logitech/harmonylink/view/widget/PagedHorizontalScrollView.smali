.class public Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;
.super Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;
.source "PagedHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;,
        Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    }
.end annotation


# static fields
.field public static final FLING_VELOCITY:I = 0x1e

.field public static final PRIMARY_CONTROL_TOUCH_DEVICE_ID:I = -0x335d


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

.field private mCurrentPage:I

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

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mLastPageFraction:Ljava/lang/Float;

.field private mPageChangeObserverArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPageCount:I

.field mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

.field private mPageMode:Z

.field private mPageParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mPageParentViewGroup:Landroid/view/ViewGroup;

.field private mPageWidth:I

.field private mStopScrollWhilePressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageChangeObserverArray:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParameterMap:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mStopScrollWhilePressed:Z

    .line 51
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->initialize()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageChangeObserverArray:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParameterMap:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mStopScrollWhilePressed:Z

    .line 63
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->initialize()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageChangeObserverArray:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParameterMap:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mStopScrollWhilePressed:Z

    .line 57
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->initialize()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->prevPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->nextPage()V

    return-void
.end method

.method private addDelayedDispatcher(Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;)V
    .locals 1
    .parameter "delayedDispatcher"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 427
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
    .line 422
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mDelayedDispatcherList:Ljava/util/LinkedList;

    return-object v0
.end method

.method private nextPage()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f80

    .line 501
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getScrollX()I

    move-result v5

    int-to-float v1, v5

    .line 502
    .local v1, currentPosition:F
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getCurrentPage(F)F

    move-result v0

    .line 504
    .local v0, currentPage:F
    add-float v5, v0, v7

    iget v6, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 506
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    sub-int v2, v5, v8

    .line 508
    .local v2, lastPage:I
    add-float v5, v0, v7

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    .line 510
    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParameterMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;

    .line 512
    .local v3, pageParam:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;->getPageView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;->getPageView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v8

    .line 517
    .local v4, pageViewVisible:Z
    :goto_0
    if-nez v4, :cond_3

    .line 525
    .end local v2           #lastPage:I
    .end local v3           #pageParam:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    .end local v4           #pageViewVisible:Z
    :cond_1
    :goto_1
    return-void

    .line 512
    .restart local v2       #lastPage:I
    .restart local v3       #pageParam:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    :cond_2
    const/4 v5, 0x0

    move v4, v5

    goto :goto_0

    .line 523
    .end local v3           #pageParam:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    :cond_3
    float-to-int v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    goto :goto_1
.end method

.method private prevPage()V
    .locals 4

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getScrollX()I

    move-result v2

    int-to-float v1, v2

    .line 529
    .local v1, currentPosition:F
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getCurrentPage(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 531
    .local v0, currentPage:F
    const/high16 v2, 0x3f80

    sub-float v2, v0, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 532
    float-to-int v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    .line 534
    :cond_0
    return-void
.end method


# virtual methods
.method public addPage(ILandroid/view/View;)V
    .locals 5
    .parameter "pageSize"
    .parameter "pageView"

    .prologue
    .line 169
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 170
    .local v1, prevPageIndex:I
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 172
    .local v2, prevPageStop:I
    new-instance v0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;

    invoke-direct {v0, p1, p2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;-><init>(ILandroid/view/View;)V

    .line 173
    .local v0, pageParam:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    add-int v4, v2, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    .line 177
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParameterMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParameterMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->initPageIndicator(I)V

    .line 180
    return-void
.end method

.method public addPageChangeObserver(Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageChangeObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/high16 v7, 0x4120

    const/4 v6, 0x0

    .line 244
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    .line 246
    .local v1, hasScrolled:Z
    iget-boolean v5, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageMode:Z

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 249
    .local v3, scrollX:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getScrollY()I

    move-result v4

    .line 251
    .local v4, scrollY:I
    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getCurrentPage(F)F

    move-result v0

    .line 253
    .local v0, currentPage:F
    float-to-int v2, v0

    .line 255
    .local v2, newPage:I
    sparse-switch p1, :sswitch_data_0

    .line 269
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    .line 274
    .end local v0           #currentPage:F
    .end local v2           #newPage:I
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_1
    return v1

    .line 257
    .restart local v0       #currentPage:F
    .restart local v2       #newPage:I
    .restart local v3       #scrollX:I
    .restart local v4       #scrollY:I
    :sswitch_0
    rem-float v5, v0, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 258
    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    goto :goto_0

    .line 263
    :sswitch_1
    rem-float v5, v0, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 264
    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    goto :goto_0

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "ev"

    .prologue
    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 335
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setStopScrollWhilePressed(Z)V

    .line 340
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getDelayedDispatcherList()Ljava/util/LinkedList;

    move-result-object v21

    .line 342
    .local v21, delayedDispatchList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    const/16 v5, -0x335d

    if-ne v4, v5, :cond_2

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 345
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 418
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .end local p0
    :goto_1
    return v4

    .line 350
    .restart local p0
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 352
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

    const/16 v16, -0x335d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 363
    .local v18, actionDownEvent:Landroid/view/MotionEvent;
    new-instance v20, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;-><init>(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 369
    .local v20, delayedActionDownDispatch:Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addDelayedDispatcher(Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;)V

    .line 370
    const-wide/16 v4, 0x69

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    invoke-virtual/range {p0 .. p1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 373
    const/4 v4, 0x1

    goto :goto_1

    .line 375
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

    .line 379
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->isStopped()Z

    move-result v4

    if-nez v4, :cond_4

    .line 381
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

    const/16 v16, -0x335d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 392
    .local v19, actionUpEvent:Landroid/view/MotionEvent;
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->setChainedEvent(Landroid/view/MotionEvent;)V

    .line 394
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 398
    .end local v19           #actionUpEvent:Landroid/view/MotionEvent;
    .restart local p0
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto/16 :goto_0

    .line 401
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v22, v0

    .line 407
    .local v22, deltaX:I
    const/16 v4, 0xa

    move/from16 v0, v22

    move v1, v4

    if-lt v0, v1, :cond_6

    .line 408
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->setStopDispatch(Z)V

    goto/16 :goto_0

    .line 411
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_1
.end method

.method public getCurrentPage(F)F
    .locals 7
    .parameter "currentPosition"

    .prologue
    .line 191
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 192
    .local v0, arraySize:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    const/4 v4, 0x1

    sub-int v4, v0, v4

    if-ge v1, v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v3, v4

    .line 194
    .local v3, pageStartPosition:F
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v2, v4

    .line 196
    .local v2, pageEndPosition:F
    cmpl-float v4, p1, v3

    if-lez v4, :cond_0

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_0

    .line 197
    int-to-float v4, v1

    sub-float v5, p1, v3

    sub-float v6, v2, v3

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 201
    .end local v2           #pageEndPosition:F
    .end local v3           #pageStartPosition:F
    :goto_1
    return v4

    .line 192
    .restart local v2       #pageEndPosition:F
    .restart local v3       #pageStartPosition:F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
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
    .line 185
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hideLastPage()V
    .locals 7

    .prologue
    .line 453
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .line 455
    .local v2, lastPage:I
    const/4 v4, 0x0

    .line 456
    .local v4, pageView:Landroid/view/View;
    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParameterMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;

    .line 457
    .local v3, pageParam:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    if-eqz v3, :cond_1

    .line 458
    invoke-virtual {v3}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;->getPageView()Landroid/view/View;

    move-result-object v4

    .line 460
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 462
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

    if-eqz v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

    invoke-virtual {v5, v2}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->hidePage(I)V

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getScrollX()I

    move-result v5

    int-to-float v1, v5

    .line 469
    .local v1, currentPosition:F
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getCurrentPage(F)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 471
    .local v0, currentPage:I
    if-ne v0, v2, :cond_1

    .line 472
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->prevPage()V

    .line 476
    .end local v0           #currentPage:I
    .end local v1           #currentPosition:F
    :cond_1
    return-void
.end method

.method public initPageIndicator(I)V
    .locals 3
    .parameter "pageCount"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

    const/4 v1, 0x0

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->setPageParameters(II)V

    .line 129
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    .line 85
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$1;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$1;-><init>(Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 103
    return-void
.end method

.method public installTouchDelegate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x190

    const/16 v3, 0x320

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 210
    .local v1, rectRoot:Landroid/graphics/Rect;
    new-instance v0, Landroid/view/TouchDelegate;

    invoke-direct {v0, v1, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 212
    .local v0, delegate:Landroid/view/TouchDelegate;
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParentViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 213
    return-void
.end method

.method public isStopScrollWhilePressed()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mStopScrollWhilePressed:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->isStopScrollWhilePressed()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 234
    :goto_0
    return v2

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getTouchables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 228
    .local v1, touchableView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setStopScrollWhilePressed(Z)V

    move v2, v3

    .line 230
    goto :goto_0

    .line 234
    .end local v1           #touchableView:Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->installTouchDelegate()V

    .line 287
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageMode:Z

    if-eqz v3, :cond_7

    .line 289
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v7

    .line 323
    :goto_1
    return v3

    .line 283
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->uninstallTouchDelegate()V

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 295
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getScrollX()I

    move-result v3

    int-to-float v1, v3

    .line 297
    .local v1, currentPosition:F
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getCurrentPage(F)F

    move-result v0

    .line 299
    .local v0, currentPage:F
    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v0, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    move v3, v7

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 302
    .local v2, isBehindHalfScreen:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mLastPageFraction:Ljava/lang/Float;

    if-eqz v3, :cond_3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    sub-int/2addr v5, v7

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    .line 305
    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mLastPageFraction:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    move v3, v7

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 310
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 312
    float-to-int v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    :goto_4
    move v3, v8

    .line 319
    goto :goto_1

    .end local v2           #isBehindHalfScreen:Ljava/lang/Boolean;
    :cond_4
    move v3, v8

    .line 299
    goto :goto_2

    .restart local v2       #isBehindHalfScreen:Ljava/lang/Boolean;
    :cond_5
    move v3, v8

    .line 305
    goto :goto_3

    .line 316
    :cond_6
    float-to-int v3, v0

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    goto :goto_4

    .line 323
    .end local v0           #currentPage:F
    .end local v1           #currentPosition:F
    .end local v2           #isBehindHalfScreen:Ljava/lang/Boolean;
    :cond_7
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public removePageChangeObserver(Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageChangeObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public setLastPageFraction(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 118
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mLastPageFraction:Ljava/lang/Float;

    .line 119
    return-void
.end method

.method public setPage(I)V
    .locals 8
    .parameter "currentPage"

    .prologue
    .line 430
    if-ltz p1, :cond_2

    iget v6, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    if-ge p1, v6, :cond_2

    .line 431
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mCurrentPage:I

    .line 432
    .local v5, prevPage:I
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getPageTabStop(I)I

    move-result v0

    .line 433
    .local v0, edgePosition:I
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->smoothScrollTo(II)V

    .line 434
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mCurrentPage:I

    .line 436
    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

    if-eqz v6, :cond_0

    .line 437
    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

    invoke-virtual {v6, p1}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->setPageNumber(I)V

    .line 440
    :cond_0
    const/4 v4, 0x0

    .line 441
    .local v4, pageView:Landroid/view/View;
    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParameterMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;

    .line 442
    .local v3, pageParam:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    if-eqz v3, :cond_1

    .line 443
    invoke-virtual {v3}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;->getPageView()Landroid/view/View;

    move-result-object v4

    .line 446
    :cond_1
    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageChangeObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;

    .line 447
    .local v2, observer:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;
    iget v6, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mCurrentPage:I

    invoke-interface {v2, v5, v6, v4}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;->onPageChange(IILandroid/view/View;)V

    goto :goto_0

    .line 450
    .end local v0           #edgePosition:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;
    .end local v3           #pageParam:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    .end local v4           #pageView:Landroid/view/View;
    .end local v5           #prevPage:I
    :cond_2
    return-void
.end method

.method public setPageIndicator(Lcom/logitech/harmonylink/view/widget/PageIndicator;)V
    .locals 0
    .parameter "indicator"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

    .line 123
    return-void
.end method

.method public setPageMode(Z)V
    .locals 0
    .parameter "pageMode"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageMode:Z

    .line 115
    return-void
.end method

.method public setPageParameters(IILcom/logitech/harmonylink/view/widget/PageIndicator;)V
    .locals 5
    .parameter "pageCount"
    .parameter "pageWidth"
    .parameter "indicator"

    .prologue
    .line 134
    invoke-virtual {p0, p3}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageIndicator(Lcom/logitech/harmonylink/view/widget/PageIndicator;)V

    .line 135
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    .line 136
    iput p2, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageWidth:I

    .line 138
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->initPageIndicator(I)V

    .line 140
    const/4 v0, 0x1

    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    if-ge v0, v2, :cond_0

    .line 141
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageWidth:I

    mul-int v1, v0, v2

    .line 142
    .local v1, paginationStop:I
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1           #paginationStop:I
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mClusterPaginationStopArray:Ljava/util/ArrayList;

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageWidth:I

    mul-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public setPageParentViewGroup(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "pageParentViewGroup"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParentViewGroup:Landroid/view/ViewGroup;

    .line 69
    return-void
.end method

.method public setStopScrollWhilePressed(Z)V
    .locals 0
    .parameter "stopScrollWhilePressed"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mStopScrollWhilePressed:Z

    .line 107
    return-void
.end method

.method public showLastPage()V
    .locals 5

    .prologue
    .line 481
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageCount:I

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 483
    .local v0, lastPage:I
    const/4 v2, 0x0

    .line 484
    .local v2, pageView:Landroid/view/View;
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParameterMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;

    .line 485
    .local v1, pageParam:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;
    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageParameter;->getPageView()Landroid/view/View;

    move-result-object v2

    .line 488
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

    if-eqz v3, :cond_0

    .line 493
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;

    invoke-virtual {v3, v0}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->showPage(I)V

    .line 498
    :cond_0
    return-void
.end method

.method public uninstallTouchDelegate()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->mPageParentViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 217
    return-void
.end method
