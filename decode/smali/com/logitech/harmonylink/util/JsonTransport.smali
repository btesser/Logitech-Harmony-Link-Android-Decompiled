.class public Lcom/logitech/harmonylink/util/JsonTransport;
.super Ljava/lang/Object;
.source "JsonTransport.java"


# static fields
.field private static final API_VERSION:Ljava/lang/String; = "1"

.field private static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HEADER_API_VERSION:Ljava/lang/String; = "x-logitech-api-version"

.field private static final HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field private static final LOG_TAG:Ljava/lang/String; = "JsonTransport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected executeHttpRequest(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 26
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
    .line 95
    .local p1, connectionParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, httpHeaders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "method"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 96
    .local v14, method:Ljava/lang/String;
    const-string v21, "svc"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 98
    .local v20, svc:Ljava/lang/String;
    if-eqz v14, :cond_0

    if-nez v20, :cond_1

    .line 99
    :cond_0
    new-instance v21, Ljava/lang/NullPointerException;

    const-string v22, "Missing required connection parameter. Parameters required: method and svc."

    invoke-direct/range {v21 .. v22}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 103
    :cond_1
    const/4 v3, 0x0

    .line 105
    .local v3, client:Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/util/JsonTransport;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 107
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 117
    .local v8, httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    const-string v21, "x-logitech-api-version"

    const-string v22, "1"

    move-object v0, v8

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v21, "Accept"

    const-string v22, "application/json"

    move-object v0, v8

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v21, "Content-Type"

    const-string v22, "application/json; charset=utf-8"

    move-object v0, v8

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-eqz p2, :cond_5

    .line 123
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local p0
    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 124
    .local v13, key:Ljava/lang/String;
    const-string v21, "Cookie"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 125
    const-string v21, "Cookie"

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 127
    .local v6, header:Lorg/apache/http/Header;
    if-eqz v6, :cond_2

    .line 128
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, headerValue:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "; "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 131
    const-string v21, "Cookie"

    move-object v0, v8

    move-object/from16 v1, v21

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    goto :goto_0

    .line 201
    .end local v6           #header:Lorg/apache/http/Header;
    .end local v7           #headerValue:Ljava/lang/String;
    .end local v8           #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #key:Ljava/lang/String;
    :catch_0
    move-exception v21

    move-object/from16 v4, v21

    .line 206
    .local v4, e:Ljava/net/SocketTimeoutException;
    :try_start_1
    new-instance v21, Lcom/logitech/harmonylink/error/RetryableTransportException;

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/error/RetryableTransportException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v4           #e:Ljava/net/SocketTimeoutException;
    :catchall_0
    move-exception v21

    if-eqz v3, :cond_3

    .line 259
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_3
    throw v21

    .line 135
    .restart local v8       #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #key:Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v8

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    goto/16 :goto_0

    .line 207
    .end local v8           #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #key:Ljava/lang/String;
    :catch_1
    move-exception v21

    move-object/from16 v4, v21

    .line 214
    .local v4, e:Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_3
    new-instance v21, Lcom/logitech/harmonylink/error/RetryableTransportException;

    invoke-virtual {v4}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/error/RetryableTransportException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .end local v4           #e:Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v8       #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    :cond_5
    :try_start_4
    const-string v5, ""

    .line 142
    .local v5, entity:Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 143
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/logitech/harmonylink/util/UnicodeEncodeDecodeUtil;->encodeNonAsciiCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    new-instance v21, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 148
    :cond_6
    invoke-interface {v3, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 151
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    .line 152
    .local v16, responseEntity:Lorg/apache/http/HttpEntity;
    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/logitech/harmonylink/util/UnicodeEncodeDecodeUtil;->decodeEncodedNonAsciiCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 156
    .local v17, responseString:Ljava/lang/String;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 158
    .local v19, statusCode:I
    sparse-switch v19, :sswitch_data_0

    .line 197
    new-instance v21, Lcom/logitech/harmonylink/error/RetryableTransportException;

    const-string v22, "An unhandled http status code received. (%d) (%s)"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/logitech/harmonylink/error/RetryableTransportException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 215
    .end local v5           #entity:Ljava/lang/String;
    .end local v8           #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #responseEntity:Lorg/apache/http/HttpEntity;
    .end local v17           #responseString:Ljava/lang/String;
    .end local v19           #statusCode:I
    :catch_2
    move-exception v21

    move-object/from16 v4, v21

    .line 222
    .local v4, e:Lorg/apache/http/NoHttpResponseException;
    :try_start_5
    new-instance v21, Lcom/logitech/harmonylink/error/RetryableTransportException;

    invoke-virtual {v4}, Lorg/apache/http/NoHttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/error/RetryableTransportException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    .end local v4           #e:Lorg/apache/http/NoHttpResponseException;
    .restart local v5       #entity:Ljava/lang/String;
    .restart local v8       #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #responseEntity:Lorg/apache/http/HttpEntity;
    .restart local v17       #responseString:Ljava/lang/String;
    .restart local v19       #statusCode:I
    :sswitch_0
    const/4 v12, 0x0

    .line 162
    .local v12, jsonResponse:Lorg/json/JSONObject;
    :try_start_6
    new-instance v12, Lorg/json/JSONObject;

    .end local v12           #jsonResponse:Lorg/json/JSONObject;
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 258
    .restart local v12       #jsonResponse:Lorg/json/JSONObject;
    if-eqz v3, :cond_7

    .line 259
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_7
    move-object/from16 v21, v12

    .end local v12           #jsonResponse:Lorg/json/JSONObject;
    :goto_1
    return-object v21

    .line 163
    :catch_3
    move-exception v21

    move-object/from16 v4, v21

    .line 166
    .local v4, e:Lorg/json/JSONException;
    :try_start_7
    new-instance v21, Lcom/logitech/harmonylink/error/ResponseException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to convert response string to JSON: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/logitech/harmonylink/error/ResponseException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 223
    .end local v4           #e:Lorg/json/JSONException;
    .end local v5           #entity:Ljava/lang/String;
    .end local v8           #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #responseEntity:Lorg/apache/http/HttpEntity;
    .end local v17           #responseString:Ljava/lang/String;
    .end local v19           #statusCode:I
    :catch_4
    move-exception v21

    move-object/from16 v4, v21

    .line 229
    .local v4, e:Lorg/apache/http/conn/HttpHostConnectException;
    :try_start_8
    new-instance v21, Lcom/logitech/harmonylink/error/RetryableTransportException;

    invoke-virtual {v4}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/error/RetryableTransportException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 176
    .end local v4           #e:Lorg/apache/http/conn/HttpHostConnectException;
    .restart local v5       #entity:Ljava/lang/String;
    .restart local v8       #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #responseEntity:Lorg/apache/http/HttpEntity;
    .restart local v17       #responseString:Ljava/lang/String;
    .restart local v19       #statusCode:I
    :sswitch_1
    const/4 v10, 0x0

    .line 178
    .local v10, jsonErrResponse:Lorg/json/JSONObject;
    :try_start_9
    new-instance v11, Lorg/json/JSONObject;

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 179
    .end local v10           #jsonErrResponse:Lorg/json/JSONObject;
    .local v11, jsonErrResponse:Lorg/json/JSONObject;
    :try_start_a
    new-instance v18, Lcom/logitech/harmonylink/error/ServerErrorResponse;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/error/ServerErrorResponse;-><init>(Ljava/lang/String;)V

    .line 181
    .local v18, serverErrorResponse:Lcom/logitech/harmonylink/error/ServerErrorResponse;
    if-eqz p3, :cond_8

    .line 182
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/error/ServerErrorResponse;->setRequestString(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 258
    :cond_8
    if-eqz v3, :cond_9

    .line 259
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_9
    move-object/from16 v21, v11

    goto :goto_1

    .line 186
    .end local v11           #jsonErrResponse:Lorg/json/JSONObject;
    .end local v18           #serverErrorResponse:Lcom/logitech/harmonylink/error/ServerErrorResponse;
    .restart local v10       #jsonErrResponse:Lorg/json/JSONObject;
    :catch_5
    move-exception v21

    move-object/from16 v4, v21

    .line 191
    .local v4, e:Lorg/json/JSONException;
    :goto_2
    :try_start_b
    new-instance v21, Lcom/logitech/harmonylink/error/ResponseException;

    const-string v22, "Unable to parse error response as JSON (%s): %s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v17, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/logitech/harmonylink/error/ResponseException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 230
    .end local v4           #e:Lorg/json/JSONException;
    .end local v5           #entity:Ljava/lang/String;
    .end local v8           #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v10           #jsonErrResponse:Lorg/json/JSONObject;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #responseEntity:Lorg/apache/http/HttpEntity;
    .end local v17           #responseString:Ljava/lang/String;
    .end local v19           #statusCode:I
    :catch_6
    move-exception v21

    move-object/from16 v4, v21

    .line 240
    .local v4, e:Ljava/net/UnknownHostException;
    :try_start_c
    new-instance v21, Lcom/logitech/harmonylink/error/RetryableTransportException;

    invoke-virtual {v4}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/error/RetryableTransportException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v21

    .line 241
    .end local v4           #e:Ljava/net/UnknownHostException;
    :catch_7
    move-exception v21

    move-object/from16 v4, v21

    .line 248
    .local v4, e:Ljava/net/SocketException;
    new-instance v21, Lcom/logitech/harmonylink/error/RetryableTransportException;

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/error/RetryableTransportException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v21

    .line 249
    .end local v4           #e:Ljava/net/SocketException;
    :catch_8
    move-exception v21

    move-object/from16 v4, v21

    .line 256
    .local v4, e:Ljava/io/IOException;
    new-instance v21, Lcom/logitech/harmonylink/error/RetryableTransportException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/error/RetryableTransportException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 186
    .end local v4           #e:Ljava/io/IOException;
    .restart local v5       #entity:Ljava/lang/String;
    .restart local v8       #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #jsonErrResponse:Lorg/json/JSONObject;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #responseEntity:Lorg/apache/http/HttpEntity;
    .restart local v17       #responseString:Ljava/lang/String;
    .restart local v19       #statusCode:I
    :catch_9
    move-exception v21

    move-object/from16 v4, v21

    move-object v10, v11

    .end local v11           #jsonErrResponse:Lorg/json/JSONObject;
    .restart local v10       #jsonErrResponse:Lorg/json/JSONObject;
    goto :goto_2

    .line 158
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 265
    const-string v0, ""

    invoke-static {v0}, Lcom/logitech/harmonylink/util/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/logitech/harmonylink/util/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method
