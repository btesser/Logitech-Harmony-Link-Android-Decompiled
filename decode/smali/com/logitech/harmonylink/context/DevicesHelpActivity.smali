.class public Lcom/logitech/harmonylink/context/DevicesHelpActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "DevicesHelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 24
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v3, 0x7f030018

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/DevicesHelpActivity;->setContentView(I)V

    .line 26
    sget-object v3, Lcom/logitech/harmonylink/context/DevicesHelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    .line 27
    .local v0, dom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/logitech/harmonylink/context/DevicesHelpActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/DevicesHelpActivity;->setTitle(Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/logitech/harmonylink/context/view/FixItView;

    new-instance v3, Lcom/logitech/harmonylink/context/DevicesHelpActivity$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/DevicesHelpActivity$1;-><init>(Lcom/logitech/harmonylink/context/DevicesHelpActivity;)V

    invoke-direct {v1, p0, v3}, Lcom/logitech/harmonylink/context/view/FixItView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;)V

    .line 33
    .local v1, fixitView:Lcom/logitech/harmonylink/context/view/FixItView;
    invoke-virtual {v1, v5}, Lcom/logitech/harmonylink/context/view/FixItView;->hideInputButton(Z)V

    .line 34
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/DevicesHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 35
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DevicesHelpActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    invoke-virtual {v1, p0, p0, v2, v3}, Lcom/logitech/harmonylink/context/view/FixItView;->inflateFixItView(Landroid/content/Context;Lcom/logitech/harmonylink/ui/common/BaseActivity;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 39
    .end local v1           #fixitView:Lcom/logitech/harmonylink/context/view/FixItView;
    .end local v2           #vg:Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 37
    :cond_0
    const v3, 0x7f060026

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/DevicesHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/logitech/harmonylink/context/DevicesHelpActivity;->showAlertDialog(Ljava/lang/String;Z)V

    goto :goto_0
.end method
