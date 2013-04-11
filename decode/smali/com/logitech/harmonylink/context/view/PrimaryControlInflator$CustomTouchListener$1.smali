.class Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;
.super Ljava/lang/Object;
.source "PrimaryControlInflator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$100(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$200(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$200(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$100(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 462
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->selectedView:Landroid/view/View;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$300(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->this$0:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->access$200(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->start()V

    .line 463
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->baseView:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$600(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->tabNumber:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$400(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener$1;->this$1:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    #getter for: Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->pageNumber:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;->access$500(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setTabAndPage(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 465
    :cond_0
    return-void
.end method
