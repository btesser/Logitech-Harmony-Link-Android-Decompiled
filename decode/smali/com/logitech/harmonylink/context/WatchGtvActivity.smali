.class public Lcom/logitech/harmonylink/context/WatchGtvActivity;
.super Lcom/logitech/harmonylink/context/BaseHarmonyActivity;
.source "WatchGtvActivity.java"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mKeybardViewObserver:Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;

.field private mPeekABooSliderObserver:Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;

.field private mWatchGTVView:Lcom/logitech/harmonylink/context/view/WatchGTVView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;-><init>()V

    .line 27
    const-class v0, Lcom/logitech/harmonylink/context/WatchGtvActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addKeyboardViewObserver(Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;)V
    .locals 0
    .parameter "keyBoardObsever"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mKeybardViewObserver:Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;

    .line 69
    return-void
.end method

.method public addPeekABooSliderObserver(Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;)V
    .locals 0
    .parameter "peekABooSliderObserver"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mPeekABooSliderObserver:Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;

    .line 65
    return-void
.end method

.method public notifyKeyboardViewObservers()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mKeybardViewObserver:Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;

    invoke-interface {v0}, Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;->showWatchGTVDPadView()V

    .line 73
    return-void
.end method

.method public notifyObserversOfSliderChange(I)V
    .locals 1
    .parameter "state_change"

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mPeekABooSliderObserver:Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;

    invoke-interface {v0}, Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;->sliderOpened()V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mPeekABooSliderObserver:Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;

    invoke-interface {v0}, Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;->sliderClosed()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 86
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz p3, :cond_0

    .line 89
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 92
    :cond_0
    const/4 v4, 0x0

    .line 94
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 95
    const-string v5, "android.speech.extra.RESULTS"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 99
    :cond_1
    const v5, 0x5f5e0fe

    if-ne p1, v5, :cond_5

    .line 101
    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 102
    sget-object v5, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/logitech/harmonylink/harmony/Dom;->startSendtext(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->notifyKeyboardViewObservers()V

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "String "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been sent.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 128
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-void

    .line 104
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 105
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Invalid string"

    invoke-static {v5, v6}, Lcom/logitech/harmonylink/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v5, "Invalid String please try again.."

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 111
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const-string v5, " "

    goto :goto_0

    .line 115
    :cond_5
    const v5, 0x5f5e0ff

    if-ne p1, v5, :cond_3

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "results"

    if-eqz v4, :cond_6

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1

    .line 117
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    const-string v5, ""

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 77
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->notifyKeyboardViewObservers()V

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget-object v0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addSyncStateObserver(Lcom/logitech/harmonylink/common/ISyncStateObserver;)V

    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    invoke-direct {v0, v1, p0, v2}, Lcom/logitech/harmonylink/context/view/WatchGTVView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/WatchGtvActivity;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mWatchGTVView:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mTab:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mWatchGTVView:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->setCurrentTab(Ljava/lang/String;)V

    .line 43
    :cond_1
    sget-boolean v0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mHasBeenReset:Z

    if-eqz v0, :cond_2

    .line 44
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 46
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mKeybardViewObserver:Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;

    .line 149
    iput-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mPeekABooSliderObserver:Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;

    .line 150
    invoke-super {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onDestroy()V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mWatchGTVView:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/logitech/harmonylink/context/WatchGtvActivity;->mWatchGTVView:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->showHideUserDefinedPageView()V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->canActivityResume()V

    .line 138
    invoke-super {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onResume()V

    .line 139
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onStop()V

    .line 144
    return-void
.end method
