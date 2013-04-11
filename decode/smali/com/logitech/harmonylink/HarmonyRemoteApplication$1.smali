.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$1;
.super Ljava/lang/Object;
.source "HarmonyRemoteApplication.java"

# interfaces
.implements Lcom/logitech/connect/pairing/IPairingClientCoordinator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$1;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectClient()Lcom/logitech/connect/ConnectClient;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$1;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    return-object v0
.end method

.method public startPairing()V
    .locals 4

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$1;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$1;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v2

    const-string v3, "authenticate"

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$1;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method
