.class public Lcom/logitech/harmonylink/context/NonGtvActivity;
.super Lcom/logitech/harmonylink/context/BaseHarmonyActivity;
.source "NonGtvActivity.java"


# instance fields
.field private mWatchMovieView:Lcom/logitech/harmonylink/context/view/NonGtvView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget-object v0, Lcom/logitech/harmonylink/context/NonGtvActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addSyncStateObserver(Lcom/logitech/harmonylink/common/ISyncStateObserver;)V

    .line 17
    iget-object v0, p0, Lcom/logitech/harmonylink/context/NonGtvActivity;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/logitech/harmonylink/context/view/NonGtvView;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/NonGtvActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/NonGtvActivity;->mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    invoke-direct {v0, v1, p0, v2}, Lcom/logitech/harmonylink/context/view/NonGtvView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/NonGtvActivity;->mWatchMovieView:Lcom/logitech/harmonylink/context/view/NonGtvView;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/NonGtvActivity;->mTab:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/logitech/harmonylink/context/NonGtvActivity;->mWatchMovieView:Lcom/logitech/harmonylink/context/view/NonGtvView;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/NonGtvActivity;->mTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/NonGtvView;->setCurrentTab(Ljava/lang/String;)V

    .line 27
    :cond_1
    sget-boolean v0, Lcom/logitech/harmonylink/context/NonGtvActivity;->mHasBeenReset:Z

    if-eqz v0, :cond_2

    .line 28
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/NonGtvActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/context/NonGtvActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 30
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onResume()V

    .line 35
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onStop()V

    .line 40
    return-void
.end method
