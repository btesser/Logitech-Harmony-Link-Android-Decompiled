.class public Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;
.super Landroid/widget/LinearLayout;
.source "CustomSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;,
        Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;,
        Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x1

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x3

.field public static final TOP:I


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field clickListener:Landroid/view/View$OnClickListener;

.field private mBringToFront:Z

.field private mClosedHandle:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field private mContentHeight:I

.field private mContentId:I

.field private mContentWidth:I

.field private mDuration:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;

.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsShrinking:Z

.field private mKeyboardVisible:Z

.field private mLinearFlying:Z

.field private mOpenedHandle:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPosition:I

.field private mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

.field private mTrackX:F

.field private mTrackY:F

.field private mVelocity:F

.field private mWeight:F

.field private panelListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;

.field startAnimation:Ljava/lang/Runnable;

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 335
    new-instance v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;-><init>(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->touchListener:Landroid/view/View$OnTouchListener;

    .line 386
    new-instance v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$2;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$2;-><init>(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->clickListener:Landroid/view/View$OnClickListener;

    .line 416
    new-instance v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;-><init>(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->startAnimation:Ljava/lang/Runnable;

    .line 506
    new-instance v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$4;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$4;-><init>(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 102
    sget-object v2, Lcom/logitech/harmonylink/R$styleable;->CustomSlidingDrawer:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x2ee

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mDuration:I

    .line 104
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I

    .line 105
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mLinearFlying:Z

    .line 106
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mWeight:F

    .line 107
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mWeight:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mWeight:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 108
    :cond_0
    iput v6, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mWeight:F

    .line 110
    :cond_1
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    .line 111
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandleId:I

    .line 115
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandleId:I

    if-nez v2, :cond_2

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": The handle attribute is required and must refer to a valid child."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v1       #e:Ljava/lang/RuntimeException;
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentId:I

    .line 120
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentId:I

    if-nez v2, :cond_3

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": The content attribute is required and must refer to a valid child."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .restart local v1       #e:Ljava/lang/RuntimeException;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    if-eqz v1, :cond_4

    .line 128
    throw v1

    .line 130
    :cond_4
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I

    if-ne v2, v5, :cond_6

    :cond_5
    move v2, v5

    :goto_0
    iput v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I

    .line 131
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->setOrientation(I)V

    .line 132
    sget-object v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->READY:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 133
    new-instance v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;-><init>(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mGestureListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;

    .line 134
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mGestureListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 135
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->setBaselineAligned(Z)V

    .line 141
    return-void

    :cond_6
    move v2, v4

    .line 130
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mBringToFront:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mVelocity:F

    return v0
.end method

.method static synthetic access$1002(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mVelocity:F

    return p1
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F

    return v0
.end method

.method static synthetic access$1102(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F

    return p1
.end method

.method static synthetic access$1200(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mLinearFlying:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mDuration:I

    return v0
.end method

.method static synthetic access$1400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F

    return v0
.end method

.method static synthetic access$1402(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F

    return p1
.end method

.method static synthetic access$1500(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->postProcess()V

    return-void
.end method

.method static synthetic access$1600(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/animation/Interpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;FII)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->ensureRange(FII)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mGestureListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    return p1
.end method

.method private ensureRange(FII)F
    .locals 1
    .parameter "v"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 330
    int-to-float v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 331
    int-to-float v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 332
    return p1
.end method

.method private postProcess()V
    .locals 2

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->panelListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;

    if-eqz v0, :cond_1

    .line 541
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->panelListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;

    invoke-interface {v0, p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;->onDrawerClosed(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    .line 547
    :cond_1
    :goto_1
    return-void

    .line 536
    :cond_2
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 544
    :cond_3
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->panelListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;

    invoke-interface {v0, p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;->onDrawerOpened(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    goto :goto_1
.end method

.method private preProcess()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->panelListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;

    if-eqz v0, :cond_0

    .line 524
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->panelListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;

    invoke-interface {v0, p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;->onDrawerClosing(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->panelListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;

    invoke-interface {v0, p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;->onDrawerOpening(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    sget-object v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->ABOUT_TO_ANIMATE:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    if-nez v1, :cond_2

    .line 313
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentHeight:I

    move v0, v1

    .line 314
    .local v0, delta:I
    :goto_0
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I

    if-nez v1, :cond_1

    .line 315
    :cond_0
    neg-int v0, v0

    .line 317
    :cond_1
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I

    if-ne v1, v4, :cond_6

    .line 318
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 323
    .end local v0           #delta:I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    sget-object v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->TRACKING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    sget-object v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v1, v2, :cond_4

    .line 324
    :cond_3
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 327
    return-void

    .line 313
    :cond_5
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentWidth:I

    move v0, v1

    goto :goto_0

    .line 320
    .restart local v0       #delta:I
    :cond_6
    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public initChange()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->READY:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 413
    :goto_0
    return v0

    .line 403
    :cond_0
    sget-object v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->ABOUT_TO_ANIMATE:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 404
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    .line 405
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->preProcess()V

    move v0, v3

    .line 413
    goto :goto_0

    :cond_2
    move v0, v2

    .line 404
    goto :goto_1
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mKeyboardVisible:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 277
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 278
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 279
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mBringToFront:Z

    .line 281
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 231
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 232
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 233
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v2, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your CustomSlidingDrawer must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    .line 241
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v2, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    .restart local v0       #name:Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your CustomSlidingDrawer must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->removeView(Landroid/view/View;)V

    .line 248
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->removeView(Landroid/view/View;)V

    .line 249
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->addView(Landroid/view/View;)V

    .line 251
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->addView(Landroid/view/View;)V

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    :cond_3
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 262
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mWeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 264
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 265
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I

    if-ne v2, v5, :cond_6

    .line 266
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    :goto_1
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void

    .line 253
    :cond_5
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->addView(Landroid/view/View;)V

    .line 254
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 268
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 301
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 302
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentWidth:I

    .line 303
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentHeight:I

    .line 304
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 285
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mWeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 287
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 288
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 296
    .end local v0           #parent:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 297
    return-void

    .line 292
    .restart local v0       #parent:Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    return-void
.end method

.method public setKeyboardVisible(Z)V
    .locals 0
    .parameter "keyboardVisible"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mKeyboardVisible:Z

    .line 172
    return-void
.end method

.method public setOnDrawerListener(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;)V
    .locals 0
    .parameter "onDrawerListener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->panelListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$OnDrawerListener;

    .line 150
    return-void
.end method

.method public setOpen(ZZ)Z
    .locals 4
    .parameter "open"
    .parameter "animate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->READY:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->isOpen()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 199
    if-nez p1, :cond_1

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    .line 201
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->preProcess()V

    .line 203
    if-eqz p2, :cond_2

    .line 204
    sget-object v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->ABOUT_TO_ANIMATE:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 205
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->post(Ljava/lang/Runnable;)Z

    :goto_1
    move v0, v3

    .line 217
    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 199
    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->postProcess()V

    goto :goto_1

    .line 212
    :cond_3
    const/16 v1, 0x8

    goto :goto_3

    :cond_4
    move v0, v2

    .line 217
    goto :goto_2
.end method
