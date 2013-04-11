.class public final Lcom/kenai/jbosh/BOSHClientConfig$Builder;
.super Ljava/lang/Object;
.source "BOSHClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kenai/jbosh/BOSHClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bCompression:Ljava/lang/Boolean;

.field private final bDomain:Ljava/lang/String;

.field private bFrom:Ljava/lang/String;

.field private bLang:Ljava/lang/String;

.field private bProxyHost:Ljava/lang/String;

.field private bProxyPort:I

.field private bRoute:Ljava/lang/String;

.field private bSSLContext:Ljavax/net/ssl/SSLContext;

.field private final bURI:Ljava/net/URI;


# direct methods
.method private constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bURI:Ljava/net/URI;

    .line 111
    iput-object p2, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bDomain:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public static create(Lcom/kenai/jbosh/BOSHClientConfig;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 3
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getFrom()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bFrom:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getLang()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bLang:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getRoute()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bRoute:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyHost:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getProxyPort()I

    move-result v1

    iput v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyPort:I

    .line 153
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bSSLContext:Ljavax/net/ssl/SSLContext;

    .line 154
    invoke-virtual {p0}, Lcom/kenai/jbosh/BOSHClientConfig;->isCompressionEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bCompression:Ljava/lang/Boolean;

    .line 155
    return-object v0
.end method

.method public static create(Ljava/net/URI;Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection manager URI must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    if-nez p1, :cond_1

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target domain must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only \'http\' and \'https\' URI are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_2
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    invoke-direct {v0, p0, p1}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/kenai/jbosh/BOSHClientConfig;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bLang:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 288
    const-string v0, "en"

    move-object v4, v0

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyHost:Ljava/lang/String;

    if-nez v0, :cond_1

    move v7, v1

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bCompression:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v9, v1

    .line 309
    :goto_2
    new-instance v0, Lcom/kenai/jbosh/BOSHClientConfig;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bURI:Ljava/net/URI;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bDomain:Ljava/lang/String;

    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bFrom:Ljava/lang/String;

    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bRoute:Ljava/lang/String;

    iget-object v6, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyHost:Ljava/lang/String;

    iget-object v8, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bSSLContext:Ljavax/net/ssl/SSLContext;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/kenai/jbosh/BOSHClientConfig;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;ZLcom/kenai/jbosh/BOSHClientConfig$1;)V

    return-object v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bLang:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    .line 298
    :cond_1
    iget v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyPort:I

    move v7, v0

    goto :goto_1

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bCompression:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v9, v0

    goto :goto_2
.end method

.method public setCompressionEnabled(Z)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 1
    .parameter

    .prologue
    .line 275
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bCompression:Ljava/lang/Boolean;

    .line 276
    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .parameter

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client ID must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bFrom:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setProxy(Ljava/lang/String;I)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 237
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host name cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    if-gtz p2, :cond_2

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy port must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyHost:Ljava/lang/String;

    .line 246
    iput p2, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bProxyPort:I

    .line 247
    return-object p0
.end method

.method public setRoute(Ljava/lang/String;Ljava/lang/String;I)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol cannot contain the \':\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    if-nez p2, :cond_2

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_2
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host cannot contain the \':\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_3
    if-gtz p3, :cond_4

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Port number must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bRoute:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .parameter

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSL context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bSSLContext:Ljavax/net/ssl/SSLContext;

    .line 263
    return-object p0
.end method

.method public setXMLLang(Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .locals 2
    .parameter

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default language ID must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->bLang:Ljava/lang/String;

    .line 187
    return-object p0
.end method
