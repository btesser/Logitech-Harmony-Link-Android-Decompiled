.class Lcom/logitech/harmonylink/context/view/GestureView$1;
.super Ljava/lang/Object;
.source "GestureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/GestureView;->handleClick(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/GestureView;

.field final synthetic val$actionAreaAnimator:Landroid/widget/ViewAnimator;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/GestureView;Landroid/content/Context;Landroid/widget/ViewAnimator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/GestureView$1;->this$0:Lcom/logitech/harmonylink/context/view/GestureView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/GestureView$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/logitech/harmonylink/context/view/GestureView$1;->val$actionAreaAnimator:Landroid/widget/ViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 196
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/GestureView;->access$002(Z)Z

    .line 197
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 200
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    invoke-static {}, Lcom/logitech/harmonylink/context/view/GestureView;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$1;->val$actionAreaAnimator:Landroid/widget/ViewAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 202
    const-string v1, "view"

    const-string v2, "dpad"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/GestureView$1;->val$actionAreaAnimator:Landroid/widget/ViewAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 205
    const-string v1, "view"

    const-string v2, "gesture"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
