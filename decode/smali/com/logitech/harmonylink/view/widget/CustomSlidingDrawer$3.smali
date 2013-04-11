.class Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;
.super Ljava/lang/Object;
.source "CustomSlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 421
    const/4 v2, 0x0

    .local v2, fromXDelta:I
    const/4 v5, 0x0

    .local v5, toXDelta:I
    const/4 v3, 0x0

    .local v3, fromYDelta:I
    const/4 v6, 0x0

    .line 422
    .local v6, toYDelta:I
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    move-result-object v9

    sget-object v10, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v9, v10, :cond_1

    .line 423
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v10, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    :cond_0
    const/4 v10, 0x1

    :goto_0
    iget-object v11, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mVelocity:F
    invoke-static {v11}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_1
    xor-int/2addr v10, v11

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z
    invoke-static {v9, v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$902(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Z)Z

    .line 426
    :cond_1
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mOrientation:I
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$300(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 427
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentHeight:I
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$600(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v4

    .line 428
    .local v4, height:I
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$900(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 429
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v9

    if-nez v9, :cond_8

    neg-int v9, v4

    move v3, v9

    .line 433
    :goto_2
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    move-result-object v9

    sget-object v10, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->TRACKING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v9, v10, :cond_c

    .line 434
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1100(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v9

    int-to-float v10, v3

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget-object v10, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F
    invoke-static {v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1100(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v10

    int-to-float v11, v6

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 435
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v10, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z
    invoke-static {v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$900(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v10, 0x1

    :goto_3
    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z
    invoke-static {v9, v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$902(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Z)Z

    .line 436
    move v6, v3

    .line 438
    :cond_2
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1100(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v9

    float-to-int v3, v9

    .line 445
    :cond_3
    :goto_4
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    move-result-object v9

    sget-object v10, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v9, v10, :cond_d

    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mLinearFlying:Z
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1200(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 446
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mVelocity:F
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v7

    .line 448
    .local v7, velocity:F
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-nez v9, :cond_4

    .line 449
    const/high16 v7, 0x3f80

    .line 451
    :cond_4
    const/high16 v9, 0x447a

    sub-int v10, v6, v3

    int-to-float v10, v10

    div-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 452
    .local v1, calculatedDuration:I
    const/16 v9, 0x14

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 483
    .end local v4           #height:I
    .end local v7           #velocity:F
    :goto_5
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v10, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    const/4 v11, 0x0

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F
    invoke-static {v10, v11}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1102(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;F)F

    move-result v10

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F
    invoke-static {v9, v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1402(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;F)F

    .line 484
    if-nez v1, :cond_17

    .line 485
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    sget-object v10, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->READY:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v9, v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$002(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 486
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$900(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 487
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$200(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_5
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #calls: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->postProcess()V
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1500(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    .line 503
    :goto_6
    return-void

    .line 423
    .end local v1           #calculatedDuration:I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .restart local v4       #height:I
    :cond_8
    move v3, v4

    .line 429
    goto/16 :goto_2

    .line 431
    :cond_9
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v9

    if-nez v9, :cond_a

    neg-int v9, v4

    move v6, v9

    :goto_7
    goto/16 :goto_2

    :cond_a
    move v6, v4

    goto :goto_7

    .line 435
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 440
    :cond_c
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    move-result-object v9

    sget-object v10, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v9, v10, :cond_3

    .line 441
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackY:F
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1100(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v9

    float-to-int v3, v9

    goto/16 :goto_4

    .line 454
    :cond_d
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mDuration:I
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1300(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v9

    sub-int v10, v6, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    mul-int/2addr v9, v10

    iget-object v10, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentHeight:I
    invoke-static {v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$600(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int v1, v9, v10

    .restart local v1       #calculatedDuration:I
    goto :goto_5

    .line 457
    .end local v1           #calculatedDuration:I
    .end local v4           #height:I
    :cond_e
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentWidth:I
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$500(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v8

    .line 458
    .local v8, width:I
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$900(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 459
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_11

    neg-int v9, v8

    move v2, v9

    .line 463
    :goto_8
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    move-result-object v9

    sget-object v10, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->TRACKING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v9, v10, :cond_15

    .line 464
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v9

    int-to-float v10, v2

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget-object v10, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F
    invoke-static {v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v10

    int-to-float v11, v5

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_f

    .line 465
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v10, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z
    invoke-static {v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$900(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v10

    if-nez v10, :cond_14

    const/4 v10, 0x1

    :goto_9
    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z
    invoke-static {v9, v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$902(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Z)Z

    .line 466
    move v5, v2

    .line 468
    :cond_f
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v9

    float-to-int v2, v9

    .line 475
    :cond_10
    :goto_a
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    move-result-object v9

    sget-object v10, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v9, v10, :cond_16

    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mLinearFlying:Z
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1200(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 476
    const/high16 v9, 0x447a

    sub-int v10, v5, v2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mVelocity:F
    invoke-static {v11}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v11

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 477
    .restart local v1       #calculatedDuration:I
    const/16 v9, 0x14

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_5

    .end local v1           #calculatedDuration:I
    :cond_11
    move v2, v8

    .line 459
    goto :goto_8

    .line 461
    :cond_12
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mPosition:I
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_13

    neg-int v9, v8

    move v5, v9

    :goto_b
    goto :goto_8

    :cond_13
    move v5, v8

    goto :goto_b

    .line 465
    :cond_14
    const/4 v10, 0x0

    goto :goto_9

    .line 470
    :cond_15
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    move-result-object v9

    sget-object v10, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v9, v10, :cond_10

    .line 471
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mTrackX:F
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1400(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)F

    move-result v9

    float-to-int v2, v9

    goto :goto_a

    .line 479
    :cond_16
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mDuration:I
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1300(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v9

    sub-int v10, v5, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    mul-int/2addr v9, v10

    iget-object v10, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContentWidth:I
    invoke-static {v10}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$500(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)I

    move-result v10

    div-int v1, v9, v10

    .restart local v1       #calculatedDuration:I
    goto/16 :goto_5

    .line 493
    .end local v8           #width:I
    :cond_17
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v9, v2

    int-to-float v10, v5

    int-to-float v11, v3

    int-to-float v12, v6

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 494
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    int-to-long v9, v1

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 495
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->animationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1600(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 496
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$000(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    move-result-object v9

    sget-object v10, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    if-ne v9, v10, :cond_19

    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mLinearFlying:Z
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1200(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 497
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 502
    :cond_18
    :goto_c
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-virtual {v9, v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 499
    :cond_19
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1700(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/animation/Interpolator;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 500
    iget-object v9, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$3;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v9}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1700(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_c
.end method
