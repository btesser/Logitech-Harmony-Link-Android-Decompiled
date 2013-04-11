.class public final Lcom/kenai/jbosh/BOSHClientConfig;
.super Ljava/lang/Object;
.source "BOSHClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kenai/jbosh/BOSHClientConfig$1;,
        Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    }
.end annotation


# instance fields
.field private final compressionEnabled:Z

.field private final from:Ljava/lang/String;

.field private final lang:Ljava/lang/String;

.field private final proxyHost:Ljava/lang/String;

.field private final proxyPort:I

.field private final route:Ljava/lang/String;

.field private final sslContext:Ljavax/net/ssl/SSLContext;

.field private final to:Ljava/lang/String;

.field private final uri:Ljava/net/URI;


# direct methods
.method private constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig;->uri:Ljava/net/URI;

    .line 350
    iput-object p2, p0, Lcom/kenai/jbosh/BOSHClientConfig;->to:Ljava/lang/String;

    .line 351
    iput-object p3, p0, Lcom/kenai/jbosh/BOSHClientConfig;->from:Ljava/lang/String;

    .line 352
    iput-object p4, p0, Lcom/kenai/jbosh/BOSHClientConfig;->lang:Ljava/lang/String;

    .line 353
    iput-object p5, p0, Lcom/kenai/jbosh/BOSHClientConfig;->route:Ljava/lang/String;

    .line 354
    iput-object p6, p0, Lcom/kenai/jbosh/BOSHClientConfig;->proxyHost:Ljava/lang/String;

    .line 355
    iput p7, p0, Lcom/kenai/jbosh/BOSHClientConfig;->proxyPort:I

    .line 356
    iput-object p8, p0, Lcom/kenai/jbosh/BOSHClientConfig;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 357
    iput-boolean p9, p0, Lcom/kenai/jbosh/BOSHClientConfig;->compressionEnabled:Z

    .line 358
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;ZLcom/kenai/jbosh/BOSHClientConfig$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct/range {p0 .. p9}, Lcom/kenai/jbosh/BOSHClientConfig;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;Z)V

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/kenai/jbosh/BOSHClientConfig;->proxyPort:I

    return v0
.end method

.method public getRoute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig;->route:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig;->uri:Ljava/net/URI;

    return-object v0
.end method

.method isCompressionEnabled()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/kenai/jbosh/BOSHClientConfig;->compressionEnabled:Z

    return v0
.end method
