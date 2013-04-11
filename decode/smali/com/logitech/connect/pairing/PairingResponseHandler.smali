.class public Lcom/logitech/connect/pairing/PairingResponseHandler;
.super Lcom/logitech/connect/client/transport/ResponseHandler;
.source "PairingResponseHandler.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = null

.field static final NOTSTARTED:I = 0x0

.field static final PAIRING:I = 0x2

.field static final SENTPAIRINGREQUEST:I = 0x1


# instance fields
.field mCoordinator:Lcom/logitech/connect/pairing/IPairingClientCoordinator;

.field private mOnSuccess:Ljava/lang/Runnable;

.field mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

.field mPosition:I

.field mServerIdentity:Ljava/lang/String;

.field public mState:I

.field mTarget:Lcom/logitech/connect/Target;

.field mUserAuthToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/logitech/connect/pairing/PairingResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/connect/pairing/PairingResponseHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/logitech/connect/pairing/IPairingClientCoordinator;)V
    .locals 2
    .parameter "coordinator"

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/logitech/connect/pairing/IPairingClientCoordinator;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    const-string v1, "vnd.logitech.connect/vnd.logitech.pair"

    invoke-direct {p0, v0, v1}, Lcom/logitech/connect/client/transport/ResponseHandler;-><init>(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    .line 49
    iput-object p1, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mCoordinator:Lcom/logitech/connect/pairing/IPairingClientCoordinator;

    .line 50
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "method"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/logitech/connect/pairing/PairingResponseHandler;->continueRequest(Lcom/logitech/connect/client/transport/NameValuePairs;)V

    .line 240
    :cond_0
    return-void
.end method

.method public getTarget(I)Lcom/logitech/connect/Target;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getTargets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getTargets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/connect/Target;

    move-object v0, p0

    .line 56
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getTargets()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onCompleted(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 7
    .parameter "request"

    .prologue
    const/4 v6, 0x0

    .line 183
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getNameValuePairs()Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v2

    .line 185
    .local v2, pairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v3, "status"

    const-string v4, "succeeded"

    invoke-virtual {v2, v3, v4}, Lcom/logitech/connect/client/transport/NameValuePairs;->containsPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "identity"

    invoke-virtual {v2, v3}, Lcom/logitech/connect/client/transport/NameValuePairs;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    const-string v3, "identity"

    invoke-virtual {v2, v3}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, identity:Ljava/lang/String;
    const-string v3, "serverIdentity"

    invoke-virtual {v2, v3}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mServerIdentity:Ljava/lang/String;

    .line 189
    iget v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPosition:I

    invoke-virtual {p0, v3}, Lcom/logitech/connect/pairing/PairingResponseHandler;->getTarget(I)Lcom/logitech/connect/Target;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mTarget:Lcom/logitech/connect/Target;

    .line 190
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mTarget:Lcom/logitech/connect/Target;

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mTarget:Lcom/logitech/connect/Target;

    invoke-virtual {v3}, Lcom/logitech/connect/Target;->getGuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mServerIdentity:Ljava/lang/String;

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "82"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getNameValuePairs()Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v3

    const-string v4, "hubId"

    invoke-virtual {v3, v4}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, hubId:Ljava/lang/String;
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3, v0}, Lcom/logitech/connect/ConnectClient;->setHubId(Ljava/lang/String;)V

    .line 199
    .end local v0           #hubId:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    iget-object v4, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mServerIdentity:Ljava/lang/String;

    iget-object v5, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mUserAuthToken:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v5}, Lcom/logitech/connect/ConnectClient;->setPairedIdentity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    invoke-interface {v3}, Lcom/logitech/connect/pairing/PinResponseObserver;->onSuccess()V

    .line 201
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 206
    .end local v1           #identity:Ljava/lang/String;
    :cond_2
    :goto_0
    iput-object v6, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    .line 207
    const/4 v3, 0x0

    iput v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    .line 208
    iput-object v6, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 209
    return-void

    .line 202
    :cond_3
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    invoke-interface {v3}, Lcom/logitech/connect/pairing/PinResponseObserver;->onCancel()V

    goto :goto_0
.end method

.method protected onContinue(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 9
    .parameter "request"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 152
    iget v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getNameValuePairs()Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v3

    const-string v4, "status"

    const-string v5, "pairingStarted"

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->containsPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getNameValuePairs()Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v3

    const-string v4, "pin"

    invoke-virtual {v3, v4}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, pin:Ljava/lang/String;
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getNameValuePairs()Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v3

    const-string v4, "hub"

    invoke-virtual {v3, v4}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, hubType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 157
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3, v0}, Lcom/logitech/connect/ConnectClient;->setHubId(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const-string v4, "com.logitech.remote"

    invoke-virtual {v3, v4, v6}, Lcom/logitech/connect/ConnectClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 161
    .local v1, mPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pin"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mCoordinator:Lcom/logitech/connect/pairing/IPairingClientCoordinator;

    invoke-interface {v3}, Lcom/logitech/connect/pairing/IPairingClientCoordinator;->startPairing()V

    .line 163
    iput v7, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    .line 178
    .end local v0           #hubType:Ljava/lang/String;
    .end local v1           #mPref:Landroid/content/SharedPreferences;
    .end local v2           #pin:Ljava/lang/String;
    :goto_0
    return-void

    .line 165
    :cond_1
    iget v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    if-ne v3, v7, :cond_2

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getNameValuePairs()Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v3

    const-string v4, "status"

    const-string v5, "pinDidNotMatch"

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->containsPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    invoke-interface {v3}, Lcom/logitech/connect/pairing/PinResponseObserver;->onFailedPin()V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    if-eqz v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    invoke-interface {v3}, Lcom/logitech/connect/pairing/PinResponseObserver;->onCancel()V

    .line 174
    iput-object v8, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    .line 176
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    .line 177
    iput-object v8, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    goto :goto_0
.end method

.method protected onFinally()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    invoke-interface {v0}, Lcom/logitech/connect/pairing/PinResponseObserver;->onCancel()V

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    .line 218
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    invoke-interface {v0}, Lcom/logitech/connect/pairing/PinResponseObserver;->onCancel()V

    .line 226
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 228
    return-void
.end method

.method public setCurrentConnectionTarget(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0, p1}, Lcom/logitech/connect/ConnectClient;->setCurrentConnectionTarget(I)Z

    move-result v0

    return v0
.end method

.method public setPinResponseObserver(Lcom/logitech/connect/pairing/PinResponseObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-eqz v0, :cond_0

    .line 244
    iput-object p1, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPinResponseObserver:Lcom/logitech/connect/pairing/PinResponseObserver;

    .line 246
    :cond_0
    return-void
.end method

.method public startPairing(ILjava/lang/Runnable;)V
    .locals 2
    .parameter "position"
    .parameter "onSuccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    iput p1, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPosition:I

    .line 70
    invoke-virtual {p0, p1}, Lcom/logitech/connect/pairing/PairingResponseHandler;->getTarget(I)Lcom/logitech/connect/Target;

    move-result-object v0

    .line 71
    .local v0, target:Lcom/logitech/connect/Target;
    invoke-virtual {v0}, Lcom/logitech/connect/Target;->getGuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mServerIdentity:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v0, p2}, Lcom/logitech/connect/pairing/PairingResponseHandler;->startPairing(Lcom/logitech/connect/Target;Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public startPairing(Lcom/logitech/connect/Target;Ljava/lang/Runnable;)V
    .locals 9
    .parameter "target"
    .parameter "onSuccess"

    .prologue
    const/4 v8, 0x1

    .line 76
    iput-object p2, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mOnSuccess:Ljava/lang/Runnable;

    .line 78
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getServerIdentity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/logitech/connect/ConnectClient;->setHubId(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mServerIdentity:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getServerIdentity()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mServerIdentity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v8

    .line 83
    .local v0, alreadyPaired:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/ConnectClient;->connectTo(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    invoke-static {}, Lcom/logitech/connect/Utils;->getModelName()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, modelNameEncoded:Ljava/lang/String;
    new-instance v3, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v4, "method"

    const-string v5, "pair"

    invoke-direct {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/logitech/connect/pairing/PairingResponseHandler;->startRequest(Lcom/logitech/connect/client/transport/NameValuePairs;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 96
    iput v8, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    .line 100
    .end local v0           #alreadyPaired:Z
    .end local v2           #modelNameEncoded:Ljava/lang/String;
    :goto_2
    return-void

    .line 80
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 86
    .restart local v0       #alreadyPaired:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 87
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/logitech/connect/pairing/PairingResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Exception while connecting as already paired user. "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 90
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getPort()I

    move-result v5

    const-string v6, "guest"

    const-string v7, ""

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/logitech/connect/ConnectClient;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .end local v0           #alreadyPaired:Z
    :cond_2
    sget-object v3, Lcom/logitech/connect/pairing/PairingResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, " Invalid Connect Client connection state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public startPairingOlive(ILjava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .parameter "position"
    .parameter "onSuccess"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    iput p1, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mPosition:I

    .line 115
    invoke-virtual {p0, p1}, Lcom/logitech/connect/pairing/PairingResponseHandler;->getTarget(I)Lcom/logitech/connect/Target;

    move-result-object v0

    .line 116
    .local v0, target:Lcom/logitech/connect/Target;
    invoke-virtual {v0}, Lcom/logitech/connect/Target;->getGuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mServerIdentity:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mUserAuthToken:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mUserAuthToken:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, v1}, Lcom/logitech/connect/pairing/PairingResponseHandler;->startPairingOlive(Lcom/logitech/connect/Target;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public startPairingOlive(Lcom/logitech/connect/Target;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 8
    .parameter "target"
    .parameter "onSuccess"
    .parameter "token"

    .prologue
    const/4 v7, 0x1

    .line 122
    iput-object p2, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mOnSuccess:Ljava/lang/Runnable;

    .line 124
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getServerIdentity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/logitech/connect/ConnectClient;->setHubId(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mServerIdentity:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getServerIdentity()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mServerIdentity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v7

    .line 130
    .local v0, alreadyPaired:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/connect/ConnectClient;->connectTo(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    invoke-static {}, Lcom/logitech/connect/Utils;->getModelName()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, modelNameEncoded:Ljava/lang/String;
    new-instance v3, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v4, "method"

    const-string v5, "pair"

    invoke-direct {v3, v4, v5}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v3

    const-string v4, "token"

    invoke-virtual {v3, v4, p3}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/logitech/connect/pairing/PairingResponseHandler;->startRequest(Lcom/logitech/connect/client/transport/NameValuePairs;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 144
    iput v7, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    .line 148
    .end local v0           #alreadyPaired:Z
    .end local v2           #modelNameEncoded:Ljava/lang/String;
    :goto_2
    return-void

    .line 127
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 133
    .restart local v0       #alreadyPaired:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 134
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/logitech/connect/pairing/PairingResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Exception in connectTo(string, string)"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 137
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getPort()I

    move-result v5

    const-string v6, "guest"

    invoke-virtual {v3, v4, v5, v6, p3}, Lcom/logitech/connect/ConnectClient;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    .end local v0           #alreadyPaired:Z
    :cond_2
    sget-object v3, Lcom/logitech/connect/pairing/PairingResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, " Invalid Connect Client connection state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public startPairingOliveOnPasswordChange(Lcom/logitech/connect/Target;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 5
    .parameter "target"
    .parameter "onSuccess"
    .parameter "token"

    .prologue
    .line 103
    iput-object p2, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mOnSuccess:Ljava/lang/Runnable;

    .line 104
    iget-object v1, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/logitech/connect/Target;->getPort()I

    move-result v3

    const-string v4, "guest"

    invoke-virtual {v1, v2, v3, v4, p3}, Lcom/logitech/connect/ConnectClient;->connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/logitech/connect/Utils;->getModelName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, modelNameEncoded:Ljava/lang/String;
    new-instance v1, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v2, "method"

    const-string v3, "pair"

    invoke-direct {v1, v2, v3}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/logitech/connect/pairing/PairingResponseHandler;->startRequest(Lcom/logitech/connect/client/transport/NameValuePairs;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 109
    const/4 v1, 0x1

    iput v1, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    .line 110
    return-void
.end method

.method public tryPin(Ljava/lang/String;)V
    .locals 3
    .parameter "pin"

    .prologue
    .line 231
    iget v0, p0, Lcom/logitech/connect/pairing/PairingResponseHandler;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 232
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    const-string v1, "method"

    const-string v2, "tryPin"

    invoke-direct {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pin"

    invoke-virtual {v0, v1, p1}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/logitech/connect/pairing/PairingResponseHandler;->continueRequest(Lcom/logitech/connect/client/transport/NameValuePairs;)V

    .line 234
    :cond_0
    return-void
.end method
