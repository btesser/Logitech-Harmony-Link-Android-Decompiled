.class Lcom/logitech/harmonylink/harmony/Dom$11;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/harmony/Dom;->startSendCommand(Lcom/logitech/harmonylink/harmony/Command;ZIZ)Z
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
    .line 629
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$11;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$11;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$902(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 623
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$11;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mKeyboardBuffer:Ljava/util/Queue;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1000(Lcom/logitech/harmonylink/harmony/Dom;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$11;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->startSendKeyboardCommandFromBuffer()Z

    .line 627
    :cond_0
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 2
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getContinued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    :cond_0
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$11;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$902(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 638
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$11;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mKeyboardBuffer:Ljava/util/Queue;
    invoke-static {v0}, Lcom/logitech/harmonylink/harmony/Dom;->access$1000(Lcom/logitech/harmonylink/harmony/Dom;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$11;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->startSendKeyboardCommandFromBuffer()Z

    .line 643
    :cond_2
    return-void

    .line 634
    :cond_3
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$11;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$902(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    goto :goto_0
.end method
