.class public Lcom/logitech/harmonylink/service/ContentCompareService;
.super Landroid/app/Service;
.source "ContentCompareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/service/ContentCompareService$1;,
        Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;,
        Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/logitech/harmonylink/service/ContentCompareService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/service/ContentCompareService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;-><init>(Lcom/logitech/harmonylink/service/ContentCompareService;Lcom/logitech/harmonylink/service/ContentCompareService$1;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/service/ContentCompareService;->mBinder:Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/service/ContentCompareService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/logitech/harmonylink/service/ContentCompareService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/logitech/harmonylink/service/ContentCompareService;->mBinder:Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    iput-object p0, p0, Lcom/logitech/harmonylink/service/ContentCompareService;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 48
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 43
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/logitech/harmonylink/service/ContentCompareService;->mBinder:Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/logitech/harmonylink/service/ContentCompareService;->mBinder:Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/service/ContentCompareService$MyBinder;->removeObserver()V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
