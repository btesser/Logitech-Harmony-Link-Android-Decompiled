.class Lcom/logitech/harmonylink/harmony/Dom$2;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IEventMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/harmony/Dom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/harmony/Dom;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$2;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventMessage(Lorg/jivesoftware/smack/packet/Message;Lcom/logitech/connect/client/transport/EventMessageExtension;)V
    .locals 3
    .parameter "m"
    .parameter "eventMessage"

    .prologue
    .line 146
    invoke-virtual {p2}, Lcom/logitech/connect/client/transport/EventMessageExtension;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, newHash:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom$2;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mHash:Ljava/lang/String;
    invoke-static {v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$100(Lcom/logitech/harmonylink/harmony/Dom;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom$2;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/logitech/harmonylink/harmony/Dom;->mInitialized:Z

    .line 149
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom$2;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/logitech/harmonylink/harmony/Dom;->mSetupRequired:Z

    .line 154
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/Dom$2;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->refresh()V

    .line 158
    :cond_0
    return-void
.end method
