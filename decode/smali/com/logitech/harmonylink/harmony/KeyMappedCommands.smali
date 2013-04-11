.class public Lcom/logitech/harmonylink/harmony/KeyMappedCommands;
.super Ljava/lang/Object;
.source "KeyMappedCommands.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "KeyMappedCommands"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendGetKeyMappedCommands(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;)V
    .locals 5
    .parameter "activity"
    .parameter "launcher"
    .parameter "keyMappedCommandCallBack"

    .prologue
    .line 25
    new-instance v1, Lcom/logitech/harmonylink/harmony/Commands;

    invoke-direct {v1}, Lcom/logitech/harmonylink/harmony/Commands;-><init>()V

    .line 26
    .local v1, customCommands:Lcom/logitech/harmonylink/harmony/Commands;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    .line 27
    .local v0, connectClient:Lcom/logitech/connect/ConnectClient;
    const-string v2, "vnd.logitech.harmony/vnd.logitech.keyMapping"

    const-string v3, ""

    new-instance v4, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;

    invoke-direct {v4, v1, p0, p2, p1}, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;-><init>(Lcom/logitech/harmonylink/harmony/Commands;Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 95
    return-void
.end method
