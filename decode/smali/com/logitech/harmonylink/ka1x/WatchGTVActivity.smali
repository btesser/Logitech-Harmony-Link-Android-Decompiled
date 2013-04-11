.class public Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "WatchGTVActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;
.implements Lcom/logitech/harmonylink/view/widget/IButtonPressedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private hasUpdated:Z

.field mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mGTVViewRoot:Landroid/view/ViewGroup;

.field private mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

.field private mHelpBtn:Landroid/widget/Button;

.field private mKeybardViewObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPeekABooSliderObserver:Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;

.field private mPowerBtn:Landroid/widget/Button;

.field private mPrimaryControlInflator:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

.field private mSliderObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/ka1x/view/ISliderObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

.field private mWatchGTVView:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->hasUpdated:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 293
    new-instance v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$4;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$4;-><init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)Lcom/logitech/connect/IGlobalResponseObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    return-object v0
.end method

.method static synthetic access$100()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->displayLoadingIfNeeded()V

    return-void
.end method

.method static synthetic access$300()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$402(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->hasUpdated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    return-object v0
.end method


# virtual methods
.method public addKeyboardViewObserver(Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;)V
    .locals 1
    .parameter "obsever_new"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mKeybardViewObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public addPeekABooSliderObserver(Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;)V
    .locals 0
    .parameter "peekABooSliderObserver"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mPeekABooSliderObserver:Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;

    .line 141
    return-void
.end method

.method protected completeLoading()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->completeLoading()V

    .line 165
    iget-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->hasUpdated:Z

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->hasUpdated:Z

    .line 168
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;-><init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mPrimaryControlInflator:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    .line 169
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mPrimaryControlInflator:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->getPrimaryControlsXml(Lcom/logitech/connect/ConnectClient;)V

    .line 174
    :cond_0
    return-void
.end method

.method protected displayLoading()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 116
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->setContentView(I)V

    .line 118
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->completeLoading()V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->setActivityStartObserver(Lcom/logitech/harmonylink/harmony/IActivityStartObserver;)V

    .line 121
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public notifyKeyboardViewObservers()V
    .locals 3

    .prologue
    .line 133
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mKeybardViewObserver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;

    .line 134
    .local v1, o:Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;
    invoke-interface {v1}, Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;->showWatchGTVDPadView()V

    goto :goto_0

    .line 136
    .end local v1           #o:Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;
    :cond_0
    return-void
.end method

.method public notifyObserversOfSliderChange(I)V
    .locals 1
    .parameter "state_change"

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mPeekABooSliderObserver:Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;

    invoke-interface {v0}, Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;->sliderOpened()V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mPeekABooSliderObserver:Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;

    invoke-interface {v0}, Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;->sliderClosed()V

    goto :goto_0

    .line 145
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

    .line 242
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz p3, :cond_0

    .line 245
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 248
    :cond_0
    const/4 v4, 0x0

    .line 250
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 251
    const-string v5, "android.speech.extra.RESULTS"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 255
    :cond_1
    const v5, 0x5f5e0fe

    if-ne p1, v5, :cond_5

    .line 257
    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 258
    sget-object v5, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

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

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->notifyKeyboardViewObservers()V

    .line 267
    const v6, 0x7f0600bf

    new-array v7, v9, [Ljava/lang/Object;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_0
    aput-object v5, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 285
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-void

    .line 260
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 261
    .local v2, e:Ljava/lang/Exception;
    sget-object v5, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Invalid string"

    invoke-static {v5, v6}, Lcom/logitech/harmonylink/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const v5, 0x7f0600be

    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 267
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const-string v5, " "

    goto :goto_0

    .line 271
    :cond_5
    const v5, 0x5f5e0ff

    if-ne p1, v5, :cond_3

    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "results"

    if-eqz v4, :cond_6

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/logitech/harmonylink/context/VoiceCommandsListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 273
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    const-string v5, ""

    goto :goto_2
.end method

.method public onActivityStartEvent(ZIZ)V
    .locals 2
    .parameter "starting"
    .parameter "percentComplete"
    .parameter "started"

    .prologue
    .line 327
    if-eqz p3, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->completeLoading()V

    .line 330
    :cond_0
    if-nez p3, :cond_1

    if-nez p1, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->finish()V

    .line 332
    const v0, 0x7f060031

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    :cond_1
    return-void
.end method

.method public onButtonPressed(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 410
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 290
    const-class v0, Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->openActivityForResult(Ljava/lang/Class;)V

    .line 291
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 358
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget-object v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    new-instance v1, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$1;-><init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addOneShotServiceStartObserver(Ljava/lang/Runnable;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mKeybardViewObserver:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mSliderObserver:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v0, p0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->onCreateDialog(Lcom/logitech/harmonylink/ui/common/BaseActivity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V

    .line 95
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mKeybardViewObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mSliderObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    sget-object v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->removeTrackPadObservers()V

    .line 102
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 103
    return-void
.end method

.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-ne p1, v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->finish()V

    .line 108
    :cond_0
    return-void
.end method

.method public onRequestFinished(Ljava/lang/String;)V
    .locals 7
    .parameter "primaryControlsXml"

    .prologue
    .line 178
    const v4, 0x7f03005a

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->setContentView(I)V

    .line 179
    const v4, 0x7f070135

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mGTVViewRoot:Landroid/view/ViewGroup;

    .line 181
    const v4, 0x7f0700da

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mPowerBtn:Landroid/widget/Button;

    .line 182
    const v4, 0x7f070136

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mHelpBtn:Landroid/widget/Button;

    .line 185
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 187
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->clearActivityStartObserver()V

    .line 191
    new-instance v4, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mGTVViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mPrimaryControlInflator:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    invoke-direct {v4, v5, p0, v6}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;)V

    iput-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mWatchGTVView:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    .line 193
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mGTVViewRoot:Landroid/view/ViewGroup;

    const v5, 0x7f0700cd

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 195
    .local v3, title:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const v4, 0x7f07005d

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    iput-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    .line 201
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mPowerBtn:Landroid/widget/Button;

    new-instance v5, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$2;

    invoke-direct {v5, p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$2;-><init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mHelpBtn:Landroid/widget/Button;

    new-instance v5, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$3;

    invoke-direct {v5, p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$3;-><init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 224
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 227
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 228
    const-string v4, "tab"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, tab:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 231
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mWatchGTVView:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    invoke-virtual {v4, v2}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setCurrentTab(Ljava/lang/String;)V

    .line 236
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v2           #tab:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mWatchGTVView:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mWatchGTVView:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->showHideUserDefinedPageView()V

    .line 343
    :cond_0
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 345
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->canActivityResume()V

    .line 346
    return-void
.end method

.method public skip()V
    .locals 0

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->completeLoading()V

    .line 322
    return-void
.end method
