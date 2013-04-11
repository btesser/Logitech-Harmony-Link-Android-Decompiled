.class Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;
.super Ljava/lang/Object;
.source "CustomSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initX:I

.field initY:I

.field setInitialPosition:Z

.field final synthetic this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 340
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    move-result-object v1

    sget-object v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->ANIMATING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v1, v2, :cond_0

    move v1, v4

    .line 382
    :goto_0
    return v1

    .line 345
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 346
    .local v0, action:I
    if-nez v0, :cond_7

    .line 347
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mBringToFront:Z
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$100(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->bringToFront()V

    .line 350
    :cond_1
    iput v4, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initX:I

    .line 351
    iput v4, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initY:I

    .line 352
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$200(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 354
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$300(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 355
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_1
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initY:I

    .line 360
    :cond_2
    :goto_2
    iput-boolean v5, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->setInitialPosition:Z

    .line 376
    :goto_3
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$800(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 377
    if-ne v0, v5, :cond_3

    .line 379
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v2, v2, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->post(Ljava/lang/Runnable;)Z

    :cond_3
    move v1, v4

    .line 382
    goto :goto_0

    :cond_4
    move v1, v5

    .line 355
    goto :goto_1

    .line 357
    :cond_5
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    move v1, v3

    :goto_4
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initX:I

    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_4

    .line 362
    :cond_7
    iget-boolean v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->setInitialPosition:Z

    if-eqz v1, :cond_8

    .line 364
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initX:I

    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentWidth:I
    invoke-static {v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$500(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initX:I

    .line 365
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initY:I

    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentHeight:I
    invoke-static {v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$600(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initY:I

    .line 367
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mGestureListener:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$700(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;

    move-result-object v1

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initX:I

    iget v3, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initY:I

    invoke-virtual {v1, v2, v3}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$PanelOnGestureListener;->setScroll(II)V

    .line 368
    iput-boolean v4, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->setInitialPosition:Z

    .line 370
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initX:I

    neg-int v1, v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initX:I

    .line 371
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initY:I

    neg-int v1, v1

    iput v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initY:I

    .line 374
    :cond_8
    iget v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$1;->initY:I

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_3
.end method
