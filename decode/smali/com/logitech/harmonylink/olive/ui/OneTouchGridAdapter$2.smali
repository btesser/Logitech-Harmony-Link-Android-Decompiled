.class Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;
.super Ljava/lang/Object;
.source "OneTouchGridAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->showShadeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

.field final synthetic val$dlgHelp:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    iput-object p2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;->val$dlgHelp:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "event"

    .prologue
    .line 351
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 352
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;->val$dlgHelp:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->access$300(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, splashActivity:Landroid/content/Intent;
    const-string v1, "fromonetouch"

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->access$300(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->access$400(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 362
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->access$400(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 365
    .end local v0           #splashActivity:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
