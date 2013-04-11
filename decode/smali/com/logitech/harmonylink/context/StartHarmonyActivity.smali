.class public Lcom/logitech/harmonylink/context/StartHarmonyActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "StartHarmonyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# static fields
.field private static final HEARTBEAT_DELAY:I = 0x7530


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private hasUpdated:Z

.field private mConnectClient:Lcom/logitech/connect/ConnectClient;

.field private mContentLabel:Ljava/lang/String;

.field private mCurrentTry:I

.field mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

.field private mHeartbeatHandler:Landroid/os/Handler;

.field private mImageHash:Ljava/lang/String;

.field private mImagePath:Ljava/lang/String;

.field private mIsAlertShown:Z

.field private mLauncherParameter:Ljava/lang/String;

.field private mMaxRetries:I

.field private mOneTouchContentCategory:Ljava/lang/String;

.field private mPingStarted:Z

.field private mSendHeartbeat:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 44
    const-class v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->LOG_TAG:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->hasUpdated:Z

    .line 64
    iput-boolean v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mPingStarted:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 76
    new-instance v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity$1;-><init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mSendHeartbeat:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity$2;-><init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->sendHeartbeat()V

    return-void
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/logitech/harmonylink/context/StartHarmonyActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->hasUpdated:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mSendHeartbeat:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Lcom/logitech/connect/IGlobalResponseObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    return-object v0
.end method

.method static synthetic access$300()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->displayLoadingIfNeeded()V

    return-void
.end method

.method static synthetic access$500()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mIsAlertShown:Z

    return v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mPingStarted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/logitech/harmonylink/context/StartHarmonyActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mPingStarted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mCurrentTry:I

    return v0
.end method

.method static synthetic access$808(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mCurrentTry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mCurrentTry:I

    return v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mMaxRetries:I

    return v0
.end method

.method private getHarmonyActivity(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "activityType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/logitech/harmonylink/context/BaseHarmonyActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    const-string v0, "WatchGTV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-class v0, Lcom/logitech/harmonylink/context/WatchGtvActivity;

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/logitech/harmonylink/context/NonGtvActivity;

    goto :goto_0
.end method

.method private sendHeartbeat()V
    .locals 4

    .prologue
    .line 517
    sget-object v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 519
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.connect/vnd.logitech.ping"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity$6;-><init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 558
    return-void
.end method

.method private startActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->setActivityStartObserver(Lcom/logitech/harmonylink/harmony/IActivityStartObserver;)V

    .line 221
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->loadStartActivityScreen(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x3

    iput v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mMaxRetries:I

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mCurrentTry:I

    .line 232
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mSendHeartbeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/harmony/Dom;->startLogitechActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 240
    return-void
.end method


# virtual methods
.method protected completeLoading()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 281
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->completeLoading()V

    .line 283
    iget-boolean v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->hasUpdated:Z

    if-nez v5, :cond_2

    .line 284
    iput-boolean v8, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->hasUpdated:Z

    .line 286
    sget-object v5, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v2

    .line 299
    .local v2, currentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    .line 301
    .local v1, connectClient:Lcom/logitech/connect/ConnectClient;
    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, hubId:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, activityType:Ljava/lang/String;
    const-string v5, "WatchGTV"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "82"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 305
    const-string v0, "VirtualTelevisionN"

    .line 306
    invoke-virtual {v2, v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setActivityType(Ljava/lang/String;)V

    .line 309
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getHarmonyActivity(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "currentActivity"

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    sget-boolean v5, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHasBeenReset:Z

    if-nez v5, :cond_3

    .line 313
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->startActivity(Landroid/content/Intent;)V

    .line 314
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->finish()V

    .line 322
    :goto_0
    iput v7, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mCurrentTry:I

    .line 324
    iget-boolean v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mPingStarted:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;

    if-eqz v5, :cond_1

    .line 325
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mSendHeartbeat:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mHeartbeatHandler:Landroid/os/Handler;

    .line 328
    iput-boolean v7, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mPingStarted:Z

    .line 330
    .end local v0           #activityType:Ljava/lang/String;
    .end local v1           #connectClient:Lcom/logitech/connect/ConnectClient;
    .end local v2           #currentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v3           #hubId:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 316
    .restart local v0       #activityType:Ljava/lang/String;
    .restart local v1       #connectClient:Lcom/logitech/connect/ConnectClient;
    .restart local v2       #currentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .restart local v3       #hubId:Ljava/lang/String;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_3
    const v5, 0x7f060026

    invoke-virtual {p0, v5}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->showAlertDialog(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected displayLoading()V
    .locals 6

    .prologue
    .line 159
    sget-object v4, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 165
    iget-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mOneTouchContentCategory:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->completeLoading()V

    .line 214
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mOneTouchContentCategory:Ljava/lang/String;

    const-string v5, "channels"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    iget-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {v4}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getOneTouchManager(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/OneTouchManager;

    move-result-object v4

    sget-object v5, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDefaultActivity(Landroid/content/Context;Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v1

    .line 172
    .local v1, defaultActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    iget-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v0

    .line 173
    .local v0, currentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VirtualTelevisionN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WatchGTV"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->completeLoading()V

    .line 181
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->launchOneTouchContent()V

    goto :goto_0

    .line 183
    :cond_2
    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->startActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    goto :goto_0

    .line 186
    .end local v0           #currentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v1           #defaultActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_3
    iget-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mOneTouchContentCategory:Ljava/lang/String;

    const-string v5, "activities"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 188
    iget-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->getDefaultActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v1

    .line 190
    .restart local v1       #defaultActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    iget-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v0

    .line 192
    .restart local v0       #currentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 194
    :cond_4
    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->startActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    goto/16 :goto_0

    .line 196
    :cond_5
    const v4, 0x7f03005c

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->setContentView(I)V

    .line 197
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->launchOneTouchContent()V

    goto/16 :goto_0

    .line 201
    .end local v0           #currentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v1           #defaultActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_6
    iget-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v0

    .line 202
    .restart local v0       #currentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 203
    .local v2, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v4, "screen"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mLauncherParameter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 207
    :cond_7
    iget-object v4, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mLauncherParameter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->find(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v3

    .line 209
    .local v3, selectedActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-direct {p0, v3}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->startActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    goto/16 :goto_0

    .line 211
    .end local v3           #selectedActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_8
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->completeLoading()V

    goto/16 :goto_0
.end method

.method public launchOneTouchContent()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 381
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v4

    .line 383
    .local v4, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mOneTouchContentCategory:Ljava/lang/String;

    const-string v6, "applications"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mOneTouchContentCategory:Ljava/lang/String;

    const-string v6, "bookmarks"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 385
    :cond_0
    const-string v5, "item"

    iget-object v6, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v5, "screen"

    invoke-virtual {v4, v5, v7}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v3, Lcom/logitech/connect/client/transport/NameValuePairs;

    invoke-direct {v3}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>()V

    .line 394
    .local v3, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v5, "actionId"

    iget-object v6, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mLauncherParameter:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 395
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v5

    const-string v6, "vnd.logitech.gtv/vnd.logitech.liveFolder?render"

    invoke-virtual {v3}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/logitech/harmonylink/context/StartHarmonyActivity$4;

    invoke-direct {v8, p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity$4;-><init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 478
    .end local v3           #pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mOneTouchContentCategory:Ljava/lang/String;

    const-string v6, "shortcuts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 427
    const-string v5, "item"

    iget-object v6, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 430
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "guide"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android menu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dvr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "home"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 434
    :cond_3
    const-string v5, "screen"

    const-string v6, "dpadcontrols"

    invoke-virtual {v4, v5, v6}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_1
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v6, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v2

    .line 458
    .local v2, irCmd:Lcom/logitech/harmonylink/harmony/Command;
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    if-eqz v5, :cond_4

    .line 459
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v5, v2}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 461
    :cond_4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 462
    .local v1, handler:Landroid/os/Handler;
    new-instance v5, Lcom/logitech/harmonylink/context/StartHarmonyActivity$5;

    invoke-direct {v5, p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity$5;-><init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 436
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #irCmd:Lcom/logitech/harmonylink/harmony/Command;
    :cond_5
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gtvsearch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 437
    const-string v5, "screen"

    const-string v6, "keyboard"

    invoke-virtual {v4, v5, v6}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 439
    :cond_6
    const-string v5, "screen"

    invoke-virtual {v4, v5, v7}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 443
    :cond_7
    const-string v5, "screen"

    invoke-virtual {v4, v5, v7}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 472
    :cond_8
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mOneTouchContentCategory:Ljava/lang/String;

    const-string v6, "channels"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "channel number"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, channelNumber:Ljava/lang/String;
    iget-object v5, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v5, v0}, Lcom/logitech/harmonylink/harmony/Dom;->fireChannelCommand(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->completeLoading()V

    goto/16 :goto_0
.end method

.method public loadStartActivityScreen(Ljava/lang/String;)V
    .locals 11
    .parameter "activityName"

    .prologue
    .line 245
    const v8, 0x7f030002

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->setContentView(I)V

    .line 247
    sget-object v8, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v8, v8, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "82"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 248
    const v8, 0x7f070014

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 249
    .local v1, brandingImage:Landroid/widget/ImageView;
    const v8, 0x7f020139

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    .end local v1           #brandingImage:Landroid/widget/ImageView;
    :cond_0
    const v8, 0x7f070015

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 254
    .local v7, view:Landroid/widget/ImageView;
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mImagePath:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mImageHash:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 257
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 258
    .local v5, image:Landroid/graphics/Bitmap;
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v5           #image:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    move-object v2, p1

    .line 271
    .local v2, displayText:Ljava/lang/String;
    const v8, 0x7f070013

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    .local v0, activity:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void

    .line 259
    .end local v0           #activity:Landroid/widget/TextView;
    .end local v2           #displayText:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 260
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    iget-object v8, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mImageHash:Ljava/lang/String;

    const-string v9, "resource:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 263
    iget-object v8, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mImageHash:Ljava/lang/String;

    iget-object v9, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mImageHash:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, resourceId:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onActivityStartEvent(ZIZ)V
    .locals 4
    .parameter "starting"
    .parameter "percentComplete"
    .parameter "started"

    .prologue
    const/4 v3, 0x0

    .line 358
    if-eqz p3, :cond_0

    .line 359
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mOneTouchContentCategory:Ljava/lang/String;

    const-string v2, "activities"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 360
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->launchOneTouchContent()V

    .line 368
    :cond_0
    :goto_0
    if-nez p3, :cond_2

    if-nez p1, :cond_2

    .line 369
    iget-boolean v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mIsAlertShown:Z

    if-nez v1, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->finish()V

    .line 372
    :cond_1
    sget-object v1, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "82"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 373
    const v1, 0x7f060031

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 378
    :cond_2
    :goto_1
    return-void

    .line 362
    :cond_3
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 363
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v1, "screen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->completeLoading()V

    goto :goto_0

    .line 375
    .end local v0           #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_4
    const v1, 0x7f060032

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 341
    const-class v0, Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->openActivityForResult(Ljava/lang/Class;)V

    .line 342
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, mExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 111
    const-string v1, "launcher_param"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mLauncherParameter:Ljava/lang/String;

    .line 112
    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mOneTouchContentCategory:Ljava/lang/String;

    .line 113
    const-string v1, "image_hash"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mImageHash:Ljava/lang/String;

    .line 114
    const-string v1, "image_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mImagePath:Ljava/lang/String;

    .line 115
    const-string v1, "content_label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mContentLabel:Ljava/lang/String;

    .line 118
    :cond_0
    sget-object v1, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    new-instance v2, Lcom/logitech/harmonylink/context/StartHarmonyActivity$3;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity$3;-><init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addOneShotServiceStartObserver(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 574
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 575
    sget-object v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V

    .line 576
    sget-object v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->removeTrackPadObservers()V

    .line 578
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 579
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->clearActivityStartObserver()V

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 581
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
    .line 151
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-ne p1, v0, :cond_0

    .line 152
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mIsAlertShown:Z

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->finish()V

    .line 155
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 501
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->isActivityStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->finish()V

    .line 510
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 563
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 564
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 569
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onStop()V

    .line 570
    return-void
.end method

.method protected reloadControls()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, currentActivityName:Ljava/lang/String;
    const v1, 0x7f060022

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Z)V
    .locals 1
    .parameter "detailedMessage"
    .parameter "isActivitySwitcherOff"

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mIsAlertShown:Z

    .line 147
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method protected skip()V
    .locals 0

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->completeLoading()V

    .line 347
    return-void
.end method

.method protected startOneTouch()V
    .locals 2

    .prologue
    .line 137
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->showAlertDialog(Ljava/lang/String;Z)V

    .line 138
    return-void
.end method
