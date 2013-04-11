.class Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CustomHorizintalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;-><init>(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    #getter for: Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mScrollObserver:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->access$100(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;)Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    #getter for: Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mScrollObserver:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->access$100(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;)Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;->onScroll()V

    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->mScrollObserver:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->access$102(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;)Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;

    .line 51
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
