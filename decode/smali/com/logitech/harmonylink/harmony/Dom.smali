.class public Lcom/logitech/harmonylink/harmony/Dom;
.super Ljava/lang/Object;
.source "Dom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KEYBOARD_BUFFER_SIZE:I = 0x20

.field protected static final LOG_TAG:Ljava/lang/String; = null

.field private static final mActivityId:Ljava/lang/String; = "activityId"

.field private static final mActivityIdKa1x:Ljava/lang/String; = "id"


# instance fields
.field private isUpdating:Z

.field private mActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

.field private mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

.field private mApplicationContext:Landroid/content/Context;

.field private mConfigHashRespHandler:Lcom/logitech/connect/client/transport/IResponseHandler;

.field private mConnectClient:Lcom/logitech/connect/ConnectClient;

.field private final mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

.field private mCurrentAction:Ljava/lang/String;

.field private mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

.field private mCurrentViewingActivity:Ljava/lang/String;

.field private mDevices:Lcom/logitech/harmonylink/harmony/Devices;

.field private mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;

.field private mHasPowerOffReturned:Z

.field private mHasPowerOffStarted:Z

.field private mHasPoweredOffByCurrentClient:Z

.field private mHash:Ljava/lang/String;

.field public mInitialized:Z

.field private mKeyboardBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdated:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/IDomObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOliveConfigHash:Ljava/lang/String;

.field private mOliveFwVersion:Ljava/lang/String;

.field private mOnConfigChanged:Lcom/logitech/connect/client/transport/IEventMessageHandler;

.field private mPartiallyConfiguredActivityIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/IDomObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestActivities:Lcom/logitech/connect/client/transport/IOpenApiRequest;

.field private mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

.field private mServerIdentity:Ljava/lang/String;

.field private mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

.field private mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

.field public mSetupRequired:Z

.field private mStartActivityRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

.field private mUpdateNeeded:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/logitech/harmonylink/harmony/Dom;->$assertionsDisabled:Z

    .line 35
    const-class v0, Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/harmony/Dom;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;Lcom/logitech/harmonylink/harmony/IDomObserver;)V
    .locals 3
    .parameter "connectClient"
    .parameter "setupNeededObserver"
    .parameter "domObserver"

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupRequired:Z

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mKeyboardBuffer:Ljava/util/Queue;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mPartiallyConfiguredActivityIds:Ljava/util/ArrayList;

    .line 68
    iput-boolean v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPoweredOffByCurrentClient:Z

    .line 100
    new-instance v0, Lcom/logitech/harmonylink/harmony/Dom$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom$1;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConfigHashRespHandler:Lcom/logitech/connect/client/transport/IResponseHandler;

    .line 144
    new-instance v0, Lcom/logitech/harmonylink/harmony/Dom$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom$2;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mOnConfigChanged:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    .line 224
    new-instance v0, Lcom/logitech/harmonylink/harmony/Dom$3;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom$3;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

    .line 73
    iput-object p3, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mObservers:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mRemoveObserver:Ljava/util/ArrayList;

    .line 76
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mObservers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

    .line 80
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 81
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/Dom;->clear()V

    .line 83
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.harmony/vnd.logitech.config?change"

    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mOnConfigChanged:Lcom/logitech/connect/client/transport/IEventMessageHandler;

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/ConnectClient;->putEventMessageHandler(Ljava/lang/String;Lcom/logitech/connect/client/transport/IEventMessageHandler;)V

    .line 87
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getConnected()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/Dom;->onConnectedAndAuthorized()V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->addObserver(Lcom/logitech/connect/IConnectClientObserver;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/harmony/Dom;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mOliveConfigHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/harmony/Dom;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/harmony/Dom;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mKeyboardBuffer:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mStartActivityRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/IActivityStartObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/logitech/harmonylink/harmony/Dom;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/logitech/harmonylink/harmony/Dom;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/logitech/harmonylink/harmony/Dom;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffReturned:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    return-object p1
.end method

.method static synthetic access$202(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/pairing/SetupActivityResponseHandler;)Lcom/logitech/connect/pairing/SetupActivityResponseHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/logitech/harmonylink/harmony/Dom;->next()V

    return-void
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    return-object v0
.end method

.method static synthetic access$502(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    return-object p1
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/Devices;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    return-object v0
.end method

.method static synthetic access$602(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Devices;)Lcom/logitech/harmonylink/harmony/Devices;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    return-object p1
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/connect/ConnectClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    return-object v0
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/logitech/harmonylink/harmony/Dom;->setDisplayDeviceOn()V

    return-void
.end method

.method static synthetic access$902(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    return-object p1
.end method

.method private getOliveFirmwareVersion()V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.harmony/vnd.logitech.harmony.system?systeminfo"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/harmony/Dom$8;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/harmony/Dom$8;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 445
    return-void
.end method

.method private next()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/harmony/Dom;->next(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method private setDisplayDeviceOn()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.harmony/vnd.logitech.harmony.engine?setDisplayDeviceOn"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/harmony/Dom$7;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/harmony/Dom$7;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 418
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public cancelSetup()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    invoke-virtual {v0}, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->cancel()V

    .line 286
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupRequired:Z

    .line 163
    new-instance v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    .line 164
    new-instance v0, Lcom/logitech/harmonylink/harmony/Devices;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/Devices;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    .line 165
    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mServerIdentity:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mInitialized:Z

    .line 168
    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mRequestActivities:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 169
    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    .line 170
    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mOliveConfigHash:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public clearActivityStartObserver()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    .line 206
    return-void
.end method

.method public clearObservers()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mObservers:Ljava/util/ArrayList;

    .line 187
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mObservers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    return-void
.end method

.method public fireChannelCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "channelnumber"

    .prologue
    .line 931
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 933
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "channel"

    invoke-direct {v0, v1, p1}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .local v0, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v2, "vnd.logitech.harmony/vnd.logitech.harmony.engine?changeChannel"

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/logitech/harmonylink/harmony/Dom$16;

    invoke-direct {v4, p0}, Lcom/logitech/harmonylink/harmony/Dom$16;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 947
    return-void
.end method

.method public getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    return-object v0
.end method

.method public getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "commandId"

    .prologue
    .line 854
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getCommand(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    .line 857
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectClient()Lcom/logitech/connect/ConnectClient;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    return-object v0
.end method

.method public getCurrentActivityFromKa()V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.harmony/vnd.logitech.harmony.engine?getCurrentActivity"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/harmony/Dom$9;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/harmony/Dom$9;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 493
    return-void
.end method

.method public getCurrentViewingActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentViewingActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Device;
    .locals 3
    .parameter "deviceId"

    .prologue
    .line 846
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Devices;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Device;

    .line 847
    .local v0, d:Lcom/logitech/harmonylink/harmony/Device;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Device;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 850
    .end local v0           #d:Lcom/logitech/harmonylink/harmony/Device;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDevices()Lcom/logitech/harmonylink/harmony/Devices;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    return-object v0
.end method

.method public getFirmwareUpdateNeeded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mUpdateNeeded:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSetupNeeded()Z
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupRequired:Z

    return v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mLastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getOliveFwVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mOliveFwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPartiallyConfiguredActivityIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mPartiallyConfiguredActivityIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportPhoneNumber()V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.cs/vnd.logitech.cs.phone"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/harmony/Dom$4;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/harmony/Dom$4;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 279
    return-void
.end method

.method public hasPowerOffReturned()Z
    .locals 1

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffReturned:Z

    return v0
.end method

.method public hasPowerOffStarted()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z

    return v0
.end method

.method public hasPoweredOffByCurrentClient()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPoweredOffByCurrentClient:Z

    return v0
.end method

.method public hashCheckForOlive(Lcom/logitech/connect/client/transport/IResponseHandler;)V
    .locals 3
    .parameter "responseHandler"

    .prologue
    .line 136
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConfigHashRespHandler:Lcom/logitech/connect/client/transport/IResponseHandler;

    move-object p1, v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.harmony/vnd.logitech.harmony.engine?getConfigHash"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 142
    return-void
.end method

.method public isActivityStarting()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mStartActivityRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mRequestActivities:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mInitialized:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 350
    :cond_0
    const-string v0, "82"

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/logitech/harmonylink/harmony/Dom;->getOliveFirmwareVersion()V

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getInstance(Ljava/lang/String;)Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v1

    const-string v2, "getUserConfig"

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/harmony/Dom$6;

    invoke-direct {v3, p0, p1}, Lcom/logitech/harmonylink/harmony/Dom$6;-><init>(Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mRequestActivities:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_2
    const-string v0, "sync"

    const-string v1, "calling failed..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConnectedAndAuthorized()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getServerIdentity()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, serverIdentity:Ljava/lang/String;
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mServerIdentity:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mServerIdentity:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupRequired:Z

    if-eqz v1, :cond_2

    .line 242
    :cond_0
    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mServerIdentity:Ljava/lang/String;

    .line 247
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mInitialized:Z

    .line 254
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Revue 2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/Dom;->refresh()V

    .line 260
    :cond_2
    return-void
.end method

.method public onDomChanged(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, class1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->isUpdating:Z

    .line 497
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/IDomObserver;

    .line 498
    .local v1, o:Lcom/logitech/harmonylink/harmony/IDomObserver;
    invoke-interface {v1, p1}, Lcom/logitech/harmonylink/harmony/IDomObserver;->onDomUpdated(Ljava/lang/Class;)V

    goto :goto_0

    .line 500
    .end local v1           #o:Lcom/logitech/harmonylink/harmony/IDomObserver;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->isUpdating:Z

    .line 502
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupRequired:Z

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Revue 2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    new-instance v2, Lcom/logitech/harmonylink/harmony/Dom$5;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/harmony/Dom$5;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;-><init>(Lcom/logitech/connect/ConnectClient;Lcom/logitech/connect/pairing/SetupActivityResponseObserver;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    .line 334
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSetupActivityResponseHandler:Lcom/logitech/connect/pairing/SetupActivityResponseHandler;

    invoke-virtual {v0}, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->start()V

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    invoke-direct {p0}, Lcom/logitech/harmonylink/harmony/Dom;->next()V

    goto :goto_0
.end method

.method public removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->isUpdating:Z

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mRemoveObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public retry()V
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/Dom;->refresh()V

    .line 290
    return-void
.end method

.method public send2xCancelCommand()Z
    .locals 4

    .prologue
    .line 725
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentAction:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 726
    :cond_0
    const/4 v1, 0x0

    .line 731
    :goto_0
    return v1

    .line 727
    :cond_1
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "action"

    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentAction:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .local v0, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v1, "status"

    const-string v2, "release"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 729
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->continueRequest(Lcom/logitech/connect/client/transport/IOpenApiRequest;Ljava/lang/String;)V

    .line 730
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 731
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public sendCancelCommand()Z
    .locals 4

    .prologue
    .line 735
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-nez v1, :cond_0

    .line 736
    const/4 v1, 0x0

    .line 740
    :goto_0
    return v1

    .line 737
    :cond_0
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "method"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .local v0, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->continueRequest(Lcom/logitech/connect/client/transport/IOpenApiRequest;Ljava/lang/String;)V

    .line 740
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public sendIrCommandHeartbeat()Z
    .locals 4

    .prologue
    .line 744
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-nez v1, :cond_0

    .line 745
    const/4 v1, 0x0

    .line 749
    :goto_0
    return v1

    .line 746
    :cond_0
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "method"

    const-string v2, "heartbeat"

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .local v0, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->continueRequest(Lcom/logitech/connect/client/transport/IOpenApiRequest;Ljava/lang/String;)V

    .line 749
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public sendIrCommandHold()Z
    .locals 4

    .prologue
    .line 753
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-nez v1, :cond_0

    .line 754
    const/4 v1, 0x0

    .line 759
    :goto_0
    return v1

    .line 756
    :cond_0
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "action"

    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentAction:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .local v0, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v1, "status"

    const-string v2, "hold"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 758
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->continueRequest(Lcom/logitech/connect/client/transport/IOpenApiRequest;Ljava/lang/String;)V

    .line 759
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setActivityStartObserver(Lcom/logitech/harmonylink/harmony/IActivityStartObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    .line 202
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mApplicationContext:Landroid/content/Context;

    .line 218
    return-void
.end method

.method public setCurrentActivity(Ljava/lang/String;)V
    .locals 1
    .parameter "activityId"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->find(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 510
    return-void
.end method

.method public setCurrentViewingActivity(Ljava/lang/String;)V
    .locals 0
    .parameter "currentViewingActivity"

    .prologue
    .line 902
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentViewingActivity:Ljava/lang/String;

    .line 903
    return-void
.end method

.method public setHasPowerOffReturned(Z)V
    .locals 0
    .parameter "hasPowerOffReturned"

    .prologue
    .line 918
    iput-boolean p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffReturned:Z

    .line 919
    return-void
.end method

.method public setHasPowerOffStarted(Z)V
    .locals 0
    .parameter "hasPowerOffStarted"

    .prologue
    .line 910
    iput-boolean p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z

    .line 911
    return-void
.end method

.method public setHasPoweredOffByCurrentClient(Z)V
    .locals 0
    .parameter "hasPoweredOffByDifferentClient"

    .prologue
    .line 927
    iput-boolean p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPoweredOffByCurrentClient:Z

    .line 928
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHash:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 0
    .parameter "lastUpdated"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mLastUpdated:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public setOliveFwVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "mOliveFwVersion"

    .prologue
    .line 954
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mOliveFwVersion:Ljava/lang/String;

    .line 955
    return-void
.end method

.method public setOliveHash(Ljava/lang/String;)V
    .locals 0
    .parameter "oliveHash"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mOliveConfigHash:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public startBrowser()Z
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 550
    :goto_0
    return v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.launcher/vnd.google.browser"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/harmony/Dom$10;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/harmony/Dom$10;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 550
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startLogitechActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 768
    const/4 v1, 0x0

    .line 769
    .local v1, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const/4 v0, 0x0

    .line 771
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 772
    const-string v0, "id"

    .line 777
    :goto_0
    if-nez p1, :cond_2

    .line 778
    new-instance v1, Lcom/logitech/connect/client/transport/NameValuePairs;

    .end local v1           #pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v2, "-1"

    invoke-direct {v1, v0, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .restart local v1       #pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    iput-boolean v7, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffStarted:Z

    .line 780
    iput-boolean v6, p0, Lcom/logitech/harmonylink/harmony/Dom;->mHasPowerOffReturned:Z

    .line 785
    :goto_1
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getInstance(Ljava/lang/String;)Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/logitech/harmonylink/harmony/Dom$15;

    invoke-direct {v5, p0, p1}, Lcom/logitech/harmonylink/harmony/Dom$15;-><init>(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mStartActivityRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 839
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    if-eqz v2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mActivityStartObserver:Lcom/logitech/harmonylink/harmony/IActivityStartObserver;

    invoke-interface {v2, v7, v6, v6}, Lcom/logitech/harmonylink/harmony/IActivityStartObserver;->onActivityStartEvent(ZIZ)V

    .line 843
    :cond_0
    return-void

    .line 774
    :cond_1
    const-string v0, "activityId"

    goto :goto_0

    .line 782
    :cond_2
    new-instance v1, Lcom/logitech/connect/client/transport/NameValuePairs;

    .end local v1           #pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    goto :goto_1
.end method

.method public startPowerOffActivity()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/harmony/Dom;->startLogitechActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 264
    return-void
.end method

.method public startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V
    .locals 5
    .parameter "command"

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 670
    :goto_0
    return-void

    .line 653
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 654
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mCurrentAction:Ljava/lang/String;

    .line 655
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "status"

    const-string v2, "press"

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .local v0, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v1, "action"

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 658
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v2, "vnd.logitech.harmony/vnd.logitech.harmony.engine?holdAction"

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/logitech/harmonylink/harmony/Dom$12;

    invoke-direct {v4, p0}, Lcom/logitech/harmonylink/harmony/Dom$12;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    goto :goto_0
.end method

.method public startSendCommand(Lcom/logitech/harmonylink/harmony/Command;)Z
    .locals 1
    .parameter "command"

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;Z)Z

    move-result v0

    return v0
.end method

.method public startSendCommand(Lcom/logitech/harmonylink/harmony/Command;Z)Z
    .locals 1
    .parameter "command"
    .parameter "hold"

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;ZI)Z

    move-result v0

    return v0
.end method

.method public startSendCommand(Lcom/logitech/harmonylink/harmony/Command;ZI)Z
    .locals 1
    .parameter "command"
    .parameter "hold"
    .parameter "modifier"

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;ZIZ)Z

    move-result v0

    return v0
.end method

.method public startSendCommand(Lcom/logitech/harmonylink/harmony/Command;ZIZ)Z
    .locals 9
    .parameter "command"
    .parameter "hold"
    .parameter "modifier"
    .parameter "getCommandFromBuffer"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 565
    sget-boolean v4, Lcom/logitech/harmonylink/harmony/Dom;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    if-eqz p4, :cond_1

    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom;->mKeyboardBuffer:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 568
    :cond_0
    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v4, :cond_3

    .line 569
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->isKeyboardCommand()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom;->mKeyboardBuffer:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    const/16 v5, 0x20

    if-gt v4, v5, :cond_2

    .line 572
    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom;->mKeyboardBuffer:Ljava/util/Queue;

    new-instance v5, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;-><init>(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;ZI)V

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v4, v8

    .line 645
    :goto_0
    return v4

    .line 565
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_2
    move v4, v6

    .line 578
    goto :goto_0

    .line 583
    :cond_3
    if-eqz p4, :cond_4

    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom;->mKeyboardBuffer:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 585
    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom;->mKeyboardBuffer:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;

    .line 587
    .local v0, commandItem:Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->getCommand()Lcom/logitech/harmonylink/harmony/Command;

    move-result-object p1

    .line 588
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->getHold()Z

    move-result p2

    .line 589
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->getModifier()I

    move-result p3

    .line 592
    .end local v0           #commandItem:Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;
    :cond_4
    new-instance v3, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v4, "method"

    const-string v5, "start"

    invoke-direct {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v3, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v4, "hold"

    if-eqz p2, :cond_6

    const-string v5, "true"

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 594
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->isNormalizedCommand()Z

    move-result v4

    move v2, v4

    .line 596
    .local v2, normalized:Z
    :goto_2
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->isKeyboardCommand()Z

    move-result v4

    move v1, v4

    .line 599
    .local v1, keyboard:Z
    :goto_3
    if-eqz v2, :cond_9

    .line 600
    const-string v4, "commandType"

    const-string v5, "normalized"

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 601
    const-string v4, "command"

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getNormalizedCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 615
    :cond_5
    :goto_4
    const-string v4, "modifier"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 616
    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v5, "vnd.logitech.harmony/vnd.logitech.command?startCommand"

    invoke-virtual {v3}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/logitech/harmonylink/harmony/Dom$11;

    invoke-direct {v7, p0}, Lcom/logitech/harmonylink/harmony/Dom$11;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move v4, v8

    .line 645
    goto :goto_0

    .line 593
    .end local v1           #keyboard:Z
    .end local v2           #normalized:Z
    :cond_6
    const-string v5, "false"

    goto :goto_1

    :cond_7
    move v2, v6

    .line 594
    goto :goto_2

    .restart local v2       #normalized:Z
    :cond_8
    move v1, v6

    .line 596
    goto :goto_3

    .line 602
    .restart local v1       #keyboard:Z
    :cond_9
    if-eqz v1, :cond_a

    .line 603
    const-string v4, "commandType"

    const-string v5, "keyboard"

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 604
    const-string v4, "command"

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    goto :goto_4

    .line 605
    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getDevice()Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 606
    const-string v4, "deviceId"

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getDevice()Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Device;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 607
    const-string v4, "commandType"

    const-string v5, "device"

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 608
    const-string v4, "command"

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    goto :goto_4

    .line 609
    :cond_b
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 610
    const-string v4, "activityId"

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 611
    const-string v4, "commandType"

    const-string v5, "activity"

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 612
    const-string v4, "command"

    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    goto/16 :goto_4
.end method

.method public startSendFixitCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "deviceId"
    .parameter "state"
    .parameter "value"

    .prologue
    .line 674
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 676
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "deviceId"

    invoke-direct {v0, v1, p1}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    .local v0, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 678
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 679
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v2, "vnd.logitech.harmony/vnd.logitech.harmony.engine?helpSync"

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/logitech/harmonylink/harmony/Dom$13;

    invoke-direct {v4, p0}, Lcom/logitech/harmonylink/harmony/Dom$13;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 691
    return-void
.end method

.method public startSendKeyboardCommandFromBuffer()Z
    .locals 4

    .prologue
    .line 525
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;ZIZ)Z

    move-result v0

    return v0
.end method

.method public startSendtext(Ljava/lang/String;I)Z
    .locals 6
    .parameter "text"
    .parameter "modifier"

    .prologue
    .line 695
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v2, :cond_0

    .line 696
    const/4 v2, 0x0

    .line 720
    :goto_0
    return v2

    .line 698
    :cond_0
    new-instance v1, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v2, "method"

    const-string v3, "stringinject"

    invoke-direct {v1, v2, v3}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .local v1, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, encodedtext:Ljava/lang/String;
    const-string v2, "string"

    invoke-virtual {v1, v2, v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 703
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v3, "vnd.logitech.harmony/vnd.logitech.command?sendString"

    invoke-virtual {v1}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/logitech/harmonylink/harmony/Dom$14;

    invoke-direct {v5, p0}, Lcom/logitech/harmonylink/harmony/Dom$14;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 720
    const/4 v2, 0x1

    goto :goto_0
.end method
