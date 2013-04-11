.class Lcom/logitech/harmonylink/harmony/Dom$6;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/harmony/Dom;->next(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/harmony/Dom;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->val$callback:Ljava/lang/Runnable;

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
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    iput-object v2, v0, Lcom/logitech/harmonylink/harmony/Dom;->mRequestActivities:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 363
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/logitech/harmonylink/harmony/Dom;->mInitialized:Z

    .line 364
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0, v2}, Lcom/logitech/harmonylink/harmony/Dom;->onDomChanged(Ljava/lang/Class;)V

    .line 365
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 369
    :try_start_0
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, responseAsString:Ljava/lang/String;
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    new-instance v4, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    invoke-direct {v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;-><init>()V

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    invoke-static {v3, v4}, Lcom/logitech/harmonylink/harmony/Dom;->access$502(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    .line 373
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    new-instance v4, Lcom/logitech/harmonylink/harmony/Devices;

    invoke-direct {v4}, Lcom/logitech/harmonylink/harmony/Devices;-><init>()V

    #setter for: Lcom/logitech/harmonylink/harmony/Dom;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;
    invoke-static {v3, v4}, Lcom/logitech/harmonylink/harmony/Dom;->access$602(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Devices;)Lcom/logitech/harmonylink/harmony/Devices;

    .line 375
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v3}, Lcom/logitech/harmonylink/harmony/Dom;->access$700(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/connect/ConnectClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getInstance(Ljava/lang/String;)Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getParser()Lcom/logitech/harmonylink/common/IUserConfigParser;

    move-result-object v1

    .line 378
    .local v1, parser:Lcom/logitech/harmonylink/common/IUserConfigParser;
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    invoke-static {v4}, Lcom/logitech/harmonylink/harmony/Dom;->access$500(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;
    invoke-static {v5}, Lcom/logitech/harmonylink/harmony/Dom;->access$600(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v5

    invoke-interface {v1, v3, v2, v4, v5}, Lcom/logitech/harmonylink/common/IUserConfigParser;->parseUserConfig(Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/String;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;Lcom/logitech/harmonylink/harmony/Devices;)V

    .line 380
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivityFromKa()V

    .line 381
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #calls: Lcom/logitech/harmonylink/harmony/Dom;->setDisplayDeviceOn()V
    invoke-static {v3}, Lcom/logitech/harmonylink/harmony/Dom;->access$800(Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 382
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->val$callback:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/harmony/Dom;->onDomChanged(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v1           #parser:Lcom/logitech/harmonylink/common/IUserConfigParser;
    .end local v2           #responseAsString:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/logitech/harmonylink/harmony/Dom;->mRequestActivities:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 391
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->val$callback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$6;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 394
    :cond_0
    return-void

    .line 382
    .restart local v1       #parser:Lcom/logitech/harmonylink/common/IUserConfigParser;
    .restart local v2       #responseAsString:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-class v4, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 385
    .end local v1           #parser:Lcom/logitech/harmonylink/common/IUserConfigParser;
    .end local v2           #responseAsString:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 386
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/logitech/harmonylink/harmony/Dom;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
