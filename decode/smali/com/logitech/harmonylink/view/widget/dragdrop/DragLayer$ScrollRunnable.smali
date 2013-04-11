.class Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    #getter for: Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragScroller:Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->access$000(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;)Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    #setter for: Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDrawEstimated:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->access$102(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;Z)Z

    .line 660
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    #getter for: Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragScroller:Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->access$000(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;)Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;->scrollLeft()V

    .line 665
    :goto_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    #setter for: Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mScrollState:I
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->access$202(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;I)I

    .line 667
    :cond_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;

    #getter for: Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->mDragScroller:Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;->access$000(Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer;)Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 670
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/DragLayer$ScrollRunnable;->mDirection:I

    .line 671
    return-void
.end method
