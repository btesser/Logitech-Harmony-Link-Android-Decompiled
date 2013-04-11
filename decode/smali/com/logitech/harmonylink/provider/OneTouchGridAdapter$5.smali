.class Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$5;
.super Ljava/lang/Object;
.source "OneTouchGridAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->showShadeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

.field final synthetic val$dlgHelp:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$5;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    iput-object p2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$5;->val$dlgHelp:Landroid/app/Dialog;

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
    .line 522
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$5;->val$dlgHelp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$5;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->access$500(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 536
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
