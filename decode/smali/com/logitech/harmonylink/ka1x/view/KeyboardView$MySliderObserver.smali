.class Lcom/logitech/harmonylink/ka1x/view/KeyboardView$MySliderObserver;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/ka1x/view/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySliderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$MySliderObserver;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Lcom/logitech/harmonylink/ka1x/view/KeyboardView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$MySliderObserver;-><init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)V

    return-void
.end method


# virtual methods
.method public sliderClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$MySliderObserver;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #setter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mIsSizeChangeBySlider:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$902(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Z)Z

    .line 549
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$MySliderObserver;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #setter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mConsiderSizeChange:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$502(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Z)Z

    .line 550
    return-void
.end method

.method public sliderOpened()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$MySliderObserver;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    const/4 v1, 0x1

    #setter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mIsSizeChangeBySlider:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$902(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Z)Z

    .line 554
    return-void
.end method
