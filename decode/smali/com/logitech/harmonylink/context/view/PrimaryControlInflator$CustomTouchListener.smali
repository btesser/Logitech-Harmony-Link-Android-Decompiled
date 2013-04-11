.class public Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;
.super Ljava/lang/Object;
.source "PrimaryControlInflator.java"

# interfaces
.implements Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomTouchListener"
.end annotation


# instance fields
.field private baseView:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

.field private button:Landroid/view/View;

.field private cancelCommandRunnable:Ljava/lang/Runnable;

.field private command:Lcom/logitech/harmonylink/harmony/Command;

.field private pageNumber:Ljava/lang/Integer;

.field private selectedView:Landroid/view/View;

.field private sendCommandRunnable:Ljava/lang/Runnable;

.field private tabNumber:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/logitech/harmonylink/context/view/BaseHarmonyView;)V
    .locals 1
    .parameter
    .parameter "button"
    .parameter "command"
    .parameter "tabNumber"
    .parameter "pageNumber"
    .parameter "baseView"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;-><init>(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->sendCommandRunnable:Ljava/lang/Runnable;

    .line 467
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$2;-><init>(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->cancelCommandRunnable:Ljava/lang/Runnable;

    .line 443
    iput-object p3, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->command:Lcom/logitech/harmonylink/harmony/Command;

    .line 444
    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->button:Landroid/view/View;

    .line 445
    iput-object p4, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->tabNumber:Ljava/lang/Integer;

    .line 446
    iput-object p5, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->pageNumber:Ljava/lang/Integer;

    .line 447
    iput-object p6, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->baseView:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    .line 448
    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->command:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->selectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->tabNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->pageNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Lcom/logitech/harmonylink/context/view/BaseHarmonyView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->baseView:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->button:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onScroll()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mScrollHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$000(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->sendCommandRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mScrollHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$000(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->cancelCommandRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v2, 0xc8

    .line 499
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 510
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 501
    :pswitch_0
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->selectedView:Landroid/view/View;

    .line 502
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->scrollView:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$800(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->setScrollObserver(Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView$IScrollObserver;)V

    .line 503
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mScrollHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$000(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->sendCommandRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 506
    :pswitch_1
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->selectedView:Landroid/view/View;

    .line 507
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mScrollHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$000(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->cancelCommandRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
