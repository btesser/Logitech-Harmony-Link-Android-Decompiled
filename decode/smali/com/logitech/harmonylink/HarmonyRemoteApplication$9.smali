.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;
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
    .line 403
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventMessage(Lorg/jivesoftware/smack/packet/Message;Lcom/logitech/connect/client/transport/EventMessageExtension;)V
    .locals 7
    .parameter "m"
    .parameter "eventMessage"

    .prologue
    const/4 v6, 0x0

    .line 404
    invoke-static {v6}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->setHasBeenReset(Z)V

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, newlyStartedActivityId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 409
    .local v0, currentRunningActivityinApp:Ljava/lang/String;
    iget-object v5, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 410
    iget-object v5, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_0
    invoke-virtual {p2}, Lcom/logitech/connect/client/transport/EventMessageExtension;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, response:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 415
    .local v1, indexOfEqual:I
    const/4 v5, -0x1

    if-le v1, v5, :cond_3

    .line 416
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 421
    :goto_0
    const-string v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 422
    iget-object v5, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v5, v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    instance-of v5, v5, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v5, v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    instance-of v5, v5, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    if-nez v5, :cond_1

    .line 424
    iget-object v5, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentActivity(Ljava/lang/String;)V

    .line 430
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 431
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.logitech.harmonylink.ACTIVITY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v5, "currentActivity"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v5, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5, v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    if-eqz v0, :cond_2

    const-string v5, "-1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    iget-object v5, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/harmony/Dom;->setHasPoweredOffByCurrentClient(Z)V

    .line 459
    :cond_2
    return-void

    .line 418
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    move-object v3, v4

    goto :goto_0

    .line 427
    :cond_4
    iget-object v5, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$9;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mDom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-static {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$400(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentActivity(Ljava/lang/String;)V

    goto :goto_1
.end method
