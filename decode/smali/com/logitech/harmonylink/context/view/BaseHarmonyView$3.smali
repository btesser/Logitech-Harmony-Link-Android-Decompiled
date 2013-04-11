.class Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;
.super Ljava/lang/Object;
.source "BaseHarmonyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setIRButton(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

.field final synthetic val$command:Lcom/logitech/harmonylink/harmony/Command;

.field final synthetic val$dom:Lcom/logitech/harmonylink/harmony/Dom;

.field final synthetic val$pageNumber:Ljava/lang/Integer;

.field final synthetic val$tabNumber:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    iput-object p3, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$command:Lcom/logitech/harmonylink/harmony/Command;

    iput-object p4, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$tabNumber:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$pageNumber:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$command:Lcom/logitech/harmonylink/harmony/Command;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;Z)Z

    .line 387
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->start()V

    .line 388
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$tabNumber:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$pageNumber:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setTabAndPage(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 389
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;->val$dom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->sendCancelCommand()Z

    .line 390
    return-void
.end method
