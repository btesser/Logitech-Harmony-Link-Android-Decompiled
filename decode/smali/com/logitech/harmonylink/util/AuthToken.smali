.class public Lcom/logitech/harmonylink/util/AuthToken;
.super Ljava/lang/Object;
.source "AuthToken.java"


# static fields
.field protected static final AUTH_TOKEN_IN:Ljava/lang/String; = "userAuthToken"

.field protected static final AUTH_TOKEN_OUT:Ljava/lang/String; = "UserAuthToken"

.field protected static final EMAIL_IN:Ljava/lang/String; = "email"

.field protected static final ERROR:Ljava/lang/String; = "Message"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field protected static final METHOD:Ljava/lang/String; = "method"

.field protected static final OPERATION_URL_GET_TOKEN:Ljava/lang/String; = "Security/GetUserAuthToken"

.field protected static final PASSWORD_IN:Ljava/lang/String; = "password"

.field protected static final RESULT:Ljava/lang/String; = "Result"

.field protected static final SVC:Ljava/lang/String; = "svc"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/logitech/harmonylink/util/AuthToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/util/AuthToken;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "discoveryServiceUrl"
    .parameter "email"
    .parameter "password"

    .prologue
    const/4 v11, 0x0

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v0, connectionParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/logitech/harmonylink/util/DiscoveryService;

    invoke-direct {v1}, Lcom/logitech/harmonylink/util/DiscoveryService;-><init>()V

    .line 22
    .local v1, discoveryService:Lcom/logitech/harmonylink/util/DiscoveryService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 23
    invoke-virtual {v1, p1}, Lcom/logitech/harmonylink/util/DiscoveryService;->setDiscoveryServiceUrl(Ljava/lang/String;)V

    .line 26
    :cond_0
    const-string v9, "Security/GetUserAuthToken"

    invoke-virtual {v1, v9}, Lcom/logitech/harmonylink/util/DiscoveryService;->getOperationURL(Ljava/lang/String;)Lcom/logitech/harmonylink/util/ServiceDescription;

    move-result-object v7

    .line 28
    .local v7, serviceDescription:Lcom/logitech/harmonylink/util/ServiceDescription;
    invoke-virtual {v7}, Lcom/logitech/harmonylink/util/ServiceDescription;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, methodName:Ljava/lang/String;
    const-string v9, "method"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v9, "svc"

    invoke-virtual {v7}, Lcom/logitech/harmonylink/util/ServiceDescription;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const/4 v8, 0x0

    .line 34
    .local v8, value:Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v4, httpParams:Lorg/json/JSONObject;
    const-string v9, "email"

    invoke-virtual {v4, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v9, "password"

    invoke-virtual {v4, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const/4 v6, 0x0

    .local v6, outputJson:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 39
    .local v3, exactValue:Lorg/json/JSONObject;
    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v4}, Lcom/logitech/harmonylink/util/DiscoveryService;->executeHttpRequest(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Result"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    const-string v9, "UserAuthToken"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 45
    if-nez v8, :cond_1

    .line 46
    const-string v9, "Message"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_1
    move-object v9, v8

    .line 55
    .end local v3           #exactValue:Lorg/json/JSONObject;
    .end local v4           #httpParams:Lorg/json/JSONObject;
    .end local v6           #outputJson:Lorg/json/JSONObject;
    :goto_0
    return-object v9

    .line 51
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 52
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/logitech/harmonylink/util/AuthToken;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/logitech/harmonylink/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v9, v11

    .line 53
    goto :goto_0
.end method
