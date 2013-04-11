.class public Lcom/logitech/connect/pairing/SetupActivityResponseHandler;
.super Lcom/logitech/connect/client/transport/ResponseHandler;
.source "SetupActivityResponseHandler.java"


# static fields
.field static final NOTSTARTED:I = 0x0

.field static final SENTSETUPREQUEST:I = 0x1

.field static final SETTINGUP:I = 0x2


# instance fields
.field mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/logitech/connect/ConnectClient;Lcom/logitech/connect/pairing/SetupActivityResponseObserver;)V
    .locals 1
    .parameter "client"
    .parameter "observer"

    .prologue
    .line 31
    const-string v0, "vnd.logitech.harmony/vnd.logitech.setupactivity?setup"

    invoke-direct {p0, p1, v0}, Lcom/logitech/connect/client/transport/ResponseHandler;-><init>(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mState:I

    .line 32
    iput-object p2, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "method"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->continueRequest(Lcom/logitech/connect/client/transport/NameValuePairs;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onCompleted(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getNameValuePairs()Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v0

    .line 50
    .local v0, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v1, "result"

    const-string v2, "completed"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->containsPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    invoke-interface {v1}, Lcom/logitech/connect/pairing/SetupActivityResponseObserver;->onSetupNotNeeded()V

    .line 54
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    .line 55
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    invoke-interface {v1}, Lcom/logitech/connect/pairing/SetupActivityResponseObserver;->onCancel()V

    goto :goto_0
.end method

.method protected onContinue(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    invoke-interface {v0}, Lcom/logitech/connect/pairing/SetupActivityResponseObserver;->onSetupNeeded()V

    .line 44
    :cond_0
    return-void
.end method

.method protected onError(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    invoke-interface {v0}, Lcom/logitech/connect/pairing/SetupActivityResponseObserver;->onCancel()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    .line 79
    :cond_0
    return-void
.end method

.method protected onFinally()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    invoke-interface {v0}, Lcom/logitech/connect/pairing/SetupActivityResponseObserver;->onSetupNotNeeded()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    .line 63
    :cond_0
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    invoke-interface {v0}, Lcom/logitech/connect/pairing/SetupActivityResponseObserver;->onCancel()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->mResponseObserver:Lcom/logitech/connect/pairing/SetupActivityResponseObserver;

    .line 71
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "method"

    const-string v2, "start"

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/logitech/connect/pairing/SetupActivityResponseHandler;->startRequest(Lcom/logitech/connect/client/transport/NameValuePairs;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 37
    return-void
.end method
