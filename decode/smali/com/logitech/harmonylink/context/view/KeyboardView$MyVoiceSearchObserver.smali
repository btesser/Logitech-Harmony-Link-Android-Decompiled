.class Lcom/logitech/harmonylink/context/view/KeyboardView$MyVoiceSearchObserver;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Lcom/logitech/harmonylink/softkeyboard/IVoiceSearchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyVoiceSearchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$MyVoiceSearchObserver;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/view/KeyboardView;Lcom/logitech/harmonylink/context/view/KeyboardView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/view/KeyboardView$MyVoiceSearchObserver;-><init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V

    return-void
.end method


# virtual methods
.method public initiateVoiceSearch()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$MyVoiceSearchObserver;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #calls: Lcom/logitech/harmonylink/context/view/KeyboardView;->triggerVoiceSearch()V
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$1100(Lcom/logitech/harmonylink/context/view/KeyboardView;)V

    .line 568
    return-void
.end method
