.class public Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "CustomHorizontalScrollView.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final MAXIMUM_FLING_VELOCITY:I = 0xfa0

.field private static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mDensity:F

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 135
    const v0, 0x7f0a0001

    invoke-direct {p0, p1, p2, v0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 92
    iput-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsLayoutDirty:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsBeingDragged:Z

    .line 122
    iput-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 141
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->initScrollView(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 255
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 258
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 260
    .end local v1           #childWidth:I
    :goto_0
    return v2

    .restart local v1       #childWidth:I
    :cond_0
    move v2, v5

    .line 258
    goto :goto_0

    .end local v1           #childWidth:I
    :cond_1
    move v2, v5

    .line 260
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1235
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 1236
    :cond_0
    const/4 v0, 0x0

    .line 1241
    :goto_0
    return v0

    .line 1238
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 1239
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 1241
    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 838
    if-eqz p1, :cond_0

    .line 839
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {p0, p1, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->smoothScrollBy(II)V

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 581
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 582
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 591
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 593
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 594
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 595
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 596
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 597
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 599
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 605
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v10, 0x1

    move v7, v10

    .line 608
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 610
    move-object v1, v5

    .line 611
    move v3, v7

    .line 594
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 605
    :cond_1
    const/4 v10, 0x0

    move v7, v10

    goto :goto_1

    .line 613
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    move v6, v10

    .line 617
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 618
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 624
    move-object v1, v5

    goto :goto_2

    .line 613
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v10, 0x0

    move v6, v10

    goto :goto_3

    .line 627
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 629
    move-object v1, v5

    .line 630
    const/4 v3, 0x1

    goto :goto_2

    .line 631
    :cond_7
    if-eqz v6, :cond_0

    .line 636
    move-object v1, v5

    goto :goto_2

    .line 643
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 551
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 552
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 554
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    move-object v3, p3

    .line 560
    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private getScaledBoundedXVelocity(F)F
    .locals 1
    .parameter "accumX"

    .prologue
    .line 209
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mMaximumVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private initScrollView(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->setFillViewport(Z)V

    .line 155
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    .line 156
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->setFocusable(Z)V

    .line 157
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->setDescendantFocusability(I)V

    .line 158
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->setWillNotDraw(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 160
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTouchSlop:I

    .line 161
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mMinimumVelocity:I

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 164
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mDensity:F

    .line 165
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mDensity:F

    const/high16 v3, 0x457a

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mMaximumVelocity:I

    .line 166
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 817
    invoke-direct {p0, p1, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1171
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 1176
    :goto_0
    return v1

    .line 1175
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1176
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 826
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 828
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 726
    const/4 v4, 0x1

    .line 728
    .local v4, handled:Z
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v6

    .line 729
    .local v6, width:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 730
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 731
    .local v1, containerRight:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    move v3, v9

    .line 733
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 734
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 735
    move-object v5, p0

    .line 738
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 739
    const/4 v4, 0x0

    .line 745
    :goto_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 746
    iput-boolean v9, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 747
    iput-boolean v8, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 750
    :cond_1
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v3, v8

    .line 731
    goto :goto_0

    .line 741
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v7, p2, v0

    move v2, v7

    .line 742
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 741
    .end local v2           #delta:I
    :cond_4
    sub-int v7, p3, v1

    move v2, v7

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 971
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 974
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 976
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 978
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 979
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollBy(II)V

    .line 981
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 992
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 993
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 994
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 995
    if-eqz p2, :cond_2

    .line 996
    invoke-virtual {p0, v0, v3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollBy(II)V

    .line 1001
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 993
    goto :goto_0

    .line 998
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 231
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 249
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v9, 0x0

    .line 762
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 763
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 765
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 767
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 769
    .local v3, maxJump:I
    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 770
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 771
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 772
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 773
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->doScrollX(I)V

    .line 774
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 797
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 804
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 805
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->setDescendantFocusability(I)V

    .line 806
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->requestFocus()Z

    .line 807
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->setDescendantFocusability(I)V

    .line 809
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 777
    .end local v6           #scrollDelta:I
    :cond_2
    move v6, v3

    .line 779
    .restart local v6       #scrollDelta:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 780
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v6

    .line 791
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    move v7, v9

    .line 792
    goto :goto_1

    .line 781
    :cond_4
    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 783
    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    .line 785
    .local v1, daRight:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v8

    add-int v5, v7, v8

    .line 787
    .local v5, screenRight:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 788
    sub-int v6, v1, v5

    goto :goto_2

    .line 794
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_5
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    :cond_6
    neg-int v7, v6

    goto :goto_3
.end method

.method protected awakenScrollBars(I)Z
    .locals 1
    .parameter "duration"

    .prologue
    .line 1214
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 885
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 9

    .prologue
    .line 920
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 937
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 938
    .local v3, oldX:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollY()I

    move-result v4

    .line 939
    .local v4, oldY:I
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 940
    .local v5, x:I
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 942
    .local v6, y:I
    move v1, v3

    .line 943
    .local v1, newScrollX:I
    move v2, v4

    .line 945
    .local v2, newScrollY:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 946
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 947
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-direct {p0, v5, v7, v8}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->clamp(III)I

    move-result v1

    .line 948
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->clamp(III)I

    move-result v2

    .line 954
    .end local v0           #child:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollTo(II)V

    .line 956
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v7

    if-ne v3, v7, :cond_0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollY()I

    move-result v7

    if-eq v4, v7, :cond_1

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0, v7, v8, v3, v4}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->onScrollChanged(IIII)V

    .line 961
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->postInvalidate()V

    .line 963
    .end local v1           #newScrollX:I
    .end local v2           #newScrollY:I
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    return-void

    .line 950
    .restart local v1       #newScrollX:I
    .restart local v2       #newScrollY:I
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_3
    move v1, v5

    .line 951
    move v2, v6

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v9, 0x0

    .line 1013
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 1067
    :goto_0
    return v7

    .line 1015
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1016
    .local v6, width:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1017
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1019
    .local v4, screenRight:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1022
    .local v1, fadingEdge:I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-lez v7, :cond_1

    .line 1023
    add-int/2addr v3, v1

    .line 1027
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1028
    sub-int/2addr v4, v1

    .line 1031
    :cond_2
    const/4 v5, 0x0

    .line 1033
    .local v5, scrollXDelta:I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-le v7, v3, :cond_5

    .line 1038
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_4

    .line 1040
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    add-int/2addr v5, v7

    .line 1047
    :goto_1
    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1048
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1049
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_3
    :goto_2
    move v7, v5

    .line 1067
    goto :goto_0

    .line 1043
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    add-int/2addr v5, v7

    goto :goto_1

    .line 1051
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_3

    .line 1056
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1058
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1065
    :goto_3
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    .line 1061
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 335
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 336
    const/4 v1, 0x1

    .line 338
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x11

    const/16 v4, 0x42

    .line 350
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 352
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 353
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 356
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 358
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 387
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 358
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 361
    goto :goto_0

    .line 364
    :cond_3
    const/4 v1, 0x0

    .line 365
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 366
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 387
    goto :goto_0

    .line 368
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 369
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 371
    :cond_5
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 373
    goto :goto_1

    .line 375
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 376
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 378
    :cond_6
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 380
    goto :goto_1

    .line 382
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityX"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 1187
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1188
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int v12, v0, v1

    .line 1189
    .local v12, width:I
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1191
    .local v11, right:I
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollY()I

    move-result v2

    sub-int v6, v11, v12

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1193
    if-lez p1, :cond_3

    move v9, v13

    .line 1195
    .local v9, movingRight:Z
    :goto_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 1198
    .local v10, newFocused:Landroid/view/View;
    if-nez v10, :cond_0

    .line 1199
    move-object v10, p0

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_1

    if-eqz v9, :cond_4

    const/16 v0, 0x42

    :goto_1
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    iput-boolean v13, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1205
    iput-boolean v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScrollViewMovedFocus:Z

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->awakenScrollBars(I)Z

    .line 1209
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->invalidate()V

    .line 1211
    .end local v9           #movingRight:Z
    .end local v10           #newFocused:Landroid/view/View;
    .end local v11           #right:I
    .end local v12           #width:I
    :cond_2
    return-void

    .restart local v11       #right:I
    .restart local v12       #width:I
    :cond_3
    move v9, v4

    .line 1193
    goto :goto_0

    .line 1202
    .restart local v9       #movingRight:Z
    .restart local v10       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    .line 695
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 696
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v3

    .line 698
    .local v3, width:I
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 699
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 701
    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 703
    .local v0, count:I
    if-lez v0, :cond_0

    .line 704
    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 705
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 706
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 710
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v5

    .line 695
    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 180
    :goto_0
    return v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 176
    .local v0, length:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 180
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 204
    const/high16 v0, 0x3f00

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 186
    const/4 v3, 0x0

    .line 196
    :goto_0
    return v3

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 190
    .local v0, length:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 191
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 192
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 193
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 196
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 891
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 896
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 899
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 901
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 902
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 907
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 909
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 912
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 915
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 916
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 404
    .local v0, action:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    move v3, v5

    .line 456
    :goto_0
    return v3

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    iput-boolean v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsBeingDragged:Z

    move v3, v4

    .line 410
    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 415
    .local v1, x:F
    packed-switch v0, :pswitch_data_0

    .line 456
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 426
    :pswitch_0
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mLastMotionX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 427
    .local v2, xDiff:I
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_2

    .line 428
    iput-boolean v5, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsBeingDragged:Z

    .line 429
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 435
    .end local v2           #xDiff:I
    :pswitch_1
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mLastMotionX:F

    .line 442
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    :goto_2
    iput-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 448
    :pswitch_2
    iput-boolean v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1137
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1140
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1143
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1146
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollTo(II)V

    .line 1147
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 305
    iget-boolean v6, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 310
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 315
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 317
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 320
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 322
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    .line 323
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    .line 324
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 326
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 1097
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1098
    const/16 p1, 0x42

    .line 1103
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1108
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    move v1, v3

    .line 1116
    :goto_2
    return v1

    .line 1099
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1100
    const/16 p1, 0x11

    goto :goto_0

    .line 1103
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1112
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 1113
    goto :goto_2

    .line 1116
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1153
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1154
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getLeft()I

    move-result v4

    sub-int v1, v3, v4

    .line 1159
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1160
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1161
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1162
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1163
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v7

    if-eqz v7, :cond_0

    move v7, v9

    .line 524
    :goto_0
    return v7

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->canScroll()Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v9

    .line 469
    goto :goto_0

    .line 472
    :cond_1
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    .line 473
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 475
    :cond_2
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 478
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 480
    .local v6, x:F
    packed-switch v0, :pswitch_data_0

    .line 524
    :cond_3
    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 486
    :pswitch_0
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 487
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 491
    :cond_4
    iput v6, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mLastMotionX:F

    goto :goto_1

    .line 495
    :pswitch_1
    iget v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mLastMotionX:F

    sub-float/2addr v7, v6

    float-to-int v2, v7

    .line 496
    .local v2, deltaX:I
    iput v6, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mLastMotionX:F

    .line 498
    if-gez v2, :cond_5

    .line 499
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v7

    if-lez v7, :cond_3

    .line 500
    invoke-virtual {p0, v2, v9}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollBy(II)V

    goto :goto_1

    .line 502
    :cond_5
    if-lez v2, :cond_3

    .line 503
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    .line 504
    .local v4, rightEdge:I
    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v1, v7, v4

    .line 505
    .local v1, availableToScroll:I
    if-lez v1, :cond_3

    .line 506
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollBy(II)V

    goto :goto_1

    .line 511
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v4           #rightEdge:I
    :pswitch_2
    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 512
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    invoke-virtual {v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 513
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScaledBoundedXVelocity(F)F

    move-result v7

    float-to-int v3, v7

    .line 515
    .local v3, initialVelocity:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mMinimumVelocity:I

    if-le v7, v8, :cond_6

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_6

    .line 516
    neg-int v7, v3

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->fling(I)V

    .line 519
    :cond_6
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_3

    .line 520
    iget-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 521
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x0

    .line 659
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 660
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v3

    .line 662
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 663
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 664
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 665
    .local v0, count:I
    if-lez v0, :cond_0

    .line 666
    invoke-virtual {p0, v6}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 667
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 668
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 677
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 679
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v6

    .line 659
    goto :goto_0

    .line 672
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 673
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 674
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1073
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1074
    invoke-direct {p0, p2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1080
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1081
    return-void

    .line 1077
    :cond_1
    iput-object p2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1123
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1126
    invoke-direct {p0, p2, p3}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1132
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1133
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1225
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1226
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1227
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1228
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollY()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 1229
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1232
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 281
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mFillViewport:Z

    .line 282
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->requestLayout()V

    .line 284
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 299
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 854
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 855
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 856
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 857
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->awakenScrollBars(I)Z

    .line 858
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->invalidate()V

    .line 865
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mLastScroll:J

    .line 866
    return-void

    .line 860
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 861
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 863
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomHorizontalScrollView;->smoothScrollBy(II)V

    .line 876
    return-void
.end method
