.class Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PagedHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$1;->this$0:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 91
    const/high16 v0, 0x41f0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$1;->this$0:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    #calls: Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->prevPage()V
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->access$000(Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;)V

    move v0, v1

    .line 100
    :goto_0
    return v0

    .line 95
    :cond_0
    const/high16 v0, -0x3e10

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$1;->this$0:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    #calls: Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->nextPage()V
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->access$100(Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;)V

    move v0, v1

    .line 97
    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
