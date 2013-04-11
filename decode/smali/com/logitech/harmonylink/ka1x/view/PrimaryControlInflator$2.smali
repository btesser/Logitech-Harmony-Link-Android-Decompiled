.class Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;
.super Ljava/lang/Object;
.source "PrimaryControlInflator.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->retryGetPrimaryControlsXml(Lcom/logitech/connect/ConnectClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

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
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    #setter for: Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->access$002(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 157
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->onRequestFinished(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPrimaryControlXml:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->access$102(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->access$002(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 164
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;->this$0:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPrimaryControlXml:Ljava/lang/String;
    invoke-static {v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->access$100(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->onRequestFinished(Ljava/lang/String;)V

    .line 165
    return-void
.end method
