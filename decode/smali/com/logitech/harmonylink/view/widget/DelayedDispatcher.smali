.class public Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;
.super Ljava/lang/Object;
.source "DelayedDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final SCROLL_MOVE_TOLEANCE:I = 0xa

.field public static final WIDGET_CHAINED_EVENT_DELAY:J = 0x32L

.field public static final WIDGET_EVENT_DELAY:J = 0x69L


# instance fields
.field private mChainedEvent:Landroid/view/MotionEvent;

.field private mEvent:Landroid/view/MotionEvent;

.field private mExecuted:Z

.field private mStopDispatch:Z

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1
    .parameter "ev"
    .parameter "targetView"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mEvent:Landroid/view/MotionEvent;

    .line 23
    iput-object p2, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mTargetView:Landroid/view/View;

    .line 24
    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mStopDispatch:Z

    .line 25
    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mExecuted:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mChainedEvent:Landroid/view/MotionEvent;

    .line 27
    return-void
.end method


# virtual methods
.method public getChainedEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mChainedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isExecuted()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mExecuted:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mStopDispatch:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mStopDispatch:Z

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mExecuted:Z

    .line 65
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mTargetView:Landroid/view/View;

    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->getChainedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->getChainedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mTargetView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;-><init>(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 74
    .local v0, delayedActionUpDispatch:Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mTargetView:Landroid/view/View;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    .end local v0           #delayedActionUpDispatch:Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;
    :cond_1
    return-void
.end method

.method public setChainedEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mChainedEvent:Landroid/view/MotionEvent;

    .line 53
    return-void
.end method

.method public setStopDispatch(Z)V
    .locals 0
    .parameter "stopDispatch"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/logitech/harmonylink/view/widget/DelayedDispatcher;->mStopDispatch:Z

    .line 58
    return-void
.end method
