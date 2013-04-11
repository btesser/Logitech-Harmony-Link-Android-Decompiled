.class public Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;
.super Landroid/widget/TextView;
.source "DeleteZone.java"

# interfaces
.implements Lcom/logitech/harmonylink/view/widget/dragdrop/DropTarget;
.implements Lcom/logitech/harmonylink/view/widget/dragdrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastAnimationSet;,
        Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final ORIENTATION_HORIZONTAL:I = 0x1

.field private static final TRANSITION_DURATION:I = 0xfa


# instance fields
.field private mDragLayer:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

.field private mHandle:Landroid/view/View;

.field private mHandleInAnimation:Landroid/view/animation/Animation;

.field private mHandleOutAnimation:Landroid/view/animation/Animation;

.field private mInAnimation:Landroid/view/animation/AnimationSet;

.field private mLauncher:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

.field private final mLocation:[I

.field private mOrientation:I

.field private mOutAnimation:Landroid/view/animation/AnimationSet;

.field private final mRegion:Landroid/graphics/RectF;

.field private mTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mTrashMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mLocation:[I

    .line 56
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 71
    sget-object v1, Lcom/logitech/harmonylink/R$styleable;->DeleteZone:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mOrientation:I

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method private createAnimations()V
    .locals 10

    .prologue
    .line 156
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 158
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 159
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 160
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 162
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 170
    :goto_0
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 172
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 173
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 174
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_2

    .line 185
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 186
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 187
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 190
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 198
    :goto_2
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 200
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 201
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 202
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    .line 210
    :goto_3
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 211
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 213
    :cond_3
    return-void

    .line 166
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 178
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_5
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 194
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_6
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 206
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_7
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    goto :goto_3
.end method


# virtual methods
.method public acceptDrop(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public estimateDropLocation(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackgroundChanged()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, currentDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #currentDrawable:Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 88
    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mTrashMode:Z

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mTrashMode:Z

    .line 148
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mDragLayer:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 149
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->setVisibility(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 116
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 117
    return-void
.end method

.method public onDragExit(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 126
    return-void
.end method

.method public onDragOver(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 121
    return-void
.end method

.method public onDragStart(Landroid/view/View;Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;Ljava/lang/Object;I)V
    .locals 10
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 129
    move-object v0, p3

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    move-object v1, v0

    .line 130
    .local v1, item:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    if-eqz v1, :cond_0

    .line 131
    iput-boolean v8, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mTrashMode:Z

    .line 132
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->createAnimations()V

    .line 133
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mLocation:[I

    .line 134
    .local v2, location:[I
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->getLocationOnScreen([I)V

    .line 135
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mRegion:Landroid/graphics/RectF;

    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v8

    int-to-float v5, v5

    aget v6, v2, v9

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v8

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mDragLayer:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mRegion:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 138
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 139
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    invoke-virtual {p0, v9}, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->setVisibility(I)V

    .line 143
    .end local v2           #location:[I
    :cond_0
    return-void
.end method

.method public onDrop(Lcom/logitech/harmonylink/view/widget/dragdrop/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 100
    move-object v0, p6

    check-cast v0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    move-object v1, v0

    .line 102
    .local v1, item:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    iget-wide v3, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mLauncher:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v2

    .line 105
    .local v2, model:Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;
    iget-wide v3, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 106
    invoke-virtual {v2, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->removeDesktopItem(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 79
    return-void
.end method

.method public setDragController(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;)V
    .locals 0
    .parameter "dragLayer"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mDragLayer:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    .line 221
    return-void
.end method

.method setHandle(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mHandle:Landroid/view/View;

    .line 225
    return-void
.end method

.method public setLauncher(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DeleteZone;->mLauncher:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    .line 217
    return-void
.end method
