.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;
.super Ljava/lang/Object;
.source "HarmonyRemoteApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/HarmonyRemoteApplication;->onCreate()V
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
    .line 324
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 279
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    sget-object v3, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    iput-object v3, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 280
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;
    invoke-static {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$500(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/IGlobalResponseObserver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/logitech/connect/ConnectClient;->addGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V

    .line 283
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v3, "vnd.logitech.connect/?version"

    iget-object v4, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mVersionMessageHandler:Lcom/logitech/connect/client/transport/IEventMessageHandler;
    invoke-static {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$600(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/client/transport/IEventMessageHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/logitech/connect/ConnectClient;->putEventMessageHandler(Ljava/lang/String;Lcom/logitech/connect/client/transport/IEventMessageHandler;)V

    .line 289
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    new-instance v3, Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v4, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v4, v4, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v5, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSetupNeededObserver:Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;
    invoke-static {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$700(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDomObserver:Lcom/logitech/harmonylink/harmony/IDomObserver;
    invoke-static {v6}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$800(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/IDomObserver;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/logitech/harmonylink/harmony/Dom;-><init>(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/ISetupNeededObserver;Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    #setter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$402(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/Dom;

    .line 291
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/Dom;->setContext(Landroid/content/Context;)V

    .line 292
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;
    invoke-static {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/IConnectClientObserver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/logitech/connect/ConnectClient;->addObserver(Lcom/logitech/connect/IConnectClientObserver;)V

    .line 293
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;
    invoke-static {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1000(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/ILoginFailObserver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/logitech/connect/ConnectClient;->addLoginFailObserver(Lcom/logitech/connect/ILoginFailObserver;)V

    .line 297
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v3, "vnd.logitech.harmony/vnd.logitech.harmony.engine?startActivityFinished"

    iget-object v4, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOnActivityStarted:Lcom/logitech/connect/client/transport/IEventMessageHandler;
    invoke-static {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1100(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/client/transport/IEventMessageHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/logitech/connect/ConnectClient;->putEventMessageHandler(Ljava/lang/String;Lcom/logitech/connect/client/transport/IEventMessageHandler;)V

    .line 304
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v3, "vnd.logitech.harmony/vnd.logitech.harmony.engine?didReset"

    iget-object v4, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOnSyncDidReset:Lcom/logitech/connect/client/transport/IEventMessageHandler;
    invoke-static {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1200(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/client/transport/IEventMessageHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/logitech/connect/ConnectClient;->putEventMessageHandler(Ljava/lang/String;Lcom/logitech/connect/client/transport/IEventMessageHandler;)V

    .line 309
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v3, "vnd.logitech.harmony/vnd.logitech.harmony.manualsync?stateChange"

    iget-object v4, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncBroadcastHarmonyRemoteApp:Lcom/logitech/connect/client/transport/IEventMessageHandler;
    invoke-static {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1300(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/client/transport/IEventMessageHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/logitech/connect/ConnectClient;->putEventMessageHandler(Ljava/lang/String;Lcom/logitech/connect/client/transport/IEventMessageHandler;)V

    .line 314
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOneShotServiceStartObserverList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 316
    .local v1, oneShotServiceStartObserver:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v2, v1}, Lcom/logitech/connect/ConnectClient;->post(Ljava/lang/Runnable;)V

    .line 317
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mOneShotServiceStartObserverList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    .end local v1           #oneShotServiceStartObserver:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClientObserver:Lcom/logitech/connect/IConnectClientObserver;
    invoke-static {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/IConnectClientObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeObserver(Lcom/logitech/connect/IConnectClientObserver;)V

    .line 326
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLoginFailObserver:Lcom/logitech/connect/ILoginFailObserver;
    invoke-static {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1000(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/ILoginFailObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeLoginFailObserver(Lcom/logitech/connect/ILoginFailObserver;)V

    .line 327
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$6;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mGlobalResonseObserver:Lcom/logitech/connect/IGlobalResponseObserver;
    invoke-static {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$500(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/connect/IGlobalResponseObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->removeGlobalResponseObserver(Lcom/logitech/connect/IGlobalResponseObserver;)V

    .line 329
    return-void
.end method
