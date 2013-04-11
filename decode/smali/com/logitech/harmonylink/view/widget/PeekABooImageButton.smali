.class public Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;
.super Landroid/widget/ImageView;
.source "PeekABooImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$IPeekABooCallback;,
        Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;
    }
.end annotation


# instance fields
.field private mLastButtonPressed:Landroid/view/View;

.field private mPeekABooCallback:Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$IPeekABooCallback;

.field private mPeekABooViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mPeekABooViewArray:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mPeekABooViewArray:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mPeekABooViewArray:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public addPeekABooRegion(Landroid/graphics/Region;Landroid/view/View;)V
    .locals 2
    .parameter "peekABooRegion"
    .parameter "peekABooView"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mPeekABooViewArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;

    invoke-direct {v1, p1, p2}, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;-><init>(Landroid/graphics/Region;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 107
    .local v19, posX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 109
    .local v20, posY:F
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->pointInRegion(FF)Landroid/view/View;

    move-result-object v18

    .line 111
    .local v18, peekABooView:Landroid/view/View;
    if-eqz v18, :cond_3

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mPeekABooCallback:Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$IPeekABooCallback;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mPeekABooCallback:Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$IPeekABooCallback;

    move-object v3, v0

    invoke-interface {v3}, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$IPeekABooCallback;->isPeekABooEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->performClick()Z

    .line 122
    const/4 v3, 0x1

    .line 167
    :goto_0
    return v3

    .line 126
    :cond_0
    const/4 v3, 0x2

    move v0, v3

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    .line 128
    .local v21, positionArray:[I
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v21, v3

    .line 129
    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    aput v4, v21, v3

    .line 131
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->convertPointFromScreen([ILandroid/view/View;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->setPressed(Z)V

    .line 140
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    const/16 v15, -0x335d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v17

    .line 155
    .local v17, peekABooEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 157
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mLastButtonPressed:Landroid/view/View;

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    .line 162
    const/4 v3, 0x1

    goto :goto_0

    .line 135
    .end local v17           #peekABooEvent:Landroid/view/MotionEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mLastButtonPressed:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mLastButtonPressed:Landroid/view/View;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mLastButtonPressed:Landroid/view/View;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 167
    .end local v21           #positionArray:[I
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 126
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public pointInRegion(FF)Landroid/view/View;
    .locals 5
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mPeekABooViewArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;

    .line 95
    .local v1, shapedView:Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;->getRegion()Landroid/graphics/Region;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;->getView()Landroid/view/View;

    move-result-object v2

    .line 100
    .end local v1           #shapedView:Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$PeekABooView;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setPeekABoo(Landroid/view/ViewGroup;[I[[[I)V
    .locals 19
    .parameter "container"
    .parameter "peekABooViewArray"
    .parameter "peekABooShapes"

    .prologue
    .line 39
    const/4 v5, 0x0

    .local v5, index:I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 41
    new-instance v12, Landroid/graphics/Region;

    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    .line 42
    .local v12, peekABooRegion:Landroid/graphics/Region;
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 44
    .local v11, peekABooPath:Landroid/graphics/Path;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 46
    .local v4, context:Landroid/content/Context;
    aget-object v17, p3, v5

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object v0, v4

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v15

    .line 48
    .local v15, startX:I
    aget-object v17, p3, v5

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object v0, v4

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v16

    .line 51
    .local v16, startY:I
    move v9, v15

    .line 52
    .local v9, minX:I
    move/from16 v10, v16

    .line 54
    .local v10, minY:I
    move v7, v15

    .line 55
    .local v7, maxX:I
    move/from16 v8, v16

    .line 57
    .local v8, maxY:I
    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 59
    const/4 v6, 0x0

    .local v6, indexLine:I
    :goto_1
    aget-object v17, p3, v5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 61
    aget-object v17, p3, v5

    aget-object v17, v17, v6

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object v0, v4

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v13

    .line 63
    .local v13, posX:I
    aget-object v17, p3, v5

    aget-object v17, v17, v6

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object v0, v4

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v14

    .line 66
    .local v14, posY:I
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 67
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 68
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 69
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 71
    move v0, v13

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 74
    .end local v13           #posX:I
    .end local v14           #posY:I
    :cond_0
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 76
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3, v9, v10, v7, v8}, Landroid/graphics/Region;-><init>(IIII)V

    .line 77
    .local v3, clipRegion:Landroid/graphics/Region;
    invoke-virtual {v12, v11, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 79
    aget v17, p2, v5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->addPeekABooRegion(Landroid/graphics/Region;Landroid/view/View;)V

    .line 39
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 83
    .end local v3           #clipRegion:Landroid/graphics/Region;
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #indexLine:I
    .end local v7           #maxX:I
    .end local v8           #maxY:I
    .end local v9           #minX:I
    .end local v10           #minY:I
    .end local v11           #peekABooPath:Landroid/graphics/Path;
    .end local v12           #peekABooRegion:Landroid/graphics/Region;
    .end local v15           #startX:I
    .end local v16           #startY:I
    :cond_1
    return-void
.end method

.method public setPeekABooCallback(Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$IPeekABooCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/PeekABooImageButton;->mPeekABooCallback:Lcom/logitech/harmonylink/view/widget/PeekABooImageButton$IPeekABooCallback;

    .line 91
    return-void
.end method
