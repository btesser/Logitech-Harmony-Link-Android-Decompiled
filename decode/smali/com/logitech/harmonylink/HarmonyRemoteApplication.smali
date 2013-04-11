.class public Lcom/logitech/harmonylink/HarmonyRemoteApplication;
.super Landroid/app/Application;
.source "HarmonyRemoteApplication.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mEventTrackService:Lcom/logitech/harmonylink/service/EventTrackService;


# instance fields
.field public mConnectClient:Lcom/logitech/connect/ConnectClient;

.field private final mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

.field private mConnectionState:I

.field private mDiscoveryServiceUrl:Ljava/lang/String;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private final mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;

.field private mErrorCode:I

.field private mErrorState:Z

.field private mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

.field private mHarmonyCommunicator:Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;

.field private mHarmonyLinkUID:Ljava/lang/String;

.field private mHasConfigInstalled:Z

.field private mHasTriggeredSync:Z

.field private mIsManufacturingConfig:Z

.field private mKeyboard:Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

.field public mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

.field private mLastToast:Landroid/widget/Toast;

.field private mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;

.field private mOnActivityStarted:Lcom/logitech/connect/client/transport/IEventMessageHandler;

.field private mOnSyncDidReset:Lcom/logitech/connect/client/transport/IEventMessageHandler;

.field private mOneShotServiceStartObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

.field private mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

.field private final mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

.field public mStartTime:J

.field private mSyncBroadcastHarmonyRemoteApp:Lcom/logitech/connect/client/transport/IEventMessageHandler;

.field private mSyncSource:Ljava/lang/String;

.field private mSyncStateObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/common/ISyncStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackpadObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/context/ITrackPadSensitivityChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionMessageHandler:Lcom/logitech/connect/client/transport/IEventMessageHandler;

.field private mVoiceSearchObserver:Lcom/logitech/harmonylink/softkeyboard/IVoiceSearchObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mErrorCode:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOneShotServiceStartObserverList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mTrackpadObservers:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$2;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

    .line 183
    new-instance v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$3;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$3;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;

    .line 202
    new-instance v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$4;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$4;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

    .line 228
    new-instance v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$5;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;

    .line 340
    new-instance v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$7;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$7;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncBroadcastHarmonyRemoteApp:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    .line 363
    new-instance v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOnSyncDidReset:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    .line 402
    new-instance v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOnActivityStarted:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    .line 462
    new-instance v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$10;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$10;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mVersionMessageHandler:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    .line 515
    new-instance v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectionState:I

    return v0
.end method

.method static synthetic access$002(Lcom/logitech/harmonylink/HarmonyRemoteApplication;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectionState:I

    return p1
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mErrorState:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/ILoginFailObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mErrorState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/client/transport/IEventMessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOnActivityStarted:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/client/transport/IEventMessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOnSyncDidReset:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/client/transport/IEventMessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncBroadcastHarmonyRemoteApp:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOneShotServiceStartObserverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasTriggeredSync:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasConfigInstalled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasConfigInstalled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setNotice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/logitech/harmonylink/HarmonyRemoteApplication;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mErrorCode:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method static synthetic access$402(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/Dom;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object p1
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/IGlobalResponseObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/client/transport/IEventMessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mVersionMessageHandler:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/IDomObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/IConnectClientObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

    return-object v0
.end method

.method private setNotice(Ljava/lang/String;)V
    .locals 1
    .parameter "what"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->setNotice(Ljava/lang/String;)V

    .line 513
    :cond_0
    return-void
.end method


# virtual methods
.method public activityOnCreate(Lcom/logitech/harmonylink/ui/common/BaseActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    .line 128
    return-void
.end method

.method public addOneShotServiceStartObserver(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOneShotServiceStartObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSyncStateObserver(Lcom/logitech/harmonylink/common/ISyncStateObserver;)V
    .locals 1
    .parameter "syncStateObserver"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addTrackPadObservers(Lcom/logitech/harmonylink/context/ITrackPadSensitivityChangedEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mTrackpadObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public clearVoiceSearchObservers()V
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mVoiceSearchObserver:Lcom/logitech/harmonylink/softkeyboard/IVoiceSearchObserver;

    .line 648
    return-void
.end method

.method public createHarmonyCommunicator()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHarmonyCommunicator:Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;

    invoke-direct {v0}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHarmonyCommunicator:Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;

    .line 674
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public createVoiceSearchObserver(Lcom/logitech/harmonylink/softkeyboard/IVoiceSearchObserver;)V
    .locals 0
    .parameter "voiceSearchObserver"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mVoiceSearchObserver:Lcom/logitech/harmonylink/softkeyboard/IVoiceSearchObserver;

    .line 644
    return-void
.end method

.method public getConnectClient()Lcom/logitech/connect/ConnectClient;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    return-object v0
.end method

.method public getConnectionState()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectionState:I

    return v0
.end method

.method public getDiscoveryServiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDiscoveryServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDom()Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mErrorCode:I

    return v0
.end method

.method public getEventTracker()Lcom/logitech/harmonylink/service/EventTrackService;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mEventTrackService:Lcom/logitech/harmonylink/service/EventTrackService;

    return-object v0
.end method

.method public getHarmonyCommunicator()Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHarmonyCommunicator:Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;

    return-object v0
.end method

.method public getHarmonyLinkID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHarmonyLinkUID:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mKeyboard:Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    return-object v0
.end method

.method public getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/logitech/connect/pairing/PairingResponseHandler;

    new-instance v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$1;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    invoke-direct {v0, v1}, Lcom/logitech/connect/pairing/PairingResponseHandler;-><init>(Lcom/logitech/connect/pairing/IPairingClientCoordinator;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mPairingHandler:Lcom/logitech/connect/pairing/PairingResponseHandler;

    return-object v0
.end method

.method public getRemoteConnect()Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    return-object v0
.end method

.method public getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getInstance(Ljava/lang/String;)Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v0

    return-object v0
.end method

.method public getSyncSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncSource:Ljava/lang/String;

    return-object v0
.end method

.method public googleApiWriteFail()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    :cond_0
    const v0, 0x7f0600c1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setNotice(Ljava/lang/String;)V

    .line 591
    :goto_0
    return-void

    .line 590
    :cond_1
    const v0, 0x7f0600c2

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setNotice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasConfigInstalled()Z
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasConfigInstalled:Z

    return v0
.end method

.method public hasTriggeredSync()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasTriggeredSync:Z

    return v0
.end method

.method public isManufacturingConfig()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mIsManufacturingConfig:Z

    return v0
.end method

.method public notifySyncStateObservers(Ljava/lang/String;)V
    .locals 3
    .parameter "syncState"

    .prologue
    .line 119
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/common/ISyncStateObserver;

    .line 121
    .local v1, syncStateObserver:Lcom/logitech/harmonylink/common/ISyncStateObserver;
    invoke-interface {v1, p1}, Lcom/logitech/harmonylink/common/ISyncStateObserver;->onSyncStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #syncStateObserver:Lcom/logitech/harmonylink/common/ISyncStateObserver;
    :cond_0
    return-void
.end method

.method public notifyTrackPadObservers(DD)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mTrackpadObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/context/ITrackPadSensitivityChangedEvent;

    .line 95
    .local v1, mEvent:Lcom/logitech/harmonylink/context/ITrackPadSensitivityChangedEvent;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/logitech/harmonylink/context/ITrackPadSensitivityChangedEvent;->onSensitivtyAdjusted(DD)V

    goto :goto_0

    .line 97
    .end local v1           #mEvent:Lcom/logitech/harmonylink/context/ITrackPadSensitivityChangedEvent;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mStartTime:J

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/logitech/connect/ConnectClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 274
    new-instance v1, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    invoke-direct {v1}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mKeyboard:Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    .line 276
    new-instance v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 335
    new-instance v1, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;-><init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V

    iput-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    .line 336
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 338
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 503
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 504
    return-void
.end method

.method public removeOneShotServiceStartObserver(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOneShotServiceStartObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method public removeSyncStateObserver(Lcom/logitech/harmonylink/common/ISyncStateObserver;)V
    .locals 2
    .parameter "syncStateObserver"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v0

    .line 116
    :cond_0
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeTrackPadObservers()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mTrackpadObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    return-void
.end method

.method public resetKeyboardRelatedStuff()V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public returnToSplash()V
    .locals 2

    .prologue
    .line 618
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->disconnect()V

    .line 622
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    .local v0, splashActivity:Landroid/content/Intent;
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 626
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    if-eqz v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->clear()V

    .line 630
    :cond_1
    return-void
.end method

.method public sendKeyboardOrientationChanged(I)V
    .locals 0
    .parameter "newOrienation"

    .prologue
    .line 668
    return-void
.end method

.method public setDiscoveryServiceUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "discoveryServiceUrl"

    .prologue
    .line 705
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDiscoveryServiceUrl:Ljava/lang/String;

    .line 706
    return-void
.end method

.method public setHarmonyLinkID(Ljava/lang/String;)V
    .locals 0
    .parameter "harmonyLinkID"

    .prologue
    .line 693
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHarmonyLinkUID:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public setHasConfigInstalled(Z)V
    .locals 0
    .parameter "hasConfigInstalled"

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasConfigInstalled:Z

    .line 722
    return-void
.end method

.method public setHasTriggeredSync(Z)V
    .locals 0
    .parameter "hasTriggeredSync"

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasTriggeredSync:Z

    .line 714
    return-void
.end method

.method public setIsManufacturingConfig(Z)V
    .locals 0
    .parameter "isManufacturingConfig"

    .prologue
    .line 733
    iput-boolean p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mIsManufacturingConfig:Z

    .line 734
    return-void
.end method

.method public setSyncSource(Ljava/lang/String;)V
    .locals 0
    .parameter "syncSource"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncSource:Ljava/lang/String;

    .line 730
    return-void
.end method

.method public triggerVoiceSearch()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mVoiceSearchObserver:Lcom/logitech/harmonylink/softkeyboard/IVoiceSearchObserver;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mVoiceSearchObserver:Lcom/logitech/harmonylink/softkeyboard/IVoiceSearchObserver;

    invoke-interface {v0}, Lcom/logitech/harmonylink/softkeyboard/IVoiceSearchObserver;->initiateVoiceSearch()V

    .line 653
    :cond_0
    return-void
.end method

.method public tryGoogleApiWrite()V
    .locals 2

    .prologue
    .line 579
    iget v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->connect()V

    .line 581
    :cond_0
    return-void
.end method

.method public unPairAndReturnToSplash()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 594
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/logitech/connect/ConnectClient;->getAutoLockState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v2, v2, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v2, v2, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v2, v2, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 597
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iput-boolean v4, v2, Lcom/logitech/connect/ConnectClient;->mIsLockReleased:Z

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/logitech/connect/ConnectClient;->forgetPairing()V

    .line 600
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/logitech/connect/ConnectClient;->disconnect()V

    .line 601
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 602
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v2, "notsetupwarning"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putBoolean(Ljava/lang/String;Z)V

    .line 604
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->clear()V

    .line 605
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->clearObservers()V

    .line 607
    invoke-virtual {p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 609
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    const-class v3, Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .local v1, splashActivity:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 613
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v2, v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 615
    return-void
.end method
