.class public Lorg/jivesoftware/smack/BOSHConfiguration;
.super Lorg/jivesoftware/smack/ConnectionConfiguration;
.source "BOSHConfiguration.java"


# instance fields
.field private file:Ljava/lang/String;

.field private ssl:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    const/16 v0, 0x1b9e

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;I)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->ssl:Z

    .line 45
    const-string v0, "/http-bind/"

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->file:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;I)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->ssl:Z

    .line 52
    const-string v0, "/http-bind/"

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->file:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p2, p3, p5}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 72
    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->ssl:Z

    .line 73
    if-eqz p4, :cond_0

    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->file:Ljava/lang/String;

    .line 74
    return-void

    .line 73
    :cond_0
    const-string v0, "/"

    goto :goto_0
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p2, p3, p6, p5}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 94
    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->ssl:Z

    .line 95
    if-eqz p4, :cond_0

    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->file:Ljava/lang/String;

    .line 96
    return-void

    .line 95
    :cond_0
    const-string v0, "/"

    goto :goto_0
.end method


# virtual methods
.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxyInfo()Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f90

    goto :goto_0
.end method

.method public getURI()Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2f

    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->file:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->file:Ljava/lang/String;

    .line 122
    :cond_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->ssl:Z

    if-eqz v2, :cond_1

    const-string v2, "https://"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConfiguration;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConfiguration;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v2, "http://"

    goto :goto_0
.end method

.method public isProxyEnabled()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyType()Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->NONE:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingSSL()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->ssl:Z

    return v0
.end method
