.class public Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;
.source "NoWifiConnectionActivity.java"


# instance fields
.field private final mConnectivityObserver:Lcom/logitech/connect/IConnectivityObserver;

.field mWifiSettingButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;-><init>()V

    .line 24
    new-instance v0, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity$1;-><init>(Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->mConnectivityObserver:Lcom/logitech/connect/IConnectivityObserver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f0700c9

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->mWifiSettingButton:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->mWifiSettingButton:Landroid/widget/Button;

    new-instance v1, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity$2;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity$2;-><init>(Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->mConnectivityObserver:Lcom/logitech/connect/IConnectivityObserver;

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeConnectivityObserver(Lcom/logitech/connect/IConnectivityObserver;)V

    .line 93
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onDestroy()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseMenuActivity;->onResume()V

    .line 80
    sget-object v1, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    .line 81
    .local v0, connectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->mConnectivityObserver:Lcom/logitech/connect/IConnectivityObserver;

    invoke-virtual {v1, v2}, Lcom/logitech/connect/ConnectClient;->addConnectivityObserver(Lcom/logitech/connect/IConnectivityObserver;)V

    .line 83
    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->isWifiAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-class v1, Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->openActivityNoHistory(Ljava/lang/Class;)V

    .line 85
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/NoWifiConnectionActivity;->finish()V

    .line 88
    :cond_0
    return-void
.end method
