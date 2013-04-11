.class Lcom/logitech/harmonylink/context/view/FixItView$5;
.super Ljava/lang/Object;
.source "FixItView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/FixItView;->inflateFixItView(Landroid/content/Context;Lcom/logitech/harmonylink/ui/common/BaseActivity;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/harmony/Dom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/FixItView;

.field final synthetic val$fixitValue:Lcom/logitech/harmonylink/harmony/Fixit;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/FixItView;Lcom/logitech/harmonylink/harmony/Fixit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/FixItView$5;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/FixItView$5;->val$fixitValue:Lcom/logitech/harmonylink/harmony/Fixit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/FixItView$5;->this$0:Lcom/logitech/harmonylink/context/view/FixItView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/FixItView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/FixItView$5;->val$fixitValue:Lcom/logitech/harmonylink/harmony/Fixit;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Fixit;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Input"

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/FixItView$5;->val$fixitValue:Lcom/logitech/harmonylink/harmony/Fixit;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Fixit;->getInput()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/harmony/Dom;->startSendFixitCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method
