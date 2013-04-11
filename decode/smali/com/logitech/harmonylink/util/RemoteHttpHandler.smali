.class public Lcom/logitech/harmonylink/util/RemoteHttpHandler;
.super Ljava/lang/Object;
.source "RemoteHttpHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field protected static final METHOD:Ljava/lang/String; = "method"

.field protected static final SVC:Ljava/lang/String; = "svc"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/logitech/harmonylink/util/RemoteHttpHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/util/RemoteHttpHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .parameter "discoveryServiceUrl"
    .parameter "channelName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NullPointerException;,
            Lcom/logitech/harmonylink/error/ProcessedErrorResponseException;,
            Lcom/logitech/harmonylink/error/ResponseException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v0, connectionParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/logitech/harmonylink/util/DiscoveryService;

    invoke-direct {v1}, Lcom/logitech/harmonylink/util/DiscoveryService;-><init>()V

    .line 25
    .local v1, discoveryService:Lcom/logitech/harmonylink/util/DiscoveryService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 26
    invoke-virtual {v1, p1}, Lcom/logitech/harmonylink/util/DiscoveryService;->setDiscoveryServiceUrl(Ljava/lang/String;)V

    .line 28
    :cond_0
    const-string v6, "GuideManager/SearchIcon"

    invoke-virtual {v1, v6}, Lcom/logitech/harmonylink/util/DiscoveryService;->getOperationURL(Ljava/lang/String;)Lcom/logitech/harmonylink/util/ServiceDescription;

    move-result-object v5

    .line 30
    .local v5, serviceDescription:Lcom/logitech/harmonylink/util/ServiceDescription;
    invoke-virtual {v5}, Lcom/logitech/harmonylink/util/ServiceDescription;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, methodName:Ljava/lang/String;
    const-string v6, "method"

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v6, "svc"

    invoke-virtual {v5}, Lcom/logitech/harmonylink/util/ServiceDescription;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, outputJson:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v4, pairs:Lorg/json/JSONObject;
    const-string v6, "imageSize"

    const-string v7, "96"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v6, "searchCriteria"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v6, "keyword"

    invoke-virtual {v4, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v4}, Lcom/logitech/harmonylink/util/DiscoveryService;->executeHttpRequest(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 42
    return-object v3
.end method
