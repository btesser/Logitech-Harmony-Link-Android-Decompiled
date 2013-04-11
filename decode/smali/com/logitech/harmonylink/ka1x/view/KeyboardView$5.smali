.class Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->handleRevueToogleButtonClick(Landroid/widget/ToggleButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 433
    move-object v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    move-object v1, v0

    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$600(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Landroid/widget/ToggleButton;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 434
    sget-boolean v1, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_ALT_PRESSED:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_ALT_PRESSED:Z

    .line 435
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    sget-boolean v2, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_ALT_PRESSED:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    :goto_1
    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    iget-object v3, v3, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mParentView:Landroid/view/View;

    #calls: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setDrawable(ILandroid/view/View;)Z
    invoke-static {v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$700(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;ILandroid/view/View;)Z

    .line 441
    .end local p1
    :cond_0
    :goto_2
    return-void

    .restart local p1
    :cond_1
    move v1, v4

    .line 434
    goto :goto_0

    :cond_2
    move v2, v3

    .line 435
    goto :goto_1

    .line 437
    :cond_3
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$800(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Landroid/widget/ToggleButton;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 438
    sget-boolean v1, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_FN_PRESSED:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_3
    sput-boolean v1, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_FN_PRESSED:Z

    .line 439
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    sget-boolean v2, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_FN_PRESSED:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    :goto_4
    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    iget-object v3, v3, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mParentView:Landroid/view/View;

    #calls: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setDrawable(ILandroid/view/View;)Z
    invoke-static {v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$700(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;ILandroid/view/View;)Z

    goto :goto_2

    :cond_4
    move v1, v4

    .line 438
    goto :goto_3

    :cond_5
    move v2, v3

    .line 439
    goto :goto_4
.end method
