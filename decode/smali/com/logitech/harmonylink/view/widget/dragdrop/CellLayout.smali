.class public Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;,
        Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private final mCellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

.field private mCellWidth:I

.field mCellXY:[I

.field private mDirtyTag:Z

.field private mDragRect:Landroid/graphics/RectF;

.field private mHeightGap:I

.field private mLongAxisCells:I

.field private mLongAxisEndPadding:I

.field private mLongAxisStartPadding:I

.field mOccupied:[[Z

.field private mPortrait:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mShortAxisCells:I

.field private mShortAxisEndPadding:I

.field private mShortAxisStartPadding:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 53
    new-instance v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 55
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellXY:[I

    .line 59
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDragRect:Landroid/graphics/RectF;

    .line 74
    sget-object v1, Lcom/logitech/harmonylink/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellWidth:I

    .line 78
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisStartPadding:I

    .line 80
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisEndPadding:I

    .line 82
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisStartPadding:I

    .line 84
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisEndPadding:I

    .line 87
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    .line 88
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 94
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mOccupied:[[Z

    if-nez v1, :cond_0

    .line 95
    iget-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 96
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mOccupied:[[Z

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mOccupied:[[Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;IIII[[Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 35
    invoke-static/range {p0 .. p5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findIntersectingVacantCells(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 330
    invoke-static {}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->acquire()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    move-result-object v0

    .line 331
    .local v0, cell:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellX:I

    .line 332
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellY:I

    .line 333
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanX:I

    .line 334
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanY:I

    .line 335
    iget v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_0

    .line 336
    iget v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 337
    iget v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 339
    :cond_0
    iget v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_1

    .line 340
    iget v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 341
    iget v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 343
    :cond_1
    iget-object v1, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;IIII[[Z)V
    .locals 1
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 276
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 277
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 278
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 279
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 280
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->clearVacantCells()V

    .line 282
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    goto :goto_0
.end method

.method private findOccupiedCells(II[[ZLandroid/view/View;)V
    .locals 8
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "ignoreView"

    .prologue
    .line 838
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 839
    const/4 v5, 0x0

    .local v5, y:I
    :goto_1
    if-ge v5, p2, :cond_0

    .line 840
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 839
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 838
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 844
    .end local v5           #y:I
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v1

    .line 845
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 846
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 847
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 845
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 850
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 852
    .local v3, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    iget v4, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v6, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_2

    if-ge v4, p1, :cond_2

    .line 853
    iget v5, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_4
    iget v6, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    if-ge v5, p2, :cond_4

    .line 854
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 853
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 852
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 858
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    .end local v5           #y:I
    :cond_5
    return-void
.end method

.method private findOccupiedChild(IILandroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "cellX"
    .parameter "cellY"
    .parameter "ignoreView"

    .prologue
    .line 861
    iget-boolean v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    .line 862
    .local v4, portrait:Z
    if-eqz v4, :cond_1

    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v5, v7

    .line 863
    .local v5, xCount:I
    :goto_0
    if-eqz v4, :cond_2

    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v6, v7

    .line 866
    .local v6, yCount:I
    :goto_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v1

    .line 867
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 868
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 869
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 867
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 862
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #xCount:I
    .end local v6           #yCount:I
    :cond_1
    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v5, v7

    goto :goto_0

    .line 863
    .restart local v5       #xCount:I
    :cond_2
    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v6, v7

    goto :goto_1

    .line 872
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v6       #yCount:I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 874
    .local v3, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    iget v7, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    if-lt p1, v7, :cond_0

    iget v7, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    iget v8, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v7, v8

    if-ge p1, v7, :cond_0

    iget v7, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    if-lt p2, v7, :cond_0

    iget v7, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    iget v8, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v7, v8

    if-ge p2, v7, :cond_0

    move-object v7, v0

    .line 881
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    :goto_3
    return-object v7

    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V
    .locals 4
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x1

    .line 294
    invoke-static {p0, p4}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    .line 296
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 297
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 299
    invoke-static {p0, p1, p2, p3, p4}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    .line 300
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 304
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v3

    if-ge v0, v1, :cond_1

    .line 305
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 307
    invoke-static {p0, p1, p2, p3, p4}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    .line 308
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 312
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    .line 313
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 315
    invoke-static {p0, p1, p2, p3, p4}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    .line 316
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 320
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v3

    if-ge v0, v1, :cond_3

    .line 321
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 323
    invoke-static {p0, p1, p2, p3, p4}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    .line 324
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 327
    :cond_3
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 798
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, p3, :cond_7

    .line 799
    const/4 v4, 0x0

    .local v4, y:I
    :goto_1
    if-ge v4, p4, :cond_6

    .line 800
    aget-object v5, p5, v3

    aget-boolean v5, v5, v4

    if-nez v5, :cond_1

    move v0, v6

    .line 801
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v5, v3, p1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    if-ge v3, p3, :cond_0

    .line 802
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v5, v4, p2

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_4

    if-ge v4, p4, :cond_4

    .line 803
    if-eqz v0, :cond_2

    aget-object v5, p5, v1

    aget-boolean v5, v5, v2

    if-nez v5, :cond_2

    move v0, v6

    .line 804
    :goto_5
    if-nez v0, :cond_3

    .line 808
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 809
    aput v3, p0, v7

    .line 810
    aput v4, p0, v6

    move v5, v6

    .line 816
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_6
    return v5

    .restart local v4       #y:I
    :cond_1
    move v0, v7

    .line 800
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v7

    .line 803
    goto :goto_5

    .line 802
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 801
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 799
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 798
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #y:I
    :cond_7
    move v5, v7

    .line 816
    goto :goto_6
.end method

.method private getCalculatedCellHeight()I
    .locals 4

    .prologue
    .line 105
    iget-boolean v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisStartPadding:I

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisEndPadding:I

    add-int/2addr v2, v3

    move v0, v2

    .line 107
    .local v0, axisPadding:I
    :goto_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    :goto_1
    div-int v1, v2, v3

    .line 112
    .local v1, calculatedheight:I
    return v1

    .line 105
    .end local v0           #axisPadding:I
    .end local v1           #calculatedheight:I
    :cond_0
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisStartPadding:I

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisEndPadding:I

    add-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 107
    .restart local v0       #axisPadding:I
    :cond_1
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    goto :goto_1
.end method

.method private static isColumnEmpty(III[[Z)Z
    .locals 2
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 347
    move v0, p1

    .local v0, y:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 348
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 349
    const/4 v1, 0x0

    .line 352
    :goto_1
    return v1

    .line 347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isRowEmpty(III[[Z)Z
    .locals 2
    .parameter "y"
    .parameter "left"
    .parameter "right"
    .parameter "occupied"

    .prologue
    .line 356
    move v0, p1

    .local v0, x:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 357
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x0

    .line 361
    :goto_1
    return v1

    .line 356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 156
    move-object v0, p3

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    move-object v1, v0

    .line 157
    .local v1, cellParams:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getId()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget v3, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget v3, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 137
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v1

    .line 138
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 139
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public cellToPoint(II[I)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 456
    iget-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    .line 458
    .local v1, portrait:Z
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisStartPadding:I

    move v0, v3

    .line 459
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_1

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisStartPadding:I

    move v2, v3

    .line 462
    .local v2, vStartPadding:I
    :goto_1
    const/4 v3, 0x0

    iget v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    aput v4, p3, v3

    .line 463
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getCalculatedCellHeight()I

    move-result v4

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 464
    return-void

    .line 458
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    :cond_0
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisStartPadding:I

    move v0, v3

    goto :goto_0

    .line 459
    .restart local v0       #hStartPadding:I
    :cond_1
    iget v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisStartPadding:I

    move v2, v3

    goto :goto_1
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .locals 20
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "dragRect"

    .prologue
    .line 737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    move v10, v0

    .line 738
    .local v10, portrait:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellWidth:I

    move v6, v0

    .line 739
    .local v6, cellWidth:I
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getCalculatedCellHeight()I

    move-result v5

    .line 740
    .local v5, cellHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mWidthGap:I

    move v13, v0

    .line 741
    .local v13, widthGap:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mHeightGap:I

    move v9, v0

    .line 743
    .local v9, heightGap:I
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v7, v16

    .line 744
    .local v7, hStartPadding:I
    :goto_0
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v11, v16

    .line 746
    .local v11, vStartPadding:I
    :goto_1
    mul-int v16, p3, v6

    const/16 v17, 0x1

    sub-int v17, p3, v17

    mul-int v17, v17, v13

    add-int v12, v16, v17

    .line 747
    .local v12, width:I
    mul-int v16, p4, v5

    const/16 v17, 0x1

    sub-int v17, p4, v17

    mul-int v17, v17, v9

    add-int v8, v16, v17

    .line 749
    .local v8, height:I
    add-int v16, v6, v13

    mul-int v16, v16, p1

    add-int v14, v7, v16

    .line 750
    .local v14, x:I
    add-int v16, v5, v9

    mul-int v16, v16, p2

    add-int v15, v11, v16

    .line 752
    .local v15, y:I
    move v0, v14

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    add-int v18, v14, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v15, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 753
    return-void

    .line 743
    .end local v7           #hStartPadding:I
    .end local v8           #height:I
    .end local v11           #vStartPadding:I
    .end local v12           #width:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v7, v16

    goto :goto_0

    .line 744
    .restart local v7       #hStartPadding:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisStartPadding:I

    move/from16 v16, v0

    move/from16 v11, v16

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 891
    instance-of v0, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public findAllVacantCells([ZLandroid/view/View;)Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    .locals 10
    .parameter "occupiedCells"
    .parameter "ignoreView"

    .prologue
    .line 365
    iget-boolean v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    .line 366
    .local v3, portrait:Z
    if-eqz v3, :cond_0

    iget v8, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v5, v8

    .line 367
    .local v5, xCount:I
    :goto_0
    if-eqz v3, :cond_1

    iget v8, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v7, v8

    .line 369
    .local v7, yCount:I
    :goto_1
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mOccupied:[[Z

    .line 371
    .local v2, occupied:[[Z
    if-eqz p1, :cond_3

    .line 372
    const/4 v6, 0x0

    .local v6, y:I
    :goto_2
    if-ge v6, v7, :cond_4

    .line 373
    const/4 v4, 0x0

    .local v4, x:I
    :goto_3
    if-ge v4, v5, :cond_2

    .line 374
    aget-object v8, v2, v4

    mul-int v9, v6, v5

    add-int/2addr v9, v4

    aget-boolean v9, p1, v9

    aput-boolean v9, v8, v6

    .line 373
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 366
    .end local v2           #occupied:[[Z
    .end local v4           #x:I
    .end local v5           #xCount:I
    .end local v6           #y:I
    .end local v7           #yCount:I
    :cond_0
    iget v8, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v5, v8

    goto :goto_0

    .line 367
    .restart local v5       #xCount:I
    :cond_1
    iget v8, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v7, v8

    goto :goto_1

    .line 372
    .restart local v2       #occupied:[[Z
    .restart local v4       #x:I
    .restart local v6       #y:I
    .restart local v7       #yCount:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 378
    .end local v4           #x:I
    .end local v6           #y:I
    :cond_3
    invoke-direct {p0, v5, v7, v2, p2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 381
    :cond_4
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;-><init>()V

    .line 383
    .local v0, cellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    const/4 v8, -0x1

    iput v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    .line 384
    const/4 v8, -0x1

    iput v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    .line 385
    const/4 v8, 0x0

    iput v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanY:I

    .line 386
    const/4 v8, 0x0

    iput v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanX:I

    .line 387
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 388
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 389
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 390
    const/high16 v8, -0x8000

    iput v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 391
    iget-object v8, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    iget v8, v8, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->screen:I

    iput v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->screen:I

    .line 393
    iget-object v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 395
    .local v1, current:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .restart local v4       #x:I
    :goto_4
    if-ge v4, v5, :cond_7

    .line 396
    const/4 v6, 0x0

    .restart local v6       #y:I
    :goto_5
    if-ge v6, v7, :cond_6

    .line 397
    aget-object v8, v2, v4

    aget-boolean v8, v8, v6

    if-nez v8, :cond_5

    .line 398
    invoke-virtual {v1, v4, v6, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    invoke-static {v1, v5, v7, v2, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    .line 400
    aget-object v8, v2, v4

    const/4 v9, 0x1

    aput-boolean v9, v8, v6

    .line 396
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 395
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 405
    .end local v6           #y:I
    :cond_7
    iget-object v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->valid:Z

    .line 410
    return-object v0

    .line 405
    :cond_8
    const/4 v8, 0x0

    goto :goto_6
.end method

.method public findNearestVacantArea(IIIILcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;[I)[I
    .locals 19
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "vacantCells"
    .parameter "recycle"

    .prologue
    .line 593
    if-eqz p6, :cond_0

    move-object/from16 v6, p6

    .line 594
    .local v6, bestXY:[I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellXY:[I

    move-object v8, v0

    .line 595
    .local v8, cellXY:[I
    const-wide v4, 0x7fefffffffffffffL

    .line 598
    .local v4, bestDistance:D
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->valid:Z

    move v13, v0

    if-nez v13, :cond_1

    .line 599
    const/4 v13, 0x0

    .line 628
    :goto_1
    return-object v13

    .line 593
    .end local v4           #bestDistance:D
    .end local v6           #bestXY:[I
    .end local v8           #cellXY:[I
    :cond_0
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object v6, v13

    goto :goto_0

    .line 603
    .restart local v4       #bestDistance:D
    .restart local v6       #bestXY:[I
    .restart local v8       #cellXY:[I
    :cond_1
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 604
    .local v12, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v12, :cond_4

    .line 605
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;

    .line 608
    .local v7, cell:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    iget v13, v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanX:I

    move v0, v13

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    iget v13, v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->spanY:I

    move v0, v13

    move/from16 v1, p4

    if-eq v0, v1, :cond_3

    .line 604
    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 613
    :cond_3
    iget v13, v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellX:I

    iget v14, v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->cellToPoint(II[I)V

    .line 615
    const/4 v13, 0x0

    aget v13, v8, v13

    sub-int v13, v13, p1

    int-to-double v13, v13

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const/4 v15, 0x1

    aget v15, v8, v15

    sub-int v15, v15, p2

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 617
    .local v9, distance:D
    cmpg-double v13, v9, v4

    if-gtz v13, :cond_2

    .line 618
    move-wide v4, v9

    .line 619
    const/4 v13, 0x0

    iget v14, v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v14, v6, v13

    .line 620
    const/4 v13, 0x1

    iget v14, v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v14, v6, v13

    goto :goto_3

    .line 625
    .end local v7           #cell:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo$VacantCell;
    .end local v9           #distance:D
    :cond_4
    const-wide v13, 0x7fefffffffffffffL

    cmpg-double v13, v4, v13

    if-gez v13, :cond_5

    move-object v13, v6

    .line 626
    goto :goto_1

    .line 628
    :cond_5
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 886
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 896
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    goto :goto_0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    goto :goto_0
.end method

.method getOccupiedCells()[Z
    .locals 9

    .prologue
    .line 820
    iget-boolean v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    .line 821
    .local v2, portrait:Z
    if-eqz v2, :cond_0

    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v4, v7

    .line 822
    .local v4, xCount:I
    :goto_0
    if-eqz v2, :cond_1

    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v6, v7

    .line 823
    .local v6, yCount:I
    :goto_1
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mOccupied:[[Z

    .line 825
    .local v1, occupied:[[Z
    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v1, v7}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 827
    mul-int v7, v4, v6

    new-array v0, v7, [Z

    .line 828
    .local v0, flat:[Z
    const/4 v5, 0x0

    .local v5, y:I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 829
    const/4 v3, 0x0

    .local v3, x:I
    :goto_3
    if-ge v3, v4, :cond_2

    .line 830
    mul-int v7, v5, v4

    add-int/2addr v7, v3

    aget-object v8, v1, v3

    aget-boolean v8, v8, v5

    aput-boolean v8, v0, v7

    .line 829
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 821
    .end local v0           #flat:[Z
    .end local v1           #occupied:[[Z
    .end local v3           #x:I
    .end local v4           #xCount:I
    .end local v5           #y:I
    .end local v6           #yCount:I
    :cond_0
    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v4, v7

    goto :goto_0

    .line 822
    .restart local v4       #xCount:I
    :cond_1
    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v6, v7

    goto :goto_1

    .line 828
    .restart local v0       #flat:[Z
    .restart local v1       #occupied:[[Z
    .restart local v3       #x:I
    .restart local v5       #y:I
    .restart local v6       #yCount:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 834
    .end local v3           #x:I
    :cond_3
    return-object v0
.end method

.method public getTag()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    .locals 7

    .prologue
    .line 257
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    .line 258
    .local v0, info:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    iget-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_0

    .line 259
    iget-boolean v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    .line 260
    .local v6, portrait:Z
    if-eqz v6, :cond_1

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v3, v1

    .line 261
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_2

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v4, v1

    .line 263
    .local v4, yCount:I
    :goto_1
    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mOccupied:[[Z

    .line 264
    .local v5, occupied:[[Z
    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 266
    iget v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findIntersectingVacantCells(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;IIII[[Z)V

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDirtyTag:Z

    .line 270
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    .end local v6           #portrait:Z
    :cond_0
    return-object v0

    .line 260
    .restart local v6       #portrait:Z
    :cond_1
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v3, v1

    goto :goto_0

    .line 261
    .restart local v3       #xCount:I
    :cond_2
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v4, v1

    goto :goto_1
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getTag()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .locals 7
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 785
    iget-boolean v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    .line 786
    .local v6, portrait:Z
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v3, v0

    .line 787
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_1

    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v4, v0

    .line 788
    .local v4, yCount:I
    :goto_1
    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mOccupied:[[Z

    .line 790
    .local v5, occupied:[[Z
    const/4 v0, 0x0

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    move-object v0, p1

    move v1, p2

    move v2, p3

    .line 792
    invoke-static/range {v0 .. v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0

    .line 786
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    :cond_0
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v3, v0

    goto :goto_0

    .line 787
    .restart local v3       #xCount:I
    :cond_1
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v4, v0

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 176
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->screen:I

    .line 177
    return-void
.end method

.method public onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 707
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 708
    .local v0, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->isDragging:Z

    .line 709
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 710
    return-void
.end method

.method onDragOverChild(Landroid/view/View;II)V
    .locals 8
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 720
    iget-object v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellXY:[I

    .line 721
    .local v6, cellXY:[I
    invoke-virtual {p0, p2, p3, v6}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->pointToCellRounded(II[I)V

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 723
    .local v7, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    const/4 v0, 0x0

    aget v1, v6, v0

    const/4 v0, 0x1

    aget v2, v6, v0

    iget v3, v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDragRect:Landroid/graphics/RectF;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 724
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->invalidate()V

    .line 725
    return-void
.end method

.method public onDropAborted(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 694
    if-eqz p1, :cond_0

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->isDragging:Z

    .line 696
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->invalidate()V

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 699
    return-void
.end method

.method public onDropChild(Landroid/view/View;[I)V
    .locals 3
    .parameter "child"
    .parameter "targetXY"

    .prologue
    const/4 v2, 0x0

    .line 639
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 640
    .local v0, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    if-eqz p2, :cond_0

    .line 641
    aget v1, p2, v2

    iput v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    .line 642
    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    .line 644
    :cond_0
    iput-boolean v2, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->isDragging:Z

    .line 645
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 646
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 647
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->invalidate()V

    .line 648
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 130
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 182
    .local v5, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    move-object v6, v0

    .line 184
    .local v6, cellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    const/4 v10, 0x0

    .line 186
    .local v10, found:Z
    if-nez v5, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mRect:Landroid/graphics/Rect;

    move-object v11, v0

    .line 188
    .local v11, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getScrollX()I

    move-result v21

    add-int v16, v20, v21

    .line 189
    .local v16, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getScrollY()I

    move-result v21

    add-int v18, v20, v21

    .line 190
    .local v18, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v9

    .line 193
    .local v9, count:I
    const/16 v20, 0x1

    sub-int v12, v9, v20

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_1

    .line 194
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 196
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 197
    :cond_0
    invoke-virtual {v8, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 198
    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 199
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 200
    .local v13, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    iput-object v8, v6, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 201
    move-object v0, v13

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    .line 202
    move-object v0, v13

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    .line 203
    move-object v0, v13

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanX:I

    .line 204
    move-object v0, v13

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanY:I

    .line 205
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->valid:Z

    .line 206
    const/4 v10, 0x1

    .line 207
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDirtyTag:Z

    .line 213
    .end local v8           #child:Landroid/view/View;
    .end local v13           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    :cond_1
    if-nez v10, :cond_2

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellXY:[I

    move-object v7, v0

    .line 215
    .local v7, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->pointToCellExact(II[I)V

    .line 217
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    move v15, v0

    .line 218
    .local v15, portrait:Z
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    move/from16 v17, v20

    .line 219
    .local v17, xCount:I
    :goto_1
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    move/from16 v19, v20

    .line 221
    .local v19, yCount:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mOccupied:[[Z

    move-object v14, v0

    .line 222
    .local v14, occupied:[[Z
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move-object v3, v14

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 224
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 225
    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    .line 226
    const/16 v20, 0x1

    aget v20, v7, v20

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    .line 227
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanX:I

    .line 228
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanY:I

    .line 229
    const/16 v20, 0x0

    aget v20, v7, v20

    if-ltz v20, :cond_7

    const/16 v20, 0x1

    aget v20, v7, v20

    if-ltz v20, :cond_7

    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    const/16 v20, 0x1

    aget v20, v7, v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    const/16 v20, 0x0

    aget v20, v7, v20

    aget-object v20, v14, v20

    const/16 v21, 0x1

    aget v21, v7, v21

    aget-boolean v20, v20, v21

    if-nez v20, :cond_7

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->valid:Z

    .line 237
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDirtyTag:Z

    .line 239
    .end local v7           #cellXY:[I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v17           #xCount:I
    .end local v19           #yCount:I
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 251
    .end local v9           #count:I
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v16           #x:I
    .end local v18           #y:I
    :cond_3
    :goto_4
    const/16 v20, 0x0

    return v20

    .line 193
    .restart local v8       #child:Landroid/view/View;
    .restart local v9       #count:I
    .restart local v11       #frame:Landroid/graphics/Rect;
    .restart local v12       #i:I
    .restart local v16       #x:I
    .restart local v18       #y:I
    :cond_4
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 218
    .end local v8           #child:Landroid/view/View;
    .restart local v7       #cellXY:[I
    .restart local v15       #portrait:Z
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    move/from16 v17, v20

    goto/16 :goto_1

    .line 219
    .restart local v17       #xCount:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    move/from16 v19, v20

    goto/16 :goto_2

    .line 229
    .restart local v14       #occupied:[[Z
    .restart local v19       #yCount:I
    :cond_7
    const/16 v20, 0x0

    goto :goto_3

    .line 240
    .end local v7           #cellXY:[I
    .end local v9           #count:I
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v16           #x:I
    .end local v17           #xCount:I
    .end local v18           #y:I
    .end local v19           #yCount:I
    :cond_8
    const/16 v20, 0x1

    move v0, v5

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 241
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 242
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellX:I

    .line 243
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->cellY:I

    .line 244
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanX:I

    .line 245
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->spanY:I

    .line 246
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;->valid:Z

    .line 247
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDirtyTag:Z

    .line 248
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v3

    .line 547
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 548
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 549
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 551
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 553
    .local v5, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    iget v1, v5, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->x:I

    .line 554
    .local v1, childLeft:I
    iget v2, v5, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->y:I

    .line 555
    .local v2, childTop:I
    iget v6, v5, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->width:I

    add-int/2addr v6, v1

    iget v7, v5, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->height:I

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 547
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 558
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 34
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 470
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    .line 471
    .local v32, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v33

    .line 473
    .local v33, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 474
    .local v22, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 476
    .local v23, heightSpecSize:I
    if-eqz v32, :cond_0

    if-nez v22, :cond_1

    .line 477
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 480
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->setMeasuredDimension(II)V

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move/from16 v29, v0

    .line 483
    .local v29, shortAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move/from16 v25, v0

    .line 484
    .local v25, longAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisStartPadding:I

    move v9, v0

    .line 485
    .local v9, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisEndPadding:I

    move/from16 v26, v0

    .line 486
    .local v26, longAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisStartPadding:I

    move v8, v0

    .line 487
    .local v8, shortAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisEndPadding:I

    move/from16 v30, v0

    .line 488
    .local v30, shortAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellWidth:I

    move v4, v0

    .line 489
    .local v4, cellWidth:I
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getCalculatedCellHeight()I

    move-result v5

    .line 491
    .local v5, cellHeight:I
    move/from16 v0, v23

    move/from16 v1, v33

    if-le v0, v1, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    .line 493
    const/4 v6, 0x1

    sub-int v28, v29, v6

    .line 494
    .local v28, numShortGaps:I
    const/4 v6, 0x1

    sub-int v27, v25, v6

    .line 496
    .local v27, numLongGaps:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_4

    .line 497
    sub-int v6, v23, v9

    sub-int v6, v6, v26

    mul-int v7, v5, v25

    sub-int v31, v6, v7

    .line 499
    .local v31, vSpaceLeft:I
    div-int v6, v31, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mHeightGap:I

    .line 501
    sub-int v6, v33, v8

    sub-int v6, v6, v30

    mul-int v7, v4, v29

    sub-int v21, v6, v7

    .line 503
    .local v21, hSpaceLeft:I
    if-lez v28, :cond_3

    .line 504
    div-int v6, v21, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mWidthGap:I

    .line 522
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v20

    .line 524
    .local v20, count:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 525
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 526
    .local v17, child:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 528
    .local v3, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_6

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mWidthGap:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mHeightGap:I

    move v7, v0

    invoke-virtual/range {v3 .. v9}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 536
    :goto_3
    iget v6, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 537
    .local v18, childWidthMeasureSpec:I
    iget v6, v3, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 539
    .local v19, childheightMeasureSpec:I
    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 524
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 491
    .end local v3           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    .end local v18           #childWidthMeasureSpec:I
    .end local v19           #childheightMeasureSpec:I
    .end local v20           #count:I
    .end local v21           #hSpaceLeft:I
    .end local v24           #i:I
    .end local v27           #numLongGaps:I
    .end local v28           #numShortGaps:I
    .end local v31           #vSpaceLeft:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 506
    .restart local v21       #hSpaceLeft:I
    .restart local v27       #numLongGaps:I
    .restart local v28       #numShortGaps:I
    .restart local v31       #vSpaceLeft:I
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mWidthGap:I

    goto :goto_1

    .line 509
    .end local v21           #hSpaceLeft:I
    .end local v31           #vSpaceLeft:I
    :cond_4
    sub-int v6, v33, v9

    sub-int v6, v6, v26

    mul-int v7, v4, v25

    sub-int v21, v6, v7

    .line 511
    .restart local v21       #hSpaceLeft:I
    div-int v6, v21, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mWidthGap:I

    .line 513
    sub-int v6, v23, v8

    sub-int v6, v6, v30

    mul-int v7, v5, v29

    sub-int v31, v6, v7

    .line 515
    .restart local v31       #vSpaceLeft:I
    if-lez v28, :cond_5

    .line 516
    div-int v6, v31, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mHeightGap:I

    goto :goto_1

    .line 518
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mHeightGap:I

    goto :goto_1

    .line 532
    .restart local v3       #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    .restart local v17       #child:Landroid/view/View;
    .restart local v20       #count:I
    .restart local v24       #i:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mWidthGap:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mHeightGap:I

    move v14, v0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_3

    .line 541
    .end local v3           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    :cond_7
    return-void
.end method

.method public onSwapChild(Landroid/view/View;II)Landroid/view/View;
    .locals 10
    .parameter "child"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 660
    new-array v4, v9, [I

    .line 662
    .local v4, targetXY:[I
    invoke-virtual {p0, p2, p3, v4}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->pointToCellRounded(II[I)V

    .line 664
    aget v5, v4, v7

    aget v6, v4, v8

    invoke-direct {p0, v5, v6, p1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->findOccupiedChild(IILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 666
    .local v0, childPeer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 668
    new-array v3, v9, [I

    .line 669
    .local v3, sourceXY:[I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 670
    .local v1, lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    iget v5, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    aput v5, v3, v7

    .line 671
    iget v5, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    aput v5, v3, v8

    .line 673
    aget v5, v4, v7

    iput v5, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    .line 674
    aget v5, v4, v8

    iput v5, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    .line 675
    iput-boolean v7, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->isDragging:Z

    .line 678
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;

    .line 679
    .local v2, lpPeer:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    aget v5, v3, v7

    iput v5, v2, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellX:I

    .line 680
    aget v5, v3, v8

    iput v5, v2, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;->cellY:I

    .line 682
    iget-object v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->setEmpty()V

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 684
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 685
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->invalidate()V

    move-object v5, v0

    .line 690
    .end local v1           #lp:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    .end local v2           #lpPeer:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$LayoutParams;
    .end local v3           #sourceXY:[I
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public pointToCellExact(II[I)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 420
    iget-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mPortrait:Z

    .line 422
    .local v1, portrait:Z
    if-eqz v1, :cond_4

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisStartPadding:I

    move v0, v5

    .line 423
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_5

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisStartPadding:I

    move v2, v5

    .line 425
    .local v2, vStartPadding:I
    :goto_1
    sub-int v5, p1, v0

    iget v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellWidth:I

    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v8

    .line 426
    sub-int v5, p2, v2

    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getCalculatedCellHeight()I

    move-result v6

    iget v7, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v9

    .line 428
    if-eqz v1, :cond_6

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v3, v5

    .line 429
    .local v3, xAxis:I
    :goto_2
    if-eqz v1, :cond_7

    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v4, v5

    .line 431
    .local v4, yAxis:I
    :goto_3
    aget v5, p3, v8

    if-gez v5, :cond_0

    aput v8, p3, v8

    .line 432
    :cond_0
    aget v5, p3, v8

    if-lt v5, v3, :cond_1

    sub-int v5, v3, v9

    aput v5, p3, v8

    .line 433
    :cond_1
    aget v5, p3, v9

    if-gez v5, :cond_2

    aput v8, p3, v9

    .line 434
    :cond_2
    aget v5, p3, v9

    if-lt v5, v4, :cond_3

    sub-int v5, v4, v9

    aput v5, p3, v9

    .line 435
    :cond_3
    return-void

    .line 422
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    .end local v3           #xAxis:I
    .end local v4           #yAxis:I
    :cond_4
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisStartPadding:I

    move v0, v5

    goto :goto_0

    .line 423
    .restart local v0       #hStartPadding:I
    :cond_5
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisStartPadding:I

    move v2, v5

    goto :goto_1

    .line 428
    .restart local v2       #vStartPadding:I
    :cond_6
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mLongAxisCells:I

    move v3, v5

    goto :goto_2

    .line 429
    .restart local v3       #xAxis:I
    :cond_7
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mShortAxisCells:I

    move v4, v5

    goto :goto_3
.end method

.method public pointToCellRounded(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 444
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getCalculatedCellHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->pointToCellExact(II[I)V

    .line 445
    return-void
.end method

.method public rectToCell(II)[I
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 765
    iget v5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mWidthGap:I

    add-int v1, v5, v6

    .line 766
    .local v1, actualWidth:I
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getCalculatedCellHeight()I

    move-result v5

    iget v6, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->mHeightGap:I

    add-int v0, v5, v6

    .line 767
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 770
    .local v2, smallerSize:I
    add-int v5, p1, v2

    div-int v3, v5, v2

    .line 771
    .local v3, spanX:I
    add-int v5, p2, v2

    div-int v4, v5, v2

    .line 772
    .local v4, spanY:I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    return-object v5
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 166
    if-eqz p1, :cond_0

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 168
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 171
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setChildrenDrawingCacheEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v0

    .line 563
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 564
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 565
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 573
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 574
    return-void
.end method
