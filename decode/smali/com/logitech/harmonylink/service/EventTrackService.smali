.class public Lcom/logitech/harmonylink/service/EventTrackService;
.super Landroid/app/Service;
.source "EventTrackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/service/EventTrackService$EventTrackBinder;,
        Lcom/logitech/harmonylink/service/EventTrackService$ITrackEvents;
    }
.end annotation


# static fields
.field private static final KA_2X:Ljava/lang/String; = "Revue 2.0"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static mEventTrackServiceInstance:Lcom/logitech/harmonylink/service/EventTrackService;

.field public static mEventTracker:Lcom/logitech/harmonylink/util/EventTracker;

.field private static mHubId:Ljava/lang/String;


# instance fields
.field private mBinder:Lcom/logitech/harmonylink/service/EventTrackService$EventTrackBinder;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/logitech/harmonylink/service/EventTrackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/service/EventTrackService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/logitech/harmonylink/service/EventTrackService$EventTrackBinder;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/service/EventTrackService$EventTrackBinder;-><init>(Lcom/logitech/harmonylink/service/EventTrackService;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/service/EventTrackService;->mBinder:Lcom/logitech/harmonylink/service/EventTrackService$EventTrackBinder;

    .line 86
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/service/EventTrackService;->mBinder:Lcom/logitech/harmonylink/service/EventTrackService$EventTrackBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    iput-object p0, p0, Lcom/logitech/harmonylink/service/EventTrackService;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/logitech/harmonylink/util/EventTracker;->getEventTracker()Lcom/logitech/harmonylink/util/EventTracker;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/service/EventTrackService;->mEventTracker:Lcom/logitech/harmonylink/util/EventTracker;

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 84
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public setHubId(Ljava/lang/String;)V
    .locals 0
    .parameter "hubId"

    .prologue
    .line 53
    sput-object p1, Lcom/logitech/harmonylink/service/EventTrackService;->mHubId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public startTracker()V
    .locals 4

    .prologue
    .line 61
    sget-object v2, Lcom/logitech/harmonylink/service/EventTrackService;->mHubId:Ljava/lang/String;

    const-string v3, "Revue 2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/logitech/harmonylink/service/EventTrackService;->mHubId:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 67
    :goto_1
    return-void

    .line 61
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 64
    :cond_1
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/service/EventTrackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 65
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, uniqueId:Ljava/lang/String;
    sget-object v2, Lcom/logitech/harmonylink/service/EventTrackService;->mEventTracker:Lcom/logitech/harmonylink/util/EventTracker;

    iget-object v3, p0, Lcom/logitech/harmonylink/service/EventTrackService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/logitech/harmonylink/util/EventTracker;->startTracker(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public trackEvents(Lcom/logitech/connect/client/transport/NameValuePairs;)V
    .locals 2
    .parameter "pairs"

    .prologue
    .line 74
    sget-object v0, Lcom/logitech/harmonylink/service/EventTrackService;->mHubId:Ljava/lang/String;

    const-string v1, "Revue 2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/logitech/harmonylink/service/EventTrackService;->mHubId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 78
    :goto_1
    return-void

    .line 74
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lcom/logitech/harmonylink/service/EventTrackService;->mEventTracker:Lcom/logitech/harmonylink/util/EventTracker;

    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/util/EventTracker;->trackEvents(Lcom/logitech/connect/client/transport/NameValuePairs;)V

    goto :goto_1
.end method
