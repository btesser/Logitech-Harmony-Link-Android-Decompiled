.class Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$4;
.super Ljava/lang/Object;
.source "WatchGTVActivity.java"

# interfaces
.implements Lcom/logitech/connect/IGlobalResponseObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$4;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPacketSendingFailed(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$4;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->hasUpdated:Z
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->access$402(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;Z)Z

    .line 297
    return-void
.end method

.method public onPacketSendingStarted()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onPacketSendingSucceeded()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onServiceUnauthorized()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onServiceUnavailable()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method
