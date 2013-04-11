.class Lcom/logitech/harmonylink/context/BaseHarmonyActivity$4;
.super Ljava/lang/Object;
.source "BaseHarmonyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

.field final synthetic val$mDlgHelp:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$4;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$4;->val$mDlgHelp:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "event"

    .prologue
    .line 153
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$4;->val$mDlgHelp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$4;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->finish()V

    .line 156
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
