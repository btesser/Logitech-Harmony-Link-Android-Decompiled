.class public Lcom/logitech/harmonylink/util/DiscoveryService;
.super Lcom/logitech/harmonylink/util/JsonTransport;
.source "DiscoveryService.java"


# static fields
.field public static final DEFAULT_DISCOVERY_SERVICE:Ljava/lang/String; = "svcs-staging-a2.myharmony.com"

.field private static final DISCOVERY:Ljava/lang/String; = "DISCOVERY"

.field protected static final EMAIL_IN:Ljava/lang/String; = "email"

.field protected static final PASSWORD_IN:Ljava/lang/String; = "password"

.field private static final PERIOD:J = 0xa4cb800L


# instance fields
.field private mDiscoveryServiceUrl:Ljava/lang/String;

.field private mLastUpdateTime:J

.field private mOperationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/logitech/harmonylink/util/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/logitech/harmonylink/util/JsonTransport;-><init>()V

    return-void
.end method

.method private getJsonOperations(Lcom/logitech/harmonylink/util/ServiceDescription;)Ljava/util/HashMap;
    .locals 14
    .parameter "serviceDescription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/logitech/harmonylink/util/ServiceDescription;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/logitech/harmonylink/util/ServiceDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/logitech/harmonylink/util/ServiceDescription;->getMethodName()Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, operationName:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v1, connectionParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "method"

    invoke-virtual {v1, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v12, "svc"

    invoke-virtual {p1}, Lcom/logitech/harmonylink/util/ServiceDescription;->getUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v3, httpParams:Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "clientTypeId"

    const-string v13, "Redbull 1.0"

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v12, 0x0

    invoke-virtual {p0, v1, v12, v3}, Lcom/logitech/harmonylink/util/DiscoveryService;->executeHttpRequest(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    .line 57
    .local v10, response:Lorg/json/JSONObject;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v8, operationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/logitech/harmonylink/util/ServiceDescription;>;"
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Result"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 60
    .local v6, map:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_0

    .line 61
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 62
    .local v11, serviceEntry:Lorg/json/JSONObject;
    const-string v12, "Identifier"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, identifier:Ljava/lang/String;
    const-string v12, "Name"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, name:Ljava/lang/String;
    const-string v12, "Address"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, address:Ljava/lang/String;
    new-instance v12, Lcom/logitech/harmonylink/util/ServiceDescription;

    invoke-direct {v12, v0, v7}, Lcom/logitech/harmonylink/util/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v0           #address:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #identifier:Ljava/lang/String;
    .end local v6           #map:Lorg/json/JSONArray;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #operationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/logitech/harmonylink/util/ServiceDescription;>;"
    .end local v10           #response:Lorg/json/JSONObject;
    .end local v11           #serviceEntry:Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 52
    .local v2, e:Lorg/json/JSONException;
    new-instance v12, Lcom/logitech/harmonylink/error/ClientParseException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcom/logitech/harmonylink/error/ClientParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v12

    .line 69
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v8       #operationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/logitech/harmonylink/util/ServiceDescription;>;"
    .restart local v10       #response:Lorg/json/JSONObject;
    :catch_1
    move-exception v12

    move-object v2, v12

    .line 70
    .restart local v2       #e:Lorg/json/JSONException;
    new-instance v12, Lcom/logitech/harmonylink/error/ClientParseException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcom/logitech/harmonylink/error/ClientParseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v12

    .line 78
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v4       #i:I
    .restart local v6       #map:Lorg/json/JSONArray;
    :cond_0
    return-object v8
.end method


# virtual methods
.method public executeJsonHttpRequest(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter
    .parameter "requestData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, connectionParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, httpHeaders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/logitech/harmonylink/util/DiscoveryService;->executeHttpRequest(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getAlphaClientTypeId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    const-string v0, "%s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getProjectType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getProjectVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "alpha"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBetaClientTypeId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getProjectType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getProjectVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "dhg"

    return-object v0
.end method

.method public getClientTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getBetaClientTypeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDiscoveryServiceHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "svcs-staging-a2.myharmony.com"

    return-object v0
.end method

.method public getDiscoveryServiceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mDiscoveryServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationURL(Ljava/lang/String;)Lcom/logitech/harmonylink/util/ServiceDescription;
    .locals 7
    .parameter "operationId"

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    .local v0, currentTime:J
    iget-object v3, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mOperationMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mLastUpdateTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mLastUpdateTime:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xa4cb800

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 147
    :cond_0
    iput-wide v0, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mLastUpdateTime:J

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getUrl()Lcom/logitech/harmonylink/util/ServiceDescription;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/logitech/harmonylink/util/DiscoveryService;->getJsonOperations(Lcom/logitech/harmonylink/util/ServiceDescription;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mOperationMap:Ljava/util/HashMap;

    .line 150
    iget-object v3, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mOperationMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mOperationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getSecondaryUrl()Lcom/logitech/harmonylink/util/ServiceDescription;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/logitech/harmonylink/util/DiscoveryService;->getJsonOperations(Lcom/logitech/harmonylink/util/ServiceDescription;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mOperationMap:Ljava/util/HashMap;
    :try_end_0
    .catch Lcom/logitech/harmonylink/error/ProcessedErrorResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mOperationMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/util/ServiceDescription;

    return-object p0

    .line 153
    .restart local p0
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 156
    .local v2, e:Lcom/logitech/harmonylink/error/ProcessedErrorResponseException;
    invoke-virtual {v2}, Lcom/logitech/harmonylink/error/ProcessedErrorResponseException;->getServerErrorResponse()Lcom/logitech/harmonylink/error/ServerErrorResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/error/ServerErrorResponse;->getErrorCode()I

    move-result v3

    const/16 v4, 0x41d

    if-eq v3, v4, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getSecondaryUrl()Lcom/logitech/harmonylink/util/ServiceDescription;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/logitech/harmonylink/util/DiscoveryService;->getJsonOperations(Lcom/logitech/harmonylink/util/ServiceDescription;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mOperationMap:Ljava/util/HashMap;

    goto :goto_0

    .line 159
    :cond_3
    throw v2
.end method

.method public getProjectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "Olive"

    return-object v0
.end method

.method public getProjectVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "1.0"

    return-object v0
.end method

.method protected getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "https"

    return-object v0
.end method

.method public getSecondaryUrl()Lcom/logitech/harmonylink/util/ServiceDescription;
    .locals 5

    .prologue
    .line 130
    new-instance v0, Lcom/logitech/harmonylink/util/ServiceDescription;

    const-string v1, "%s://%s/Discovery.svc/json/"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getProtocol()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "svcs.myharmony.com/Discovery"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetJsonOperations"

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/util/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUrl()Lcom/logitech/harmonylink/util/ServiceDescription;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getDiscoveryServiceUrl()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, discoveryServiceUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 116
    .local v1, sd:Lcom/logitech/harmonylink/util/ServiceDescription;
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/logitech/harmonylink/util/ServiceDescription;

    .end local v1           #sd:Lcom/logitech/harmonylink/util/ServiceDescription;
    const-string v3, "%s/Discovery.svc/json/"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v5, "DISCOVERY"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GetJsonOperations"

    invoke-direct {v1, v3, v4}, Lcom/logitech/harmonylink/util/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #sd:Lcom/logitech/harmonylink/util/ServiceDescription;
    move-object v2, v1

    .line 125
    .end local v1           #sd:Lcom/logitech/harmonylink/util/ServiceDescription;
    .local v2, sd:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 122
    .end local v2           #sd:Ljava/lang/Object;
    .restart local v1       #sd:Lcom/logitech/harmonylink/util/ServiceDescription;
    :cond_0
    new-instance v1, Lcom/logitech/harmonylink/util/ServiceDescription;

    .end local v1           #sd:Lcom/logitech/harmonylink/util/ServiceDescription;
    const-string v3, "%s://%s/%s/Discovery.svc/json/"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getProtocol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/logitech/harmonylink/util/DiscoveryService;->getDiscoveryServiceHost()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "DISCOVERY"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GetJsonOperations"

    invoke-direct {v1, v3, v4}, Lcom/logitech/harmonylink/util/ServiceDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #sd:Lcom/logitech/harmonylink/util/ServiceDescription;
    move-object v2, v1

    .line 125
    .restart local v2       #sd:Ljava/lang/Object;
    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mOperationMap:Ljava/util/HashMap;

    .line 172
    return-void
.end method

.method public setDiscoveryServiceUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "discoveryServiceUrl"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/logitech/harmonylink/util/DiscoveryService;->mDiscoveryServiceUrl:Ljava/lang/String;

    .line 180
    return-void
.end method
