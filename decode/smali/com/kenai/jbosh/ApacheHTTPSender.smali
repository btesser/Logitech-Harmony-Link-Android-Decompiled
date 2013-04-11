.class final Lcom/kenai/jbosh/ApacheHTTPSender;
.super Ljava/lang/Object;
.source "ApacheHTTPSender.java"

# interfaces
.implements Lcom/kenai/jbosh/HTTPSender;


# instance fields
.field private cfg:Lcom/kenai/jbosh/BOSHClientConfig;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    .line 67
    const-class v0, Lorg/apache/http/client/HttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    return-void
.end method

.method private declared-synchronized initHttpClient(Lcom/kenai/jbosh/BOSHClientConfig;)Lorg/apache/http/client/HttpClient;
    .locals 6
    .parameter

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 129
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 131
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 132
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHClientConfig;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHClientConfig;->getProxyPort()I

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHClientConfig;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHClientConfig;->getProxyPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 138
    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 142
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 143
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 145
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    .line 146
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 147
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 153
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 154
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->httpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    iput-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    .line 97
    iput-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 98
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    return-void

    .line 96
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    .line 97
    iput-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 98
    iget-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public init(Lcom/kenai/jbosh/BOSHClientConfig;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 79
    :try_start_0
    iput-object p1, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    .line 80
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/ApacheHTTPSender;->initHttpClient(Lcom/kenai/jbosh/BOSHClientConfig;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->httpClient:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public send(Lcom/kenai/jbosh/CMSessionParams;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/HTTPResponse;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/ApacheHTTPSender;->initHttpClient(Lcom/kenai/jbosh/BOSHClientConfig;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 116
    iget-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->cfg:Lcom/kenai/jbosh/BOSHClientConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v2, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    new-instance v2, Lcom/kenai/jbosh/ApacheHTTPResponse;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/kenai/jbosh/ApacheHTTPResponse;-><init>(Lorg/apache/http/client/HttpClient;Lcom/kenai/jbosh/BOSHClientConfig;Lcom/kenai/jbosh/CMSessionParams;Lcom/kenai/jbosh/AbstractBody;)V

    return-object v2

    .line 118
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/ApacheHTTPSender;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
