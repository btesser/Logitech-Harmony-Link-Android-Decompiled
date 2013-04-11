.class Lcom/logitech/harmonylink/context/ShareContentActivity$1;
.super Ljava/lang/Object;
.source "ShareContentActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ShareContentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/ShareContentActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ShareContentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ShareContentActivity$1;->this$0:Lcom/logitech/harmonylink/context/ShareContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 36
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 39
    invoke-static {}, Lcom/logitech/harmonylink/context/ShareContentActivity;->access$000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    .line 41
    .local v1, connectClient:Lcom/logitech/connect/ConnectClient;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/logitech/harmonylink/context/ShareContentActivity$1;->this$0:Lcom/logitech/harmonylink/context/ShareContentActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/ShareContentActivity;->isPairedWithKa()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ShareContentActivity$1;->this$0:Lcom/logitech/harmonylink/context/ShareContentActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/ShareContentActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 43
    .local v0, activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ShareContentActivity$1;->this$0:Lcom/logitech/harmonylink/context/ShareContentActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/ShareContentActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-virtual {v4, v3}, Lcom/logitech/harmonylink/harmony/Dom;->startLogitechActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 49
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v2, extras:Landroid/os/Bundle;
    const-string v3, "tab"

    const-string v4, "tab_trackpad"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/logitech/harmonylink/context/ShareContentActivity$1;->this$0:Lcom/logitech/harmonylink/context/ShareContentActivity;

    const-class v4, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #calls: Lcom/logitech/harmonylink/context/ShareContentActivity;->openActivityNoHistory(Ljava/lang/Class;Landroid/os/Bundle;)V
    invoke-static {v3, v4, v2}, Lcom/logitech/harmonylink/context/ShareContentActivity;->access$100(Lcom/logitech/harmonylink/context/ShareContentActivity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 60
    .end local v0           #activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
