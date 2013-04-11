.class public Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "CustomHorizintalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$1;,
        Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;,
        Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;

.field private mScrollObserver:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;)Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mScrollObserver:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;)Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mScrollObserver:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;

    return-object p1
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;-><init>(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$1;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mGestureListener:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;

    .line 36
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mGestureListener:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 37
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setScrollObserver(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;)V
    .locals 0
    .parameter "customTouchListener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mScrollObserver:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;

    .line 74
    return-void
.end method
