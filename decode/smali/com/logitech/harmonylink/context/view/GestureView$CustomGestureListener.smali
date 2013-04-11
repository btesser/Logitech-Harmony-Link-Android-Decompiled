.class Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/GestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/GestureView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/GestureView;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #setter for: Lcom/logitech/harmonylink/context/view/GestureView;->mIsMultiTouch:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$302(Lcom/logitech/harmonylink/context/view/GestureView;Z)Z

    .line 309
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$402(Z)Z

    .line 310
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v1, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    .line 311
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v1, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "motionEvent1"
    .parameter "motionEvent2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->send2xCancelCommand()Z

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "motionEvent"

    .prologue
    .line 402
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "motionEvent1"
    .parameter "motionEvent2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iget v1, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    float-to-int v1, v1

    iput v1, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    .line 326
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iget v1, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    .line 328
    invoke-static {}, Lcom/logitech/harmonylink/context/view/GestureView;->access$400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iget v0, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iget v1, v1, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_4

    .line 330
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iget v0, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mMinimumSwipeDistance:I
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$500(Lcom/logitech/harmonylink/context/view/GestureView;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 332
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mIsMultiTouch:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$300(Lcom/logitech/harmonylink/context/view/GestureView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->pageup:Lcom/logitech/harmonylink/harmony/Command;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$600(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 341
    :goto_0
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/GestureView;->access$402(Z)Z

    .line 377
    :cond_0
    :goto_1
    return v2

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->dpadup:Lcom/logitech/harmonylink/harmony/Command;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$700(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 338
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v2, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    .line 339
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v2, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iget v0, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mMinimumSwipeDistance:I
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$500(Lcom/logitech/harmonylink/context/view/GestureView;)I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mIsMultiTouch:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$300(Lcom/logitech/harmonylink/context/view/GestureView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->pagedown:Lcom/logitech/harmonylink/harmony/Command;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$800(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 353
    :goto_2
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/GestureView;->access$402(Z)Z

    goto :goto_1

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->dpaddown:Lcom/logitech/harmonylink/harmony/Command;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$900(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 350
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v2, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    .line 351
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v2, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    goto :goto_2

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iget v0, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mMinimumSwipeDistance:I
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$500(Lcom/logitech/harmonylink/context/view/GestureView;)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 360
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->dpadleft:Lcom/logitech/harmonylink/harmony/Command;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$1000(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 361
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v2, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    .line 362
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v2, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    .line 363
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/GestureView;->access$402(Z)Z

    goto :goto_1

    .line 365
    :cond_5
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iget v0, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mMinimumSwipeDistance:I
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$500(Lcom/logitech/harmonylink/context/view/GestureView;)I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->dpadright:Lcom/logitech/harmonylink/harmony/Command;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$1100(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 368
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v2, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distX:I

    .line 369
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput v2, v0, Lcom/logitech/harmonylink/context/view/GestureView;->distY:I

    .line 370
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/GestureView;->access$402(Z)Z

    goto/16 :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 278
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 294
    invoke-static {}, Lcom/logitech/harmonylink/context/view/GestureView;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->send2xCancelCommand()Z

    .line 296
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 285
    invoke-static {}, Lcom/logitech/harmonylink/context/view/GestureView;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/GestureView;->access$200(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$CustomGestureListener;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/context/view/GestureView;->dpadenter:Lcom/logitech/harmonylink/harmony/Command;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$100(Lcom/logitech/harmonylink/context/view/GestureView;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
