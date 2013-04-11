.class public Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Lcom/logitech/harmonylink/common/ISyncStateObserver;


# static fields
.field private static final ALREADY_SYNC_MSG:I = 0x2

.field private static final AUTH_FAILURE:I = 0x3

.field private static final CHECK_MANUAL_SYNC_STATUS:I = 0x0

.field private static final CONFIG_DOWNLOAD:I = 0x3

.field private static final CONFIG_DOWNLOAD_STR:Ljava/lang/String; = "ConfigDownloadInProgress"

.field private static final CONFIG_INSTALL:I = 0x4

.field private static final CONFIG_INSTALL_STR:Ljava/lang/String; = "ConfigInstallInProgress"

.field private static final CONNECTION_FAILED:I = 0x4

.field private static final DIALOG_ERROR:I = 0x1

.field private static final ERROR_CODE_400:Ljava/lang/String; = "400"

.field private static final FIRMWARE_DOWNLOAD:I = 0x1

.field private static final FIRMWARE_DOWNLOAD_STR:Ljava/lang/String; = "FirmwareDownloadInProgress"

.field private static final FIRMWARE_INSTALL:I = 0x2

.field private static final FIRMWARE_INSTALL_STR:Ljava/lang/String; = "FirmwareInstallInProgress"

.field private static final HEARTBEAT_DELAY:I = 0x3a98

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MANUAL_SYNC_INACTIVE:I = 0x0

.field private static final MANUAL_SYNC_INACTIVE_STR:Ljava/lang/String; = "ManualSyncInactive"

.field private static final NO_DEVICES_OR_ACTIVITIES:I = 0x5

.field private static final OLIVE_AUTH_FAILURE:Ljava/lang/String; = "14"

.field private static final OLIVE_AUTH_FAILURE1:Ljava/lang/String; = "12"

.field private static final OLIVE_NO_DEVICES_OR_ACTIVITIES:Ljava/lang/String; = "10"

.field private static fromLogin:Ljava/lang/String;

.field private static fromManualsync:Ljava/lang/String;


# instance fields
.field private final CONFIG_DOWNLOAD_TIMEOUT:I

.field private final FIRMWARE_DOWNLOAD_TIMEOUT:I

.field private final TIME_SEC_1DAY:J

.field private final TIME_SEC_3DAYS:J

.field protected mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mCheckHeartbeat:Ljava/lang/Runnable;

.field private mConnectClient:Lcom/logitech/connect/ConnectClient;

.field private final mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

.field private mCurrentState:I

.field private mCurrentTimeOutFactor:I

.field private mCurrentTry:I

.field private mDlgStatusText:Landroid/widget/TextView;

.field private mDlgSyncText:Landroid/widget/TextView;

.field private mGuid:Ljava/lang/String;

.field private mHostAddress:Ljava/lang/String;

.field private mIsFromLoginScreen:Z

.field private mLaunchOneTouch:Ljava/lang/Runnable;

.field private mMatchFound:Z

.field private mMaxRetry:I

.field private mMaxVal:I

.field private mPbar:Landroid/widget/ProgressBar;

.field private mPingStarted:Z

.field private mPort:I

.field private mReconnect:Ljava/lang/Runnable;

.field private mSpinny:Landroid/widget/ProgressBar;

.field private mSyncErrorMessage:Ljava/lang/String;

.field private mSyncState:Ljava/lang/String;

.field private mTimeOutFactor:I

.field private mTimeOutRunnable:Ljava/lang/Runnable;

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdatingVal:F

.field private mWifiErrorMsgText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->fromLogin:Ljava/lang/String;

    .line 78
    sput-object v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->fromManualsync:Ljava/lang/String;

    .line 115
    const-class v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 51
    const-wide/32 v0, 0x3f480

    iput-wide v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->TIME_SEC_3DAYS:J

    .line 52
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->TIME_SEC_1DAY:J

    .line 57
    iput-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgStatusText:Landroid/widget/TextView;

    .line 58
    iput-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgSyncText:Landroid/widget/TextView;

    .line 59
    iput-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mWifiErrorMsgText:Landroid/widget/TextView;

    .line 60
    iput-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;

    .line 73
    iput-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    .line 74
    iput-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUpdatingVal:F

    .line 76
    iput v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxVal:I

    .line 80
    iput v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutFactor:I

    .line 81
    iput v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTimeOutFactor:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    .line 99
    const/16 v0, 0xa

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->FIRMWARE_DOWNLOAD_TIMEOUT:I

    .line 100
    const/16 v0, 0x8

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->CONFIG_DOWNLOAD_TIMEOUT:I

    .line 106
    iput-boolean v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z

    .line 107
    iput-boolean v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMatchFound:Z

    .line 117
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$1;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$2;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$3;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$3;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mReconnect:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$4;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

    .line 761
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$10;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$10;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mLaunchOneTouch:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->sendHeartBeat()V

    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMatchFound:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMatchFound:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mReconnect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->checkSyncStatus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showAppDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getVersionNumber()V

    return-void
.end method

.method static synthetic access$1800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->fromLogin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mHostAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->fromManualsync:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mHostAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->onFirmwareUpgrade()V

    return-void
.end method

.method static synthetic access$2202(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTimeOutFactor:I

    return p1
.end method

.method static synthetic access$2302(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutFactor:I

    return p1
.end method

.method static synthetic access$2400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->startSync()V

    return-void
.end method

.method static synthetic access$2502(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxRetry:I

    return v0
.end method

.method static synthetic access$2602(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxRetry:I

    return p1
.end method

.method static synthetic access$2700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTry:I

    return v0
.end method

.method static synthetic access$2708(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTry:I

    return v0
.end method

.method static synthetic access$2800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mIsFromLoginScreen:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->unPair()V

    return-void
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPort:I

    return v0
.end method

.method static synthetic access$302(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPort:I

    return p1
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Lcom/logitech/connect/ConnectClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    return v0
.end method

.method static synthetic access$902(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    return p1
.end method

.method private changeAlertMessage(I)Landroid/app/Dialog;
    .locals 5
    .parameter "messageType"

    .prologue
    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    .local v1, errorMessage:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 910
    const-string v2, "FirmWare Update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :cond_0
    :goto_0
    const-string v2, ""

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    .local v0, dlgMessage:Ljava/lang/StringBuilder;
    const v2, 0x7f060094

    if-ne p1, v2, :cond_4

    .line 925
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;

    invoke-direct {v4, p0, p1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 911
    .end local v0           #dlgMessage:Ljava/lang/StringBuilder;
    :cond_1
    iget v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 912
    const-string v2, "FirmWare Install"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 913
    :cond_2
    iget v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 914
    const-string v2, "Config Download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 915
    :cond_3
    iget v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 916
    const-string v2, "Config Install"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 927
    .restart local v0       #dlgMessage:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private changeMessage(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "textView"
    .parameter "message"

    .prologue
    .line 963
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 964
    invoke-virtual {p0, p2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    return-void
.end method

.method private checkSyncStatus()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.harmony/vnd.logitech.harmony.manualsync?state"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$6;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$6;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 385
    return-void
.end method

.method private createErrorDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "message"

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const/4 v0, 0x0

    .line 885
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$14;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$14;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLabelForSyncState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 952
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 953
    const v0, 0x7f060091

    .line 959
    :goto_0
    return v0

    .line 954
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 955
    const v0, 0x7f060092

    goto :goto_0

    .line 956
    :cond_1
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 957
    :cond_2
    const v0, 0x7f060088

    goto :goto_0

    .line 959
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStateFromString(Ljava/lang/String;)I
    .locals 1
    .parameter "currentState"

    .prologue
    .line 847
    const-string v0, "ConfigDownloadInProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    const/4 v0, 0x3

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    .line 859
    :cond_0
    :goto_0
    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    return v0

    .line 849
    :cond_1
    const-string v0, "ConfigInstallInProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    const/4 v0, 0x4

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    goto :goto_0

    .line 851
    :cond_2
    const-string v0, "FirmwareInstallInProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 852
    const/4 v0, 0x2

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    goto :goto_0

    .line 853
    :cond_3
    const-string v0, "FirmwareDownloadInProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 854
    const/4 v0, 0x1

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    goto :goto_0

    .line 855
    :cond_4
    const-string v0, "ManualSyncInactive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    goto :goto_0
.end method

.method private getVersionNumber()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.harmony/vnd.logitech.harmony.firmware?updateNeeded"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$7;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 463
    const/4 v0, 0x2

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutFactor:I

    .line 464
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addSyncStateObserver(Lcom/logitech/harmonylink/common/ISyncStateObserver;)V

    .line 465
    return-void
.end method

.method private isSyncRequired()Z
    .locals 14

    .prologue
    .line 267
    invoke-static {}, Lcom/logitech/harmonylink/util/SystemUtil;->getCurrentCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 269
    .local v0, currentDay:Ljava/util/Calendar;
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 270
    .local v2, currentmonth:I
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 272
    .local v1, currentday:I
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v3, v10, v12

    .line 273
    .local v3, currenttimeinsec:J
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v5

    .line 274
    .local v5, pref:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v10, "timewhenappinstalled"

    invoke-virtual {v5, v10}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 277
    .local v8, timeofinstallapp:J
    const/16 v10, 0xb

    if-ne v2, v10, :cond_0

    const/16 v10, 0x17

    if-lt v1, v10, :cond_0

    .line 279
    const/4 v10, 0x0

    .line 293
    :goto_0
    return v10

    .line 280
    :cond_0
    sub-long v10, v3, v8

    const-wide/32 v12, 0x3f480

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 281
    const/4 v10, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const-string v10, "lasttimeuseropentheapp"

    invoke-virtual {v5, v10}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 285
    .local v6, sincelasttimeusedinsec:J
    sget-wide v10, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->KEY_NOT_EXIST:J

    cmp-long v10, v6, v10

    if-eqz v10, :cond_2

    sub-long v10, v3, v6

    const-wide/32 v12, 0x15180

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    .line 287
    :cond_2
    const-string v10, "lasttimeuseropentheapp"

    invoke-virtual {v5, v10, v3, v4}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putLong(Ljava/lang/String;J)V

    .line 289
    const/4 v10, 0x1

    goto :goto_0

    .line 293
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private onFirmwareUpgrade()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgSyncText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    iput v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTimeOutFactor:I

    .line 472
    const/4 v0, 0x1

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    .line 473
    const/16 v0, 0xa

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutFactor:I

    .line 477
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->startSync()V

    .line 478
    return-void
.end method

.method private requestFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;Z)V

    .line 331
    return-void
.end method

.method private requestFailed(Ljava/lang/String;Z)V
    .locals 2
    .parameter "errorMessage"
    .parameter "hasConnFailed"

    .prologue
    const/16 v1, 0x8

    .line 335
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgSyncText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    if-eqz p1, :cond_1

    .line 342
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    .line 344
    :cond_1
    if-eqz p2, :cond_2

    .line 345
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showAppDialog(I)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showAppDialog(I)V

    goto :goto_0
.end method

.method private sendHeartBeat()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 515
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.connect/vnd.logitech.ping"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$9;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 573
    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTimeOutFactor:I

    iget v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutFactor:I

    if-lt v0, v1, :cond_2

    .line 574
    iput v4, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTimeOutFactor:I

    .line 575
    iput v4, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutFactor:I

    .line 576
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 578
    :cond_0
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 581
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;)V

    .line 584
    :cond_2
    return-void
.end method

.method private showAppDialog(I)V
    .locals 1
    .parameter "requestcode"

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    :goto_0
    return-void

    .line 997
    :cond_0
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private showDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    const/4 v0, 0x0

    .line 867
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$13;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$13;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method private showOliveAuthAlertDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 805
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06009a

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060016

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$12;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$12;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$11;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$11;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private startSync()V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.harmony/vnd.logitech.harmony.manualsync?start"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$8;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 512
    return-void
.end method

.method private syncHarmonyLink()V
    .locals 4

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->isSyncRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v1, "vnd.logitech.harmony/vnd.logitech.harmony.manualsync?issyncrequired"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$5;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$5;-><init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->checkSyncStatus()V

    goto :goto_0
.end method

.method private updatePercentageCompleted()V
    .locals 4

    .prologue
    const/high16 v3, 0x42c8

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, currentInt:F
    iget v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUpdatingVal:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxVal:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 318
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public getDom()Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 194
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestWindowFeature(I)Z

    .line 196
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 197
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1, v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setHasTriggeredSync(Z)V

    .line 198
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 199
    const-string v1, "ConnectClient"

    invoke-virtual {p0, v1, v4}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "serverIdentity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mGuid:Ljava/lang/String;

    .line 204
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    .line 206
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 207
    const v1, 0x7f030039

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromloginpage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    iput-boolean v3, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mIsFromLoginScreen:Z

    .line 211
    :cond_0
    const v1, 0x7f0700b6

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    .line 212
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    const v1, 0x7f0700bb

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    .line 215
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    const v1, 0x7f0700ba

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgStatusText:Landroid/widget/TextView;

    .line 218
    const v1, 0x7f0700b5

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgSyncText:Landroid/widget/TextView;

    .line 219
    const v1, 0x7f0700bc

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mWifiErrorMsgText:Landroid/widget/TextView;

    .line 220
    const-string v1, ""

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1, v3}, Lcom/logitech/connect/ConnectClient;->setKeepAlive(Z)V

    .line 225
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->syncHarmonyLink()V

    .line 227
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 773
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 798
    :goto_0
    return-object v0

    .line 776
    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 798
    goto :goto_0

    .line 778
    :pswitch_0
    const v0, 0x7f060093

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->changeAlertMessage(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 782
    :pswitch_1
    const v0, 0x7f060094

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->changeAlertMessage(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 786
    :pswitch_2
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showOliveAuthAlertDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 790
    :pswitch_3
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 794
    :pswitch_4
    const v0, 0x7f0600c0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->createErrorDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 776
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 969
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->stopDiscoveryProbe()V

    .line 970
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->setKeepAlive(Z)V

    .line 971
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setHasTriggeredSync(Z)V

    .line 972
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->removeSyncStateObserver(Lcom/logitech/harmonylink/common/ISyncStateObserver;)V

    .line 975
    iput-boolean v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z

    .line 976
    iput-boolean v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMatchFound:Z

    .line 977
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 980
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    .line 981
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 982
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 986
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 987
    const/4 v0, 0x1

    .line 989
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->setIntent(Landroid/content/Intent;)V

    .line 300
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromloginpage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->fromLogin:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "frommanualsync"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->fromManualsync:Ljava/lang/String;

    .line 303
    const-string v0, "fromloginpage"

    sget-object v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->fromLogin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    sget-object v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->fromLogin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setSyncSource(Ljava/lang/String;)V

    .line 309
    :goto_0
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 310
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    sget-object v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->fromManualsync:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setSyncSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeObserver(Lcom/logitech/connect/IConnectClientObserver;)V

    .line 595
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mReconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 599
    :cond_0
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 602
    :cond_1
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onPause()V

    .line 603
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->addObserver(Lcom/logitech/connect/IConnectClientObserver;)V

    .line 589
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 590
    return-void
.end method

.method public onSyncComplete()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setIsManufacturingConfig(Z)V

    .line 611
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->hasTriggeredSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->finish()V

    .line 614
    :cond_0
    return-void
.end method

.method public onSyncStateChanged(Ljava/lang/String;)V
    .locals 22
    .parameter "syncState"

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mTimeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 622
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->hasTriggeredSync()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 623
    const/16 v18, 0x3d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 624
    .local v12, indexOfEqual:I
    const/16 v18, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 625
    .local v11, indexOfColon:I
    const-string v18, "progress="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 627
    .local v13, indexofProg:I
    const-string v18, "Fail"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    .line 628
    .local v16, syncFailed:Z
    if-eqz v16, :cond_c

    .line 629
    const-string v18, "errorCode"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 630
    .local v8, errorString:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    .line 637
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mIsFromLoginScreen:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "errorCode=3"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Detail: getRemotes"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 640
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxRetry:I

    .line 643
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->checkSyncStatus()V

    .line 759
    .end local v8           #errorString:Ljava/lang/String;
    .end local v11           #indexOfColon:I
    .end local v12           #indexOfEqual:I
    .end local v13           #indexofProg:I
    .end local v16           #syncFailed:Z
    :cond_1
    :goto_0
    return-void

    .line 645
    .restart local v8       #errorString:Ljava/lang/String;
    .restart local v11       #indexOfColon:I
    .restart local v12       #indexOfEqual:I
    .restart local v13       #indexofProg:I
    .restart local v16       #syncFailed:Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mIsFromLoginScreen:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "errorCode=12"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Detail: getRemotes"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 651
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 653
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 655
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPingStarted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    :cond_6
    const-string v18, "10"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 661
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showAppDialog(I)V

    goto/16 :goto_0

    .line 665
    :cond_7
    const-string v18, "14"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "12"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_8
    const-string v18, "Authentication failure"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 669
    const-string v4, "[:]+"

    .line 670
    .local v4, delims:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncErrorMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 671
    .local v17, tokens:[Ljava/lang/String;
    const-string v5, "[=]"

    .line 672
    .local v5, delims1:Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, errorCode:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object v0, v7

    array-length v0, v0

    move/from16 v18, v0

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 675
    aget-object v18, v7, v9

    const-string v19, "14"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    aget-object v18, v7, v9

    const-string v19, "12"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 677
    :cond_9
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showAppDialog(I)V

    .line 674
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 681
    .end local v4           #delims:Ljava/lang/String;
    .end local v5           #delims1:Ljava/lang/String;
    .end local v7           #errorCode:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v17           #tokens:[Ljava/lang/String;
    :cond_b
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showAppDialog(I)V

    goto/16 :goto_0

    .line 685
    .end local v8           #errorString:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 686
    .local v14, st:Ljava/lang/String;
    const-string v18, "="

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 687
    .local v6, equal:I
    const/16 v18, 0x3a

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 689
    .local v3, co:I
    add-int/lit8 v18, v6, 0x1

    move-object v0, v14

    move/from16 v1, v18

    move v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 690
    .local v15, stt:Ljava/lang/String;
    const/16 v18, 0x2f

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 691
    .local v10, index1:I
    const/16 v18, 0x0

    move-object v0, v15

    move/from16 v1, v18

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUpdatingVal:F

    .line 692
    add-int/lit8 v18, v10, 0x1

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxVal:I

    .line 694
    const/16 v18, -0x1

    move v0, v12

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    .line 695
    add-int/lit8 v18, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;

    .line 698
    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTry:I

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "FirmwareInstallInProgress"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 700
    const/16 v18, 0x18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxRetry:I

    .line 701
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTry:I

    .line 707
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "ManualSyncInactive"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSyncState:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getStateFromString(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    .line 709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgSyncText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgStatusText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getLabelForSyncState(I)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->changeMessage(Landroid/widget/TextView;I)V

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->updatePercentageCompleted()V

    goto/16 :goto_0

    .line 703
    :cond_e
    const/16 v18, 0x6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMaxRetry:I

    .line 704
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentTry:I

    goto :goto_2

    .line 713
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 717
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 720
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mSpinny:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgSyncText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mWifiErrorMsgText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mWifiErrorMsgText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgStatusText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getLabelForSyncState(I)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->changeMessage(Landroid/widget/TextView;I)V

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setHasConfigInstalled(Z)V

    goto/16 :goto_0

    .line 743
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCurrentState:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mPbar:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 746
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mWifiErrorMsgText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mDlgStatusText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f060089

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->changeMessage(Landroid/widget/TextView;I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mCheckHeartbeat:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 752
    :cond_15
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mLaunchOneTouch:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x1f4

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 754
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mMatchFound:Z

    goto/16 :goto_0
.end method
