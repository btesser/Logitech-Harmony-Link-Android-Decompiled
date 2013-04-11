.class Lcom/logitech/harmonylink/context/view/KeyboardView$3;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/KeyboardView;->handleRevueButtons()V
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
    .line 398
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$3;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 399
    const v0, 0x5f5e0fe

    .line 401
    .local v0, Requestcode:I
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "free_form"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$3;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    iget-object v3, v3, Lcom/logitech/harmonylink/context/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/context/WatchGtvActivity;

    invoke-virtual {v3, v2, v0}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 407
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$3;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/KeyboardView$3;->this$0:Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/context/view/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
