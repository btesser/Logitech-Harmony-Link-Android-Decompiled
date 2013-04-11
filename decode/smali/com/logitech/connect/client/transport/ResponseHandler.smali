.class public Lcom/logitech/connect/client/transport/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mConnectClient:Lcom/logitech/connect/ConnectClient;

.field protected mMimeType:Ljava/lang/String;

.field protected mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/logitech/connect/client/transport/ResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/logitech/connect/client/transport/ResponseHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V
    .locals 0
    .parameter "client"
    .parameter "mimeType"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 26
    iput-object p2, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mMimeType:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public continueRequest(Lcom/logitech/connect/client/transport/NameValuePairs;)V
    .locals 3
    .parameter "pairs"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    invoke-virtual {p1}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/ConnectClient;->continueRequest(Lcom/logitech/connect/client/transport/IOpenApiRequest;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected onCompleted(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 60
    return-void
.end method

.method protected onContinue(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 56
    return-void
.end method

.method protected onError(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 64
    return-void
.end method

.method protected onFinally()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    invoke-interface {v0, p2, p3, v1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->createOpenApiResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 48
    iget-object v0, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    invoke-virtual {p0, v0}, Lcom/logitech/connect/client/transport/ResponseHandler;->onError(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V

    .line 49
    invoke-virtual {p0}, Lcom/logitech/connect/client/transport/ResponseHandler;->onFinally()V

    .line 50
    iput-object v1, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 51
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 72
    sget-boolean v0, Lcom/logitech/connect/client/transport/ResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    invoke-interface {v0}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 75
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0, p1}, Lcom/logitech/connect/client/transport/ResponseHandler;->onContinue(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p0, p1}, Lcom/logitech/connect/client/transport/ResponseHandler;->onCompleted(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V

    .line 79
    invoke-virtual {p0}, Lcom/logitech/connect/client/transport/ResponseHandler;->onFinally()V

    .line 80
    iput-object v2, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0, p1}, Lcom/logitech/connect/client/transport/ResponseHandler;->onError(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V

    .line 83
    invoke-virtual {p0}, Lcom/logitech/connect/client/transport/ResponseHandler;->onFinally()V

    .line 84
    iput-object v2, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    goto :goto_0
.end method

.method public startRequest(Lcom/logitech/connect/client/transport/NameValuePairs;)Lcom/logitech/connect/client/transport/IOpenApiRequest;
    .locals 3
    .parameter "pairs"

    .prologue
    .line 32
    sget-boolean v0, Lcom/logitech/connect/client/transport/ResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v1, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 35
    iget-object v0, p0, Lcom/logitech/connect/client/transport/ResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    return-object v0
.end method
