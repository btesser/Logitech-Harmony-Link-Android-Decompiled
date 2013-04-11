.class Lcom/logitech/harmonylink/context/view/KeyboardView$5;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/KeyboardView;->handleRevueToogleButtonClick(Landroid/widget/ToggleButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 446
    move-object v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    move-object v1, v0

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$800(Lcom/logitech/harmonylink/context/view/KeyboardView;)Landroid/widget/ToggleButton;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 447
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->setAltPressed(Z)V

    .line 451
    .end local p1
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #calls: Lcom/logitech/harmonylink/context/view/KeyboardView;->reDrawRevueToogleButtons()Z
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$1000(Lcom/logitech/harmonylink/context/view/KeyboardView;)Z

    .line 452
    return-void

    .line 448
    .restart local p1
    :cond_1
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$900(Lcom/logitech/harmonylink/context/view/KeyboardView;)Landroid/widget/ToggleButton;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->setFunctionPressed(Z)V

    goto :goto_0
.end method
