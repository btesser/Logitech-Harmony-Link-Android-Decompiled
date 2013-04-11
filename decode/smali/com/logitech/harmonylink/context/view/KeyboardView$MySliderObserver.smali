.class Lcom/logitech/harmonylink/context/view/KeyboardView$MySliderObserver;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySliderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$MySliderObserver;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/view/KeyboardView;Lcom/logitech/harmonylink/context/view/KeyboardView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/view/KeyboardView$MySliderObserver;-><init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V

    return-void
.end method


# virtual methods
.method public sliderClosed()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public sliderOpened()V
    .locals 0

    .prologue
    .line 537
    return-void
.end method
