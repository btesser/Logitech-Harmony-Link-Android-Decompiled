.class Lcom/logitech/harmonylink/ka1x/view/KeyboardView$4;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->handleRevueButtonClick(Landroid/widget/ToggleButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

.field final synthetic val$buttonCommandMapping:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$4;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    iput-object p2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$4;->val$buttonCommandMapping:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, bitState:I
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$4;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    sget-boolean v3, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_ALT_PRESSED:Z

    sget-boolean v4, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_FN_PRESSED:Z

    #calls: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setBitState(IZZ)I
    invoke-static {v2, v0, v3, v4}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$200(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;IZZ)I

    move-result v1

    .line 422
    .local v1, newMetaState:I
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$4;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v2}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$300(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$4;->val$buttonCommandMapping:Ljava/util/HashMap;

    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/harmony/Command;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;ZI)Z

    .line 423
    return-void
.end method
