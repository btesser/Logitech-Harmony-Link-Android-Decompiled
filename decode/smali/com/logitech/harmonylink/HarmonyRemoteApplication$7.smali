.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$7;
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
    .line 342
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$7;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventMessage(Lorg/jivesoftware/smack/packet/Message;Lcom/logitech/connect/client/transport/EventMessageExtension;)V
    .locals 6
    .parameter "m"
    .parameter "eventMessage"

    .prologue
    .line 343
    invoke-virtual {p2}, Lcom/logitech/connect/client/transport/EventMessageExtension;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, response:Ljava/lang/String;
    const/4 v3, 0x0

    .line 346
    .local v3, state:Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 347
    .local v1, indexOfEqual:I
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 349
    .local v0, indexOfColon:I
    const/4 v4, -0x1

    if-le v1, v4, :cond_0

    .line 350
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_0
    iget-object v4, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$7;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasTriggeredSync:Z
    invoke-static {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1500(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ConfigInstallInProgress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    iget-object v4, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$7;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const/4 v5, 0x1

    #setter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mHasConfigInstalled:Z
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1602(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Z)Z

    .line 356
    :cond_1
    iget-object v4, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$7;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4, v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->notifySyncStateObservers(Ljava/lang/String;)V

    .line 358
    return-void
.end method
