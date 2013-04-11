.class Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/ServerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$0:Lcom/logitech/harmonylink/context/ServerListActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ServerListActivity;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput p2, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->mPosition:I

    .line 353
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 357
    iget-object v5, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/context/ServerListActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 359
    .local v3, mainApp:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;

    move-result-object v5

    iget v6, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/logitech/connect/pairing/PairingResponseHandler;->setCurrentConnectionTarget(I)Z

    .line 360
    iget-object v5, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/connect/pairing/PairingResponseHandler;->getTargets()Ljava/util/ArrayList;

    move-result-object v6

    #calls: Lcom/logitech/harmonylink/context/ServerListActivity;->updateWith(Ljava/util/ArrayList;)V
    invoke-static {v5, v6}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$000(Lcom/logitech/harmonylink/context/ServerListActivity;Ljava/util/ArrayList;)V

    .line 361
    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;

    move-result-object v5

    iget v6, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/logitech/connect/pairing/PairingResponseHandler;->getTarget(I)Lcom/logitech/connect/Target;

    move-result-object v4

    .line 363
    .local v4, target:Lcom/logitech/connect/Target;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v4}, Lcom/logitech/connect/Target;->getVersion()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->checkVersionFromServerList(Lcom/logitech/harmonylink/ui/common/BaseActivity;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    :try_start_0
    invoke-virtual {v4}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Revue 2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    :cond_0
    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getPairingResponseHandler()Lcom/logitech/connect/pairing/PairingResponseHandler;

    move-result-object v5

    iget v6, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->mPosition:I

    new-instance v7, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener$1;

    invoke-direct {v7, p0}, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener$1;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;)V

    invoke-virtual {v5, v6, v7}, Lcom/logitech/connect/pairing/PairingResponseHandler;->startPairing(ILjava/lang/Runnable;)V

    .line 395
    :cond_1
    :goto_0
    return-void

    .line 382
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "targetname"

    invoke-virtual {v4}, Lcom/logitech/connect/Target;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v5, "position"

    iget v6, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->mPosition:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/context/ServerListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/logitech/harmonylink/context/LoginActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v2, i:Landroid/content/Intent;
    const-string v5, "target"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 388
    iget-object v5, p0, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    const/4 v6, 0x7

    invoke-virtual {v5, v2, v6}, Lcom/logitech/harmonylink/context/ServerListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #i:Landroid/content/Intent;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 391
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
