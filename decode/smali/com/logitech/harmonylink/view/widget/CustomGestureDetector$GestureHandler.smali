.class Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "CustomGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;->this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;

    .line 248
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 249
    return-void
.end method

.method constructor <init>(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;->this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;

    .line 252
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 253
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;->this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->access$100(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;->this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->access$000(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;->this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;

    #calls: Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->dispatchLongPress()V
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->access$200(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)V

    goto :goto_0

    .line 268
    :pswitch_2
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;->this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->access$300(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;->this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mStillDown:Z
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->access$400(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;->this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mDoubleTapListener:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->access$300(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$GestureHandler;->this$0:Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;

    #getter for: Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;->access$000(Lcom/logitech/harmonylink/view/widget/CustomGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomGestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
