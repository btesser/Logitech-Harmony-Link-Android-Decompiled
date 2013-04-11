.class public Lcom/logitech/harmonylink/context/GestureTutorialActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "GestureTutorialActivity.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 16
    const-class v0, Lcom/logitech/harmonylink/context/GestureTutorialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/GestureTutorialActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private isGestureTutorialAlreadyDispalyed()Z
    .locals 3

    .prologue
    .line 102
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 104
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v1, "gestureTutFinished"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getBooleanWithName(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/GestureTutorialActivity;->requestWindowFeature(I)Z

    .line 24
    const v4, 0x7f03002a

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/GestureTutorialActivity;->setContentView(I)V

    .line 26
    const v4, 0x7f070093

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/GestureTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 27
    .local v0, gestClosebutton:Landroid/widget/Button;
    new-instance v4, Lcom/logitech/harmonylink/context/GestureTutorialActivity$1;

    invoke-direct {v4, p0}, Lcom/logitech/harmonylink/context/GestureTutorialActivity$1;-><init>(Lcom/logitech/harmonylink/context/GestureTutorialActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v3

    .line 38
    .local v3, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/GestureTutorialActivity;->isGestureTutorialAlreadyDispalyed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0005

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    .local v2, mdlgHelp:Landroid/app/Dialog;
    const v4, 0x7f03002b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 41
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 42
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 44
    new-instance v4, Lcom/logitech/harmonylink/context/GestureTutorialActivity$2;

    invoke-direct {v4, p0, v3, v2}, Lcom/logitech/harmonylink/context/GestureTutorialActivity$2;-><init>(Lcom/logitech/harmonylink/context/GestureTutorialActivity;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    new-instance v4, Lcom/logitech/harmonylink/context/GestureTutorialActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/logitech/harmonylink/context/GestureTutorialActivity$3;-><init>(Lcom/logitech/harmonylink/context/GestureTutorialActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 67
    const v4, 0x7f07009a

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 68
    .local v1, helpShadebutton:Landroid/widget/Button;
    new-instance v4, Lcom/logitech/harmonylink/context/GestureTutorialActivity$4;

    invoke-direct {v4, p0, v3, v2}, Lcom/logitech/harmonylink/context/GestureTutorialActivity$4;-><init>(Lcom/logitech/harmonylink/context/GestureTutorialActivity;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .end local v1           #helpShadebutton:Landroid/widget/Button;
    .end local v2           #mdlgHelp:Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 94
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 80
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/GestureTutorialActivity;->finish()V

    .line 82
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
