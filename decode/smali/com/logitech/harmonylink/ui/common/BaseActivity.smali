.class public Lcom/logitech/harmonylink/ui/common/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final ACTIVITY_RESULT_UNPAIRED:I = 0x7

.field public static final ACTIVITY_TUTORIAL:I = 0x2

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_CHANNEL_NUMBER:Ljava/lang/String; = "channel number"

.field public static final EXTRA_IMAGE_HASH:Ljava/lang/String; = "image_hash"

.field public static final EXTRA_IMAGE_PATH:Ljava/lang/String; = "image_path"

.field public static final EXTRA_LABEL:Ljava/lang/String; = "content_label"

.field public static final EXTRA_LAUNCH_PARAM:Ljava/lang/String; = "launcher_param"

.field public static final GESTURETUT:Ljava/lang/String; = "gestLaunch"

.field public static final HELPSHADE_ACTIVITY_COMPLETED:I = 0x64

.field protected static final LOGIN_CODE:I = 0x7

.field public static final PAIRING_TUTORIAL:I = 0x1

.field protected static final PREFS:Ljava/lang/String; = "ConnectClient"

.field protected static final REQUEST_CODE:I = 0x6

.field public static final REQUEST_FAILED:I = 0x0

.field public static final RESPONSE_FAILED:I = -0x1

.field public static final RESPONSE_SUCCEEDED:I = 0x1

.field protected static final SERVER_ACTIVITY:I = 0x5

.field public static final SLIDER_CLOSED:I = 0x0

.field public static final SLIDER_OPENED:I = 0x1

.field protected static final USERAUTHTOKEN_PREFS:Ljava/lang/String; = "com.logitech.remote"

.field protected static mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field protected static mHasBeenReset:Z

.field public static sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;


# instance fields
.field private mDisplayLoadingScreen:Z

.field protected mGoToHomeWhenAuthenticated:Z

.field protected mIsConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mDisplayLoadingScreen:Z

    .line 41
    iput-boolean v1, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mGoToHomeWhenAuthenticated:Z

    .line 42
    iput-boolean v1, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mIsConnected:Z

    return-void
.end method

.method public static hasBeenReset()Z
    .locals 1

    .prologue
    .line 389
    sget-boolean v0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mHasBeenReset:Z

    return v0
.end method

.method public static setHasBeenReset(Z)V
    .locals 0
    .parameter "hasBeenReset"

    .prologue
    .line 393
    sput-boolean p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mHasBeenReset:Z

    .line 394
    return-void
.end method

.method private startOneTouch()V
    .locals 4

    .prologue
    .line 373
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getInstance(Ljava/lang/String;)Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 378
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->finish()V

    .line 379
    return-void
.end method


# virtual methods
.method protected canActivityResume()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getConnected()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getServerIdentity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getServerIdentity()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->finish()V

    .line 143
    :cond_1
    return-void
.end method

.method protected completeLoading()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mDisplayLoadingScreen:Z

    .line 306
    return-void
.end method

.method protected displayLoading()V
    .locals 1

    .prologue
    .line 298
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->setContentView(I)V

    .line 299
    return-void
.end method

.method protected displayLoadingIfNeeded()V
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mDisplayLoadingScreen:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->displayLoading()V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->completeLoading()V

    goto :goto_0
.end method

.method public getDom()Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    return-object v0
.end method

.method public goToHome()V
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v0

    const-string v1, "home"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->openActivityNoResult(Ljava/lang/Class;)V

    .line 196
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->setResult(I)V

    .line 197
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->finish()V

    .line 198
    return-void
.end method

.method public isPairedWithKa()Z
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->isPaired()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 169
    return-void
.end method

.method public onConnectionStateChanged(IZ)V
    .locals 5
    .parameter "newState"
    .parameter "error"

    .prologue
    const/4 v3, 0x2

    .line 172
    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mIsConnected:Z

    .line 174
    iget-boolean v2, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mGoToHomeWhenAuthenticated:Z

    if-eqz v2, :cond_0

    if-ne p1, v3, :cond_0

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 178
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 179
    .local v1, t:Ljava/util/Timer;
    new-instance v2, Lcom/logitech/harmonylink/ui/common/BaseActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity$1;-><init>(Lcom/logitech/harmonylink/ui/common/BaseActivity;Landroid/os/Handler;)V

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 191
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #t:Ljava/util/Timer;
    :cond_0
    return-void

    .line 172
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 85
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0, v3}, Landroid/view/Window;->setFormat(I)V

    .line 86
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    sput-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 89
    sget-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->activityOnCreate(Lcom/logitech/harmonylink/ui/common/BaseActivity;)V

    .line 90
    sget-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mIsConnected:Z

    .line 92
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 207
    sget-object v2, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getMenu()Lcom/logitech/harmonylink/menu/IMenu;

    move-result-object v1

    .line 208
    .local v1, optionsMenu:Lcom/logitech/harmonylink/menu/IMenu;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 209
    .local v0, inflater:Landroid/view/MenuInflater;
    invoke-interface {v1}, Lcom/logitech/harmonylink/menu/IMenu;->getMenuOptions()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 210
    invoke-interface {v1}, Lcom/logitech/harmonylink/menu/IMenu;->getMenuVisiblity()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 216
    sget-object v1, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getMenu()Lcom/logitech/harmonylink/menu/IMenu;

    move-result-object v0

    .line 217
    .local v0, optionsMenu:Lcom/logitech/harmonylink/menu/IMenu;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    sget-object v2, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/logitech/harmonylink/menu/IMenu;->menuAction(Lcom/logitech/harmonylink/harmony/Dom;Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;I)Z

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    if-ne v0, p0, :cond_0

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 156
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 147
    sput-object p0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 385
    sget-object v0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->checkRunningTasks()V

    .line 386
    return-void
.end method

.method protected openActivityForResult(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, openActivityIntent:Landroid/content/Intent;
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    return-void
.end method

.method protected openActivityForResultNoHistory(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, openActivityIntent:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    return-void
.end method

.method protected openActivityNoHistory(Ljava/lang/Class;)V
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
    .line 252
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->openActivityNoHistory(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 253
    return-void
.end method

.method protected openActivityNoHistory(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, openActivityIntent:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 264
    :cond_0
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method public openActivityNoResult(Ljava/lang/Class;)V
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
    .line 246
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, openActivityIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method public requestCustomTitleBar()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 104
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->requestWindowFeature(I)Z

    .line 105
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030029

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 107
    return-void
.end method

.method public requestCustomTitleBar(I)V
    .locals 0
    .parameter "titleId"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->requestCustomTitleBar()V

    .line 100
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->setTitle(I)V

    .line 101
    return-void
.end method

.method public setLongNotice(Ljava/lang/String;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 280
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    :cond_0
    return-void
.end method

.method public setNotice(Ljava/lang/String;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 3
    .parameter "titleId"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    .local v0, titleBarTextView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .local v0, titleBarTextView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showAlertDialog(Ljava/lang/String;Z)V
    .locals 6
    .parameter "detailedMessage"
    .parameter "isActivitySwitchedOff"

    .prologue
    const/4 v5, 0x1

    .line 321
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v2

    .line 330
    .local v2, dom:Lcom/logitech/harmonylink/harmony/Dom;
    const v4, 0x7f060026

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    invoke-virtual {v2, v5}, Lcom/logitech/harmonylink/harmony/Dom;->setHasPoweredOffByCurrentClient(Z)V

    .line 332
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startOneTouch()V

    .line 333
    const-string v4, "-1"

    invoke-virtual {v2, v4}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentActivity(Ljava/lang/String;)V

    .line 334
    const/4 v4, 0x0

    sput-boolean v4, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mHasBeenReset:Z

    .line 357
    :goto_0
    return-void

    .line 335
    :cond_0
    if-eqz p2, :cond_1

    .line 336
    invoke-virtual {v2, v5}, Lcom/logitech/harmonylink/harmony/Dom;->setHasPoweredOffByCurrentClient(Z)V

    .line 337
    const-string v4, "-1"

    invoke-virtual {v2, v4}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentActivity(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startOneTouch()V

    goto :goto_0

    .line 342
    :cond_1
    const v4, 0x7f060027

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startOneTouch()V

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, currentActivityId:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, currentActivityName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "launcher_param"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v4, "category"

    const-string v5, "activities"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v4, "content_label"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 354
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->finish()V

    goto :goto_0
.end method

.method public showToastMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "detailedMessage"

    .prologue
    .line 309
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startOneTouch()V

    .line 316
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentActivity(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method protected skip()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method protected unPair()V
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setHarmonyLinkID(Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/logitech/harmonylink/ui/common/BaseActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->unPairAndReturnToSplash()V

    .line 230
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->finish()V

    .line 231
    return-void
.end method
