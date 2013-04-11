.class Lcom/logitech/harmonylink/ka1x/view/GestureView$1;
.super Ljava/lang/Object;
.source "GestureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/GestureView;->configure(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/GestureView;

.field final synthetic val$c:Lcom/logitech/harmonylink/harmony/Command;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/GestureView;Lcom/logitech/harmonylink/harmony/Command;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/GestureView;

    iput-object p2, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView$1;->val$c:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/GestureView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/GestureView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v0}, Lcom/logitech/harmonylink/ka1x/view/GestureView;->access$000(Lcom/logitech/harmonylink/ka1x/view/GestureView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/GestureView$1;->val$c:Lcom/logitech/harmonylink/harmony/Command;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;Z)Z

    .line 121
    return-void
.end method
