.class public Lcom/logitech/harmonylink/context/ShareContentActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "ShareContentActivity.java"


# static fields
.field public static final WATCH_GTV_TAB_KEY:Ljava/lang/String; = "tab"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/logitech/harmonylink/context/ShareContentActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/ShareContentActivity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/logitech/harmonylink/context/ShareContentActivity;->openActivityNoHistory(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/ShareContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 23
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 24
    .local v0, b:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 25
    .local v2, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 26
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    :cond_0
    sget-object v3, Lcom/logitech/harmonylink/context/ShareContentActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/ShareContentActivity;->isPairedWithKa()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    sget-object v3, Lcom/logitech/harmonylink/context/ShareContentActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v3

    const-string v4, "vnd.logitech.harmony/vnd.logitech.sendurl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<![CDATA["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]]>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/logitech/harmonylink/context/ShareContentActivity$1;

    invoke-direct {v6, p0}, Lcom/logitech/harmonylink/context/ShareContentActivity$1;-><init>(Lcom/logitech/harmonylink/context/ShareContentActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/ShareContentActivity;->finish()V

    .line 68
    return-void

    .line 63
    :cond_1
    sget-object v3, Lcom/logitech/harmonylink/context/ShareContentActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->returnToSplash()V

    goto :goto_0
.end method
