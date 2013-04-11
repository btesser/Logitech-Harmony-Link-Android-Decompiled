.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$10;
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
    .line 464
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$10;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventMessage(Lorg/jivesoftware/smack/packet/Message;Lcom/logitech/connect/client/transport/EventMessageExtension;)V
    .locals 4
    .parameter "m"
    .parameter "eventMessage"

    .prologue
    .line 468
    :try_start_0
    invoke-virtual {p2}, Lcom/logitech/connect/client/transport/EventMessageExtension;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, versionInfo:Ljava/lang/String;
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$10;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$10;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v2, v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/logitech/harmonylink/harmony/OpenAPIVersionInfo;->checkVersionOnce(Lcom/logitech/harmonylink/ui/common/BaseActivity;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$10;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->unPairAndReturnToSplash()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v1           #versionInfo:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 477
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
