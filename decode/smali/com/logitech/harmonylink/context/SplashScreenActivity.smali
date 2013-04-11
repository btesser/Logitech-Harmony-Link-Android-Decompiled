.class public Lcom/logitech/harmonylink/context/SplashScreenActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "SplashScreenActivity.java"


# static fields
.field private static final DELAY:J = 0xbb8L


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field mHasBeenSkipped:Z

.field mHasLaunchedHome:Z

.field mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mOnConnect:Ljava/lang/Runnable;

.field mReachable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 26
    const-class v0, Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->LOG_TAG:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasBeenSkipped:Z

    .line 33
    iput-boolean v1, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasLaunchedHome:Z

    .line 97
    new-instance v0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;-><init>(Lcom/logitech/harmonylink/context/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mOnConnect:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/logitech/harmonylink/context/SplashScreenActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mGoToHomeWhenAuthenticated:Z

    return p1
.end method


# virtual methods
.method public goToControlsScreen(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 5
    .parameter "dom"

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, currentActivityId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, currentActivityName:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    const-string v3, "launcher_param"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v3, "category"

    const-string v4, "activities"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v3, "content_label"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 182
    return-void
.end method

.method public goToHome()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 148
    iput-boolean v2, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasBeenSkipped:Z

    .line 150
    iget-boolean v1, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasLaunchedHome:Z

    if-nez v1, :cond_0

    .line 151
    iput-boolean v2, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasLaunchedHome:Z

    .line 159
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v1

    const-string v2, "home"

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public launchServerListActivity()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->finish()V

    .line 242
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x4

    .line 39
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 43
    const v8, 0x7f030056

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->setContentView(I)V

    .line 45
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 47
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v2, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 48
    .local v2, mScreenLayout:I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v10, :cond_1

    and-int/lit8 v8, v2, 0xf

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_1

    and-int/lit8 v8, v2, 0xf

    if-ne v8, v10, :cond_1

    .line 51
    :cond_0
    const v8, 0x7f0600d5

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 52
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v3

    .line 58
    .local v3, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v8, "timewhenappinstalled"

    invoke-virtual {v3, v8}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 60
    .local v6, timeinstalledinsec:J
    sget-wide v8, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->KEY_NOT_EXIST:J

    cmp-long v8, v6, v8

    if-nez v8, :cond_2

    .line 61
    invoke-static {}, Lcom/logitech/harmonylink/util/SystemUtil;->getCurrentCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, current:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 63
    .local v4, timeinsec:J
    const-string v8, "timewhenappinstalled"

    invoke-virtual {v3, v8, v4, v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putLong(Ljava/lang/String;J)V

    .line 66
    .end local v0           #current:Ljava/util/Calendar;
    .end local v4           #timeinsec:J
    :cond_2
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v8

    check-cast v8, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iput-object v8, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 67
    iget-object v8, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v9, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mOnConnect:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addOneShotServiceStartObserver(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasBeenSkipped:Z

    .line 222
    iget-object v0, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mOnConnect:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mOnConnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->removeOneShotServiceStartObserver(Ljava/lang/Runnable;)V

    .line 225
    :cond_0
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 226
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->setIntent(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromonetouch"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, fromOneTouch:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromonetouch"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, fromOliveOneTouch:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromunpair"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, fromUnPair:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromdevices_ka1x"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, fromDeviceActivity:Ljava/lang/String;
    const-string v4, "fromonetouch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fromonetouch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fromunpair"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fromdevices_ka1x"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    :cond_0
    sget-boolean v4, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->isConnectSuccess:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/logitech/harmonylink/context/LoginActivity;->mIsConnectSuccess:Z

    if-eqz v4, :cond_2

    .line 89
    :cond_1
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->finishActivity(I)V

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_3
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onPause()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mReachable:Z

    .line 133
    sget-object v0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getAutoLockState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-boolean v0, v0, Lcom/logitech/connect/ConnectClient;->mIsLockReleased:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v0, v0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 139
    return-void
.end method

.method protected skip()V
    .locals 4

    .prologue
    .line 186
    iget-boolean v2, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasBeenSkipped:Z

    if-eqz v2, :cond_0

    .line 217
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasBeenSkipped:Z

    .line 191
    iget-object v2, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    .line 192
    .local v0, client:Lcom/logitech/connect/ConnectClient;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->isPairedWithKa()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->launchServerListActivity()V

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    .line 201
    .local v1, dom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 202
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "82"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->goToControlsScreen(Lcom/logitech/harmonylink/harmony/Dom;)V

    goto :goto_0

    .line 207
    :cond_3
    sget-object v2, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    .line 208
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->goToHome()V

    goto :goto_0

    .line 212
    :cond_4
    sget-object v2, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    .line 213
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->goToHome()V

    goto :goto_0
.end method
