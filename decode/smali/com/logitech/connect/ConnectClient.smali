.class public Lcom/logitech/connect/ConnectClient;
.super Landroid/app/Service;
.source "ConnectClient.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IConnectClient;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONNECTED_AND_AUTHORIZED:I = 0x2

.field public static final CONNECTED_AS_GUEST:I = 0x1

.field static final CONNECTION_TIMEOUT:I = 0x1d4c0

.field public static final NOT_CONNECTED:I = 0x0

.field static final OPENAPI_REV_SERVICETYPE:Ljava/lang/String; = "_logitech-reverse-bonjour._tcp.local."

.field static final OPENAPI_SERVICETYPE:Ljava/lang/String; = "_logitech-openapi._tcp.local."

.field static final PACKET_SEND_TIMEOUT:I = 0x7d0

.field static final PASSWORD:Ljava/lang/String; = ""

.field public static final PREFS:Ljava/lang/String; = "ConnectClient"

.field private static REMOTE_ID:Ljava/lang/String; = null

.field static final SERVICE:Ljava/lang/String; = "connect.logitech.com"

.field private static final TYPE_ETHERNET:I = 0x2

.field static final USER:Ljava/lang/String; = "guest"

.field private static mConnectedToSsid:Ljava/lang/String;

.field public static sInstance:Lcom/logitech/connect/ConnectClient;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAutoLockState:Z

.field mConnected:I

.field private mConnectionTimeoutCheck:Ljava/lang/Runnable;

.field private mConnectionTimeoutPending:Z

.field private mConnectivityObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/IConnectivityObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectPending:Z

.field private mDiscoveryProbe:Ljava/lang/Runnable;

.field private mDiscoveryProbePending:Z

.field private mDiscoveryServer:Lcom/logitech/connect/DiscoveryServer;

.field final mDiscoveryServerPort:I

.field mErrorCode:I

.field mErrorCondition:Z

.field private mEventMessageHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/logitech/connect/client/transport/IEventMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalResponseObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/IGlobalResponseObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mIsLockReleased:Z

.field private mKeepAlive:Z

.field private mLastPresence:J

.field private mLastWrittenPacket:J

.field private mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

.field private mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;

.field private mMainHandler:Landroid/os/Handler;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/IConnectClientObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mPasssword:Ljava/lang/String;

.field private mPasswordChanged:Z

.field private mPendingRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/logitech/connect/client/transport/IResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field public mPort:I

.field public mPowerWake:Landroid/os/PowerManager$WakeLock;

.field public mPowerman:Landroid/os/PowerManager;

.field public mServer:Ljava/lang/String;

.field public mServerIdentity:Ljava/lang/String;

.field private mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;"
        }
    .end annotation
.end field

.field public mUserName:Ljava/lang/String;

.field private mWifiAvailable:Z

.field mWifiSSID:Ljava/lang/String;

.field private mWriteTimeoutCheck:Ljava/lang/Runnable;

.field private mWriteTimeoutPending:Z

.field private mWrittenRequests:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/logitech/connect/ConnectClient;->$assertionsDisabled:Z

    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/connect/ConnectClient;->REMOTE_ID:Ljava/lang/String;

    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    const/16 v0, 0x1545

    iput v0, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryServerPort:I

    .line 81
    const-class v0, Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->LOG_TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mObservers:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mConnectivityObservers:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mWrittenRequests:Ljava/util/HashSet;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mEventMessageHandlers:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;

    .line 103
    iput v1, p0, Lcom/logitech/connect/ConnectClient;->mConnected:I

    .line 104
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mErrorCondition:Z

    .line 105
    iput v1, p0, Lcom/logitech/connect/ConnectClient;->mErrorCode:I

    .line 107
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mDisconnectPending:Z

    .line 108
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryProbePending:Z

    .line 109
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mKeepAlive:Z

    .line 110
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mPasswordChanged:Z

    .line 112
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mAutoLockState:Z

    .line 115
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mIsLockReleased:Z

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    .line 125
    iput-wide v2, p0, Lcom/logitech/connect/ConnectClient;->mLastPresence:J

    .line 126
    iput-wide v2, p0, Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J

    .line 127
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mWriteTimeoutPending:Z

    .line 128
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutPending:Z

    .line 354
    new-instance v0, Lcom/logitech/connect/ConnectClient$3;

    invoke-direct {v0, p0}, Lcom/logitech/connect/ConnectClient$3;-><init>(Lcom/logitech/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryProbe:Ljava/lang/Runnable;

    .line 693
    new-instance v0, Lcom/logitech/connect/ConnectClient$8;

    invoke-direct {v0, p0}, Lcom/logitech/connect/ConnectClient$8;-><init>(Lcom/logitech/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mWriteTimeoutCheck:Ljava/lang/Runnable;

    .line 714
    new-instance v0, Lcom/logitech/connect/ConnectClient$9;

    invoke-direct {v0, p0}, Lcom/logitech/connect/ConnectClient$9;-><init>(Lcom/logitech/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutCheck:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/connect/ConnectClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/logitech/connect/ConnectClient;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/logitech/connect/ConnectClient;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/logitech/connect/ConnectClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryProbePending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/logitech/connect/ConnectClient;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/logitech/connect/ConnectClient;->mLastPresence:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/logitech/connect/ConnectClient;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/logitech/connect/ConnectClient;->mLastPresence:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/logitech/connect/ConnectClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mWriteTimeoutPending:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/logitech/connect/ConnectClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/logitech/connect/ConnectClient;->mWriteTimeoutPending:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/logitech/connect/ConnectClient;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mWriteTimeoutCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/logitech/connect/ConnectClient;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/logitech/connect/ConnectClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutPending:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/logitech/connect/ConnectClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/logitech/connect/ConnectClient;->mConnectionTimeoutPending:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/logitech/connect/ConnectClient;)Lcom/logitech/connect/client/transport/XmppClientConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/logitech/connect/ConnectClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mKeepAlive:Z

    return v0
.end method

.method static synthetic access$200(Lcom/logitech/connect/ConnectClient;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryProbe:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/connect/ConnectClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/logitech/connect/ConnectClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/logitech/connect/ConnectClient;->mDisconnectPending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/logitech/connect/ConnectClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mEventMessageHandlers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/logitech/connect/ConnectClient;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mWrittenRequests:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/connect/ConnectClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/logitech/connect/ConnectClient;
    .locals 1

    .prologue
    .line 864
    sget-object v0, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    return-object v0
.end method

.method private isEmulator()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 341
    .local v1, man:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, devId:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 345
    .end local v0           #devId:Ljava/lang/String;
    :goto_0
    return v2

    .restart local v0       #devId:Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 343
    goto :goto_0

    .end local v0           #devId:Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 345
    goto :goto_0
.end method

.method private notifyConnectedClients()V
    .locals 3

    .prologue
    .line 475
    iget-object v2, p0, Lcom/logitech/connect/ConnectClient;->mConnectivityObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/IConnectivityObserver;

    .line 476
    .local v1, o:Lcom/logitech/connect/IConnectivityObserver;
    invoke-interface {v1}, Lcom/logitech/connect/IConnectivityObserver;->onConnectivityChange()V

    goto :goto_0

    .line 478
    .end local v1           #o:Lcom/logitech/connect/IConnectivityObserver;
    :cond_0
    return-void
.end method

.method private onConnectivityChange()V
    .locals 8

    .prologue
    .line 281
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/logitech/connect/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 284
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 288
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_5

    .line 290
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 291
    .local v2, networkType:I
    packed-switch v2, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->isEmulator()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->onWifiEstablished()V

    .line 320
    iget-object v5, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    sput-object v5, Lcom/logitech/connect/ConnectClient;->mConnectedToSsid:Ljava/lang/String;

    .line 332
    .end local v0           #activeNetInfo:Landroid/net/NetworkInfo;
    .end local v2           #networkType:I
    :cond_2
    :goto_1
    return-void

    .line 294
    .restart local v0       #activeNetInfo:Landroid/net/NetworkInfo;
    .restart local v2       #networkType:I
    :pswitch_0
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/logitech/connect/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 295
    .local v3, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 297
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    .line 298
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    .line 299
    iget-object v5, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 300
    iget-object v5, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    .line 306
    :goto_2
    sget-object v5, Lcom/logitech/connect/ConnectClient;->mConnectedToSsid:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/logitech/connect/ConnectClient;->mConnectedToSsid:Ljava/lang/String;

    iget-object v6, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->onWifiLost()V

    goto :goto_0

    .line 302
    :cond_3
    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104000e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    goto :goto_2

    .line 314
    .end local v3           #wifi:Landroid/net/wifi/WifiManager;
    .end local v4           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const-string v5, "Ethernet cable"

    iput-object v5, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_4
    iget-boolean v5, p0, Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z

    if-eqz v5, :cond_2

    .line 323
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->onWifiLost()V

    goto :goto_1

    .line 328
    .end local v2           #networkType:I
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z

    goto :goto_1

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTargetsChanged()V
    .locals 3

    .prologue
    .line 469
    iget-object v2, p0, Lcom/logitech/connect/ConnectClient;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/IConnectClientObserver;

    .line 470
    .local v1, o:Lcom/logitech/connect/IConnectClientObserver;
    iget-object v2, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/logitech/connect/IConnectClientObserver;->onTargetsChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 472
    .end local v1           #o:Lcom/logitech/connect/IConnectClientObserver;
    :cond_0
    return-void
.end method

.method private onWifiEstablished()V
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->sendDiscoveryProbe()V

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z

    .line 352
    return-void
.end method

.method private onWifiLost()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z

    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->onTargetsChanged()V

    .line 408
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->disconnect()V

    .line 410
    iput-boolean v1, p0, Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z

    .line 412
    return-void

    .line 408
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addConnectivityObserver(Lcom/logitech/connect/IConnectivityObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mConnectivityObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    return-void
.end method

.method public addGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    return-void
.end method

.method public addLoginFailObserver(Lcom/logitech/connect/ILoginFailObserver;)V
    .locals 0
    .parameter "loginFailObserver"

    .prologue
    .line 915
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient;->mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;

    .line 916
    return-void
.end method

.method public addObserver(Lcom/logitech/connect/IConnectClientObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method public addTarget(Lcom/logitech/connect/Target;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 442
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Revue 2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 445
    .local v0, i:I
    invoke-virtual {p0, p1}, Lcom/logitech/connect/ConnectClient;->sequenceTargetNames(Lcom/logitech/connect/Target;)V

    .line 446
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :goto_0
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->onTargetsChanged()V

    .line 454
    .end local v0           #i:I
    :cond_0
    return-void

    .line 449
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkRunningTasks()V
    .locals 6

    .prologue
    .line 870
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/logitech/connect/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 871
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 873
    .local v2, appTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 874
    .local v1, appTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 875
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-gtz v4, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->getAutoLockState()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 877
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 878
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/logitech/connect/ConnectClient;->mIsLockReleased:Z

    goto :goto_0

    .line 883
    .end local v1           #appTask:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    return-void
.end method

.method public clearTargets()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 463
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->onTargetsChanged()V

    .line 464
    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->sendDiscoveryProbe()V

    .line 466
    return-void
.end method

.method public connect()V
    .locals 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    iget v2, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    iget-object v3, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/logitech/connect/client/transport/XmppClientConnection;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method public connectTo(Ljava/lang/String;I)V
    .locals 2
    .parameter "hostAddress"
    .parameter "port"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/logitech/connect/ConnectClient;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "server"
    .parameter "port"
    .parameter "userName"
    .parameter "passWord"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    .line 199
    iput p2, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    .line 200
    iput-object p3, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    .line 201
    iput-object p4, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/logitech/connect/client/transport/XmppClientConnection;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public continueRequest(Lcom/logitech/connect/client/transport/IOpenApiRequest;Ljava/lang/String;)V
    .locals 3
    .parameter "request"
    .parameter "body"

    .prologue
    .line 564
    sget-boolean v0, Lcom/logitech/connect/ConnectClient;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/logitech/connect/client/transport/XmppClientConnection;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 568
    return-void
.end method

.method public createPowerWakeLock()V
    .locals 3

    .prologue
    .line 894
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/logitech/connect/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPowerman:Landroid/os/PowerManager;

    .line 895
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPowerman:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "DoNotDimScreen"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    .line 896
    return-void
.end method

.method public disconnect()V
    .locals 7

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mDisconnectPending:Z

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->cleanup()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    .line 225
    new-instance v0, Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    iget v2, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    const-string v3, "connect.logitech.com"

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/logitech/connect/client/transport/XmppClientConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IConnectClient;)V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/connect/ConnectClient;->mConnected:I

    .line 230
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/logitech/connect/ConnectClient;->setCurrentConnectionTarget(I)Z

    .line 231
    return-void
.end method

.method public forgetPairing()V
    .locals 4

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->reset()V

    .line 840
    const-string v0, ""

    const/16 v1, 0x1466

    const-string v2, "guest"

    iget-object v3, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public getAutoLockState()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mAutoLockState:Z

    return v0
.end method

.method public getConnected()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/logitech/connect/ConnectClient;->mConnected:I

    return v0
.end method

.method public getErrorCondition()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mErrorCondition:Z

    return v0
.end method

.method public getHubId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 832
    const-string v1, "ConnectClient"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/logitech/connect/ConnectClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 834
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "hubId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getServer()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServerIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mServerIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getTargets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    if-eqz v0, :cond_1

    .line 266
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mDisconnectPending:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 269
    :cond_0
    iget v0, p0, Lcom/logitech/connect/ConnectClient;->mConnected:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_1
    iget v0, p0, Lcom/logitech/connect/ConnectClient;->mConnected:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isKeepAlive()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mKeepAlive:Z

    return v0
.end method

.method public isOlivePasswordChanged()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mPasswordChanged:Z

    return v0
.end method

.method public isPaired()Z
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "guest"

    iget-object v2, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 214
    .local v0, paired:Z
    :goto_0
    return v0

    .line 212
    .end local v0           #paired:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isWifiAvailable()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z

    return v0
.end method

.method public notifyServiceUnavailable()V
    .locals 3

    .prologue
    .line 505
    iget-object v2, p0, Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/IGlobalResponseObserver;

    .line 506
    .local v1, o:Lcom/logitech/connect/IGlobalResponseObserver;
    invoke-interface {v1}, Lcom/logitech/connect/IGlobalResponseObserver;->onServiceUnavailable()V

    goto :goto_0

    .line 508
    .end local v1           #o:Lcom/logitech/connect/IGlobalResponseObserver;
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 134
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-object v0
.end method

.method public onConnectChanged(IZI)V
    .locals 3
    .parameter "connected"
    .parameter "errorCondition"
    .parameter "errorCode"

    .prologue
    .line 572
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/logitech/connect/ConnectClient$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/logitech/connect/ConnectClient$4;-><init>(Lcom/logitech/connect/ConnectClient;IZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    :goto_0
    return-void

    .line 604
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "How?"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 606
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 139
    sget-object v1, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    if-ne v1, p0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v1, "ConnectClient"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/logitech/connect/ConnectClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "localServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    .line 144
    const-string v1, "userName"

    const-string v2, "guest"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    .line 145
    const-string v1, "passWord"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    .line 146
    const-string v1, "serverIdentity"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mServerIdentity:Ljava/lang/String;

    .line 147
    const-string v1, "localPort"

    const/16 v2, 0x1466

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    .line 156
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    iget v2, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    invoke-virtual {p0, v1, v2}, Lcom/logitech/connect/ConnectClient;->onCreate(Ljava/lang/String;I)V

    .line 158
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v1

    const-string v2, "oa"

    const-string v3, "connect.logitech.com"

    new-instance v4, Lcom/logitech/connect/ConnectClient$1;

    invoke-direct {v4, p0}, Lcom/logitech/connect/ConnectClient$1;-><init>(Lcom/logitech/connect/ConnectClient;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v1

    const-string v2, "event"

    const-string v3, "connect.logitech.com"

    new-instance v4, Lcom/logitech/connect/ConnectClient$2;

    invoke-direct {v4, p0}, Lcom/logitech/connect/ConnectClient$2;-><init>(Lcom/logitech/connect/ConnectClient;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Ljava/lang/String;I)V
    .locals 7
    .parameter "server"
    .parameter "serverPort"

    .prologue
    .line 176
    new-instance v0, Lcom/logitech/connect/client/transport/XmppClientConnection;

    const-string v3, "connect.logitech.com"

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/logitech/connect/client/transport/XmppClientConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IConnectClient;)V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    .line 178
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    .line 179
    iput p2, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    .line 181
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 182
    sput-object p0, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    .line 184
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->onConnectivityChange()V

    .line 185
    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->checkRunningTasks()V

    .line 187
    new-instance v0, Lcom/logitech/connect/DiscoveryServer;

    const/16 v1, 0x1545

    iget-object v2, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/DiscoveryServer;-><init>(ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryServer:Lcom/logitech/connect/DiscoveryServer;

    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 512
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->onWifiLost()V

    .line 514
    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    .line 515
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 516
    sput-object v1, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    .line 518
    invoke-virtual {p0}, Lcom/logitech/connect/ConnectClient;->getAutoLockState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPowerWake:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->cleanup()V

    .line 523
    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    .line 525
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryServer:Lcom/logitech/connect/DiscoveryServer;

    invoke-virtual {v0}, Lcom/logitech/connect/DiscoveryServer;->cleanup()V

    .line 526
    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryServer:Lcom/logitech/connect/DiscoveryServer;

    .line 530
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 531
    return-void
.end method

.method public onLoginFailed(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;

    invoke-interface {v0, p1, p2}, Lcom/logitech/connect/ILoginFailObserver;->onLoginFailed(ILjava/lang/String;)V

    .line 924
    :cond_0
    return-void
.end method

.method public onOaEventMessageReceived(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/logitech/connect/ConnectClient$5;

    invoke-direct {v1, p0, p1}, Lcom/logitech/connect/ConnectClient$5;-><init>(Lcom/logitech/connect/ConnectClient;Lorg/jivesoftware/smack/packet/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    :cond_0
    return-void
.end method

.method public onOaRequestReceived(Lcom/logitech/connect/client/transport/OaIQ;)V
    .locals 2
    .parameter "iq"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/logitech/connect/ConnectClient$6;

    invoke-direct {v1, p0, p1}, Lcom/logitech/connect/ConnectClient$6;-><init>(Lcom/logitech/connect/ConnectClient;Lcom/logitech/connect/client/transport/OaIQ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    :cond_0
    return-void
.end method

.method public onPacketSendFailed(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/logitech/connect/ConnectClient$7;

    invoke-direct {v1, p0, p1}, Lcom/logitech/connect/ConnectClient$7;-><init>(Lcom/logitech/connect/ConnectClient;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    :cond_0
    return-void
.end method

.method public onPacketWasWritten(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 736
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/logitech/connect/ConnectClient;->mLastWrittenPacket:J

    .line 737
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/logitech/connect/client/transport/OaIQ;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/logitech/connect/ConnectClient$10;

    invoke-direct {v1, p0, p1}, Lcom/logitech/connect/ConnectClient$10;-><init>(Lcom/logitech/connect/ConnectClient;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 759
    :cond_0
    return-void
.end method

.method public onPresenceReceived()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/logitech/connect/ConnectClient$11;

    invoke-direct {v1, p0}, Lcom/logitech/connect/ConnectClient$11;-><init>(Lcom/logitech/connect/ConnectClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->onConnectivityChange()V

    .line 420
    invoke-direct {p0}, Lcom/logitech/connect/ConnectClient;->notifyConnectedClients()V

    .line 421
    return-void
.end method

.method public onWriteTimeout()V
    .locals 6

    .prologue
    .line 796
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mWrittenRequests:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 797
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/connect/client/transport/IResponseHandler;

    .line 798
    .local v0, h:Lcom/logitech/connect/client/transport/IResponseHandler;
    if-eqz v0, :cond_0

    .line 799
    const-string v4, "500"

    const-string v5, "Write timeout occurred"

    invoke-interface {v0, v3, v4, v5}, Lcom/logitech/connect/client/transport/IResponseHandler;->onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 804
    .end local v0           #h:Lcom/logitech/connect/client/transport/IResponseHandler;
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mWrittenRequests:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 806
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/connect/IGlobalResponseObserver;

    .line 807
    .local v2, o:Lcom/logitech/connect/IGlobalResponseObserver;
    const/4 v4, 0x4

    invoke-interface {v2, v4}, Lcom/logitech/connect/IGlobalResponseObserver;->onPacketSendingFailed(I)V

    goto :goto_1

    .line 809
    .end local v2           #o:Lcom/logitech/connect/IGlobalResponseObserver;
    :cond_2
    return-void
.end method

.method public onXmppConnectionClosedOnError()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/logitech/connect/ConnectClient$12;

    invoke-direct {v1, p0}, Lcom/logitech/connect/ConnectClient$12;-><init>(Lcom/logitech/connect/ConnectClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method public putEventMessageHandler(Ljava/lang/String;Lcom/logitech/connect/client/transport/IEventMessageHandler;)V
    .locals 1
    .parameter "type"
    .parameter "handler"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mEventMessageHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void
.end method

.method public removeConnectivityObserver(Lcom/logitech/connect/IConnectivityObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mConnectivityObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method public removeEventMessageHandler(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mEventMessageHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-void
.end method

.method public removeGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method public removeLoginFailObserver(Lcom/logitech/connect/ILoginFailObserver;)V
    .locals 1
    .parameter "loginFailObserver"

    .prologue
    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;

    .line 928
    return-void
.end method

.method public removeObserver(Lcom/logitech/connect/IConnectClientObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method public removeRequestMessageHandler(Ljava/lang/String;)V
    .locals 1
    .parameter "requestId"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 843
    const-string v1, "guest"

    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    .line 844
    const-string v1, ""

    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mServerIdentity:Ljava/lang/String;

    .line 846
    const-string v1, ""

    iput-object v1, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    .line 848
    const-string v1, "ConnectClient"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/logitech/connect/ConnectClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 850
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "passWord"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "localServer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "port"

    const/16 v3, 0x1466

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "serverIdentity"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 853
    return-void
.end method

.method public sendDiscoveryProbe()V
    .locals 2

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryProbePending:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryProbe:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public sendMessage(Lcom/logitech/connect/client/transport/IMessage;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 534
    iget v0, p0, Lcom/logitech/connect/ConnectClient;->mConnected:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    iget v2, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    iget-object v3, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/logitech/connect/client/transport/XmppClientConnection;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-virtual {v0, p1}, Lcom/logitech/connect/client/transport/XmppClientConnection;->sendMessage(Lcom/logitech/connect/client/transport/IMessage;)V

    .line 538
    return-void
.end method

.method public sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;
    .locals 8
    .parameter "uri"
    .parameter "body"
    .parameter "responseHandler"

    .prologue
    .line 546
    iget v3, p0, Lcom/logitech/connect/ConnectClient;->mConnected:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z

    if-eqz v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    iget v5, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    iget-object v6, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    iget-object v7, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/logitech/connect/client/transport/XmppClientConnection;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-virtual {v3, p1, p2}, Lcom/logitech/connect/client/transport/XmppClientConnection;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v2

    .line 551
    .local v2, r:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient;->mPendingRequests:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient;->mGlobalResponseObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/IGlobalResponseObserver;

    .line 554
    .local v1, o:Lcom/logitech/connect/IGlobalResponseObserver;
    invoke-interface {v1}, Lcom/logitech/connect/IGlobalResponseObserver;->onPacketSendingStarted()V

    goto :goto_0

    .line 556
    .end local v1           #o:Lcom/logitech/connect/IGlobalResponseObserver;
    :cond_1
    return-object v2
.end method

.method public sequenceTargetNames(Lcom/logitech/connect/Target;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 425
    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getName()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v2, strArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/connect/Target;

    .line 429
    .local v3, t2:Lcom/logitech/connect/Target;
    invoke-virtual {v3}, Lcom/logitech/connect/Target;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    invoke-virtual {v3}, Lcom/logitech/connect/Target;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 434
    .end local v3           #t2:Lcom/logitech/connect/Target;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-virtual {p1, v1}, Lcom/logitech/connect/Target;->setName(Ljava/lang/String;)V

    .line 439
    :cond_2
    return-void
.end method

.method public setAutoLockState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 886
    iput-boolean p1, p0, Lcom/logitech/connect/ConnectClient;->mAutoLockState:Z

    .line 887
    return-void
.end method

.method public setCurrentConnectionTarget(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 245
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 246
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 248
    if-eq p1, v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/Target;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/logitech/connect/Target;->setConnectionStatus(I)V

    .line 247
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/Target;

    invoke-virtual {v1, v3}, Lcom/logitech/connect/Target;->setConnectionStatus(I)V

    goto :goto_1

    .line 256
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/Target;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/logitech/connect/Target;->setConnectionStatus(I)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 261
    .end local v0           #i:I
    :cond_2
    return v3
.end method

.method public setHubId(Ljava/lang/String;)V
    .locals 3
    .parameter "hubId"

    .prologue
    .line 826
    const-string v1, "ConnectClient"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/logitech/connect/ConnectClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 828
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hubId"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 829
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0
    .parameter "mKeepAlive"

    .prologue
    .line 903
    iput-boolean p1, p0, Lcom/logitech/connect/ConnectClient;->mKeepAlive:Z

    .line 904
    return-void
.end method

.method public setOlivePasswordChanged(Z)V
    .locals 0
    .parameter "passwordChanged"

    .prologue
    .line 907
    iput-boolean p1, p0, Lcom/logitech/connect/ConnectClient;->mPasswordChanged:Z

    .line 908
    return-void
.end method

.method public setPairedIdentity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "userIdentity"
    .parameter "serverIdentity"
    .parameter "passWord"

    .prologue
    .line 812
    const-string v1, "ConnectClient"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/logitech/connect/ConnectClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 814
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userName"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "passWord"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "localServer"

    iget-object v3, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "port"

    iget v3, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "serverIdentity"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 818
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    .line 819
    iput-object p2, p0, Lcom/logitech/connect/ConnectClient;->mServerIdentity:Ljava/lang/String;

    .line 821
    iput-object p3, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    .line 822
    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mLocalConnection:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v2, p0, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    iget v3, p0, Lcom/logitech/connect/ConnectClient;->mPort:I

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/logitech/connect/client/transport/XmppClientConnection;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public stopDiscoveryProbe()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryProbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/connect/ConnectClient;->mDiscoveryProbePending:Z

    .line 397
    return-void
.end method
