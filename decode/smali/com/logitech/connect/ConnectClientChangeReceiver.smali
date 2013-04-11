.class public Lcom/logitech/connect/ConnectClientChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectClientChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    sget-object v0, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0, p1, p2}, Lcom/logitech/connect/ConnectClient;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    :cond_0
    return-void
.end method
