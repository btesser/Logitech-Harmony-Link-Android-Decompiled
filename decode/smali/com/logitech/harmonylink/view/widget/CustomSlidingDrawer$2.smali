.class Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$2;
.super Ljava/lang/Object;
.source "CustomSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 387
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$2;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$2;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->mBringToFront:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->access$100(Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$2;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->bringToFront()V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$2;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->initChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$2;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$2;->this$0:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;

    iget-object v1, v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;->post(Ljava/lang/Runnable;)Z

    .line 394
    :cond_1
    return-void
.end method
