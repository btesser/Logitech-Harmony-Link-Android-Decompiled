.class Lcom/logitech/harmonylink/context/DPadActivity$1;
.super Ljava/lang/Object;
.source "DPadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/DPadActivity;->completeLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/DPadActivity;

.field final synthetic val$c:Lcom/logitech/harmonylink/harmony/Command;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/DPadActivity;Lcom/logitech/harmonylink/harmony/Command;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/logitech/harmonylink/context/DPadActivity$1;->this$0:Lcom/logitech/harmonylink/context/DPadActivity;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/DPadActivity$1;->val$c:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/logitech/harmonylink/context/DPadActivity$1;->this$0:Lcom/logitech/harmonylink/context/DPadActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DPadActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/DPadActivity$1;->val$c:Lcom/logitech/harmonylink/harmony/Command;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;Z)Z

    .line 96
    return-void
.end method
