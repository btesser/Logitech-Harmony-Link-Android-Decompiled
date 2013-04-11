.class Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DeadZoneScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView$1;->this$0:Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 79
    float-to-double v2, p4

    float-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 81
    .local v0, angle:D
    const-wide v2, 0x4051800000000000L

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x405b800000000000L

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 82
    const/high16 v2, 0x41f0

    cmpl-float v2, p4, v2

    if-ltz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView$1;->this$0:Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;

    #calls: Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->prevPage()V
    invoke-static {v2}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->access$000(Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;)V

    .line 90
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 85
    :cond_1
    const/high16 v2, -0x3e10

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView$1;->this$0:Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;

    #calls: Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->nextPage()V
    invoke-static {v2}, Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;->access$100(Lcom/logitech/harmonylink/view/widget/DeadZoneScrollView;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 68
    float-to-double v2, p4

    float-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 70
    .local v0, angle:D
    const-wide v2, 0x4051800000000000L

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x405b800000000000L

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    .line 74
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
