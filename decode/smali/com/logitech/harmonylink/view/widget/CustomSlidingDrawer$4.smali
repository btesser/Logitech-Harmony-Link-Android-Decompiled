.class Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$4;
.super Ljava/lang/Object;
.source "CustomSlidingDrawer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 516
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$4;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$4;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->READY:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$002(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 509
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$4;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mIsShrinking:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$900(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$4;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mContent:Landroid/view/View;
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$200(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$4;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #calls: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->postProcess()V
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$1500(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)V

    .line 513
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 515
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$4;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->ANIMATING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    #setter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mState:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$002(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 518
    return-void
.end method
