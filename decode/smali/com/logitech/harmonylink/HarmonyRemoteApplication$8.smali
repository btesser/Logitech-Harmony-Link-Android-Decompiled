.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;
.super Ljava/lang/Object;
.source "HarmonyRemoteApplication.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IEventMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/HarmonyRemoteApplication;
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
    .line 364
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventMessage(Lorg/jivesoftware/smack/packet/Message;Lcom/logitech/connect/client/transport/EventMessageExtension;)V
    .locals 5
    .parameter "m"
    .parameter "eventMessage"

    .prologue
    .line 365
    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v3, v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    instance-of v3, v3, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v3, v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    instance-of v3, v3, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    if-eqz v3, :cond_1

    .line 367
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->setHasBeenReset(Z)V

    .line 374
    :cond_1
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Revue 2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->refresh()V

    .line 378
    :cond_2
    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasConfigInstalled:Z
    invoke-static {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1600(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 379
    invoke-virtual {p2}, Lcom/logitech/connect/client/transport/EventMessageExtension;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, response:Ljava/lang/String;
    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasTriggeredSync:Z
    invoke-static {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1500(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 382
    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v3, v3, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    instance-of v3, v3, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    if-eqz v3, :cond_3

    .line 383
    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/harmony/Dom;->hashCheckForOlive(Lcom/logitech/connect/client/transport/IResponseHandler;)V

    .line 386
    :cond_3
    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1700(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 387
    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mSyncStateObservers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1700(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/common/ISyncStateObserver;

    .line 388
    .local v2, syncStateObserver:Lcom/logitech/harmonylink/common/ISyncStateObserver;
    invoke-interface {v2}, Lcom/logitech/harmonylink/common/ISyncStateObserver;->onSyncComplete()V

    goto :goto_0

    .line 392
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #syncStateObserver:Lcom/logitech/harmonylink/common/ISyncStateObserver;
    :cond_4
    iget-object v3, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$8;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const/4 v4, 0x0

    #setter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasConfigInstalled:Z
    invoke-static {v3, v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1602(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Z)Z

    .line 394
    .end local v1           #response:Ljava/lang/String;
    :cond_5
    return-void
.end method
