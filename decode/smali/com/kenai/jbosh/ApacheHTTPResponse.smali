.class final Lcom/kenai/jbosh/ApacheHTTPResponse;
.super Ljava/lang/Object;
.source "ApacheHTTPResponse.java"

# interfaces
.implements Lcom/kenai/jbosh/HTTPResponse;


# static fields
.field private static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final ACCEPT_ENCODING_VAL:Ljava/lang/String; = null

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "text/xml; charset=utf-8"


# instance fields
.field private body:Lcom/kenai/jbosh/AbstractBody;

.field private final client:Lorg/apache/http/client/HttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final post:Lorg/apache/http/client/methods/HttpPost;

.field private sent:Z

.field private statusCode:I

.field private toThrow:Lcom/kenai/jbosh/BOSHException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kenai/jbosh/ZLIBCodec;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kenai/jbosh/GZIPCodec;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/ApacheHTTPResponse;->ACCEPT_ENCODING_VAL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/kenai/jbosh/BOSHClientConfig;Lcom/kenai/jbosh/CMSessionParams;Lcom/kenai/jbosh/AbstractBody;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    .line 123
    iput-object p1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->client:Lorg/apache/http/client/HttpClient;

    .line 124
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->context:Lorg/apache/http/protocol/HttpContext;

    .line 125
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p2}, Lcom/kenai/jbosh/BOSHClientConfig;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->sent:Z

    .line 129
    :try_start_0
    invoke-virtual {p4}, Lcom/kenai/jbosh/AbstractBody;->toXML()Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    .line 133
    invoke-virtual {p2}, Lcom/kenai/jbosh/BOSHClientConfig;->isCompressionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    .line 134
    invoke-virtual {p3}, Lcom/kenai/jbosh/CMSessionParams;->getAccept()Lcom/kenai/jbosh/AttrAccept;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_3

    .line 136
    invoke-static {}, Lcom/kenai/jbosh/ZLIBCodec;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kenai/jbosh/AttrAccept;->isAccepted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-static {}, Lcom/kenai/jbosh/ZLIBCodec;->getID()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v0}, Lcom/kenai/jbosh/ZLIBCodec;->encode([B)[B

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 146
    :goto_0
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 147
    const-string v1, "text/xml; charset=utf-8"

    invoke-virtual {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 152
    invoke-virtual {p2}, Lcom/kenai/jbosh/BOSHClientConfig;->isCompressionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Accept-Encoding"

    sget-object v2, Lcom/kenai/jbosh/ApacheHTTPResponse;->ACCEPT_ENCODING_VAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    :goto_1
    return-void

    .line 139
    :cond_2
    invoke-static {}, Lcom/kenai/jbosh/GZIPCodec;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kenai/jbosh/AttrAccept;->isAccepted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-static {}, Lcom/kenai/jbosh/GZIPCodec;->getID()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0}, Lcom/kenai/jbosh/GZIPCodec;->encode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    const-string v2, "Could not generate request"

    invoke-direct {v1, v2, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    goto :goto_1

    :cond_3
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0
.end method

.method private declared-synchronized awaitResponse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->client:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 232
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    .line 233
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 236
    :goto_0
    invoke-static {}, Lcom/kenai/jbosh/ZLIBCodec;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    invoke-static {v2}, Lcom/kenai/jbosh/ZLIBCodec;->decode([B)[B

    move-result-object v1

    .line 241
    :goto_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/kenai/jbosh/StaticBody;->fromString(Ljava/lang/String;)Lcom/kenai/jbosh/StaticBody;

    move-result-object v1

    iput-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->body:Lcom/kenai/jbosh/AbstractBody;

    .line 242
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->statusCode:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->sent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 238
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kenai/jbosh/GZIPCodec;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-static {v2}, Lcom/kenai/jbosh/GZIPCodec;->decode([B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    :try_start_2
    invoke-virtual {p0}, Lcom/kenai/jbosh/ApacheHTTPResponse;->abort()V

    .line 246
    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    const-string v2, "Could not obtain response"

    invoke-direct {v1, v2, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    .line 247
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    :try_start_3
    invoke-virtual {p0}, Lcom/kenai/jbosh/ApacheHTTPResponse;->abort()V

    .line 250
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 169
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "HTTP request aborted"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    .line 171
    :cond_0
    return-void
.end method

.method public getBody()Lcom/kenai/jbosh/AbstractBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->sent:Z

    if-nez v0, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/kenai/jbosh/ApacheHTTPResponse;->awaitResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 192
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->body:Lcom/kenai/jbosh/AbstractBody;

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getHTTPStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->toThrow:Lcom/kenai/jbosh/BOSHException;

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->sent:Z

    if-nez v0, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/kenai/jbosh/ApacheHTTPResponse;->awaitResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    iget v0, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->statusCode:I

    return v0

    .line 212
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPResponse;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
