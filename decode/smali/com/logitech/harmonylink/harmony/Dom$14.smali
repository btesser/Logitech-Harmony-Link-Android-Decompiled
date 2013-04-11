.class Lcom/logitech/harmonylink/harmony/Dom$14;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/harmony/Dom;->startSendtext(Ljava/lang/String;I)Z
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
    .line 712
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$14;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

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
    .line 709
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$14;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$902(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 710
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 713
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$14;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mSendCommandRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->access$902(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 717
    :cond_1
    return-void
.end method
