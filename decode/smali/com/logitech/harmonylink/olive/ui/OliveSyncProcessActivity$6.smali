.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$6;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->checkSyncStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$6;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$6;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 363
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "400"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$6;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getErrorString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->requestFailed(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1500(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;Ljava/lang/String;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, mSyncStatus:Ljava/lang/String;
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, vresponse:Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 370
    .local v1, indexOfEqual:I
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 372
    .local v0, indexOfColon:I
    const/4 v4, -0x1

    if-le v1, v4, :cond_2

    .line 373
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 377
    :cond_2
    const-string v4, "ManualSyncInactive"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 378
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$6;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const/4 v5, 0x2

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showAppDialog(I)V
    invoke-static {v4, v5}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1600(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$6;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->getVersionNumber()V
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$1700(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V

    goto :goto_0
.end method
