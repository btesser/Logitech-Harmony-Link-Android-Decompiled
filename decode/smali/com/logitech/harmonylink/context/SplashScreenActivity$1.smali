.class Lcom/logitech/harmonylink/context/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/SplashScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    iget-object v3, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;

    iget-object v3, v3, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mLogitechApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    .line 101
    .local v0, connectClient:Lcom/logitech/connect/ConnectClient;
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->createPowerWakeLock()V

    .line 102
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->isWifiAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;

    const-class v4, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->openActivityNoResult(Ljava/lang/Class;)V

    .line 104
    iget-object v3, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->finish()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasLaunchedHome:Z

    .line 108
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->connect()V

    .line 109
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    iget-object v3, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->skip()V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;

    iget-boolean v3, v3, Lcom/logitech/harmonylink/context/SplashScreenActivity;->mHasBeenSkipped:Z

    if-nez v3, :cond_0

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 117
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/logitech/harmonylink/context/SplashScreenActivity$1$1;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/SplashScreenActivity$1$1;-><init>(Lcom/logitech/harmonylink/context/SplashScreenActivity$1;)V

    .line 122
    .local v2, runnable:Ljava/lang/Runnable;
    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    iget-object v3, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;

    const/4 v4, 0x1

    #setter for: Lcom/logitech/harmonylink/context/SplashScreenActivity;->mGoToHomeWhenAuthenticated:Z
    invoke-static {v3, v4}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->access$002(Lcom/logitech/harmonylink/context/SplashScreenActivity;Z)Z

    goto :goto_0
.end method
