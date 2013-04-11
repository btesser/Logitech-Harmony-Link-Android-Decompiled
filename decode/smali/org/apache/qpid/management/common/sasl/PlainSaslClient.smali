.class public Lorg/apache/qpid/management/common/sasl/PlainSaslClient;
.super Ljava/lang/Object;
.source "PlainSaslClient.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClient;


# static fields
.field private static SEPARATOR:B


# instance fields
.field private authenticationID:Ljava/lang/String;

.field private authorizationID:Ljava/lang/String;

.field private cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private completed:Z

.field private password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-byte v0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    .line 40
    iput-object p2, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .line 41
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->getUserInfo()[Ljava/lang/Object;

    move-result-object v1

    .line 42
    iput-object p1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    .line 43
    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    .line 45
    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    if-nez v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "PLAIN: authenticationID and password must be specified"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    return-void
.end method

.method private clearPassword()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    if-eqz v0, :cond_1

    move v0, v2

    .line 153
    :goto_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    aput-byte v2, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    .line 159
    :cond_1
    return-void
.end method

.method private getUserInfo()[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string v1, "PLAIN authentication id: "

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    const-string v2, "PLAIN password: "

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 179
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/harmony/javax/security/auth/callback/Callback;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;->handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    .line 180
    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getName()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v2

    .line 183
    if-eqz v2, :cond_0

    .line 185
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    const-string v2, "UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 186
    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->clearPassword()V

    move-object v1, v2

    .line 192
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 190
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "Cannot get password"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 198
    :catch_1
    move-exception v0

    .line 200
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "Cannot get userid/password"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    .line 164
    return-void
.end method

.method public evaluateChallenge([B)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication already completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 64
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v2, v2

    array-length v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    if-eqz v0, :cond_2

    array-length v3, v0

    :goto_1
    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 72
    if-eqz v0, :cond_3

    .line 73
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    array-length v0, v0

    .line 76
    :goto_2
    add-int/lit8 v3, v0, 0x1

    sget-byte v4, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    aput-byte v4, v2, v0

    .line 77
    const/4 v0, 0x0

    array-length v4, v1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length v0, v1

    add-int/2addr v0, v3

    .line 79
    add-int/lit8 v1, v0, 0x1

    sget-byte v3, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    aput-byte v3, v2, v0

    .line 80
    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v4, v4

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    .line 82
    return-object v2

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v4

    .line 64
    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "PLAIN: Cannot get UTF-8 encoding of ids"

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move v0, v4

    goto :goto_2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    .line 169
    return-void
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "PLAIN"

    return-object v0
.end method

.method public getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "javax.security.sasl.qop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "auth"

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasInitialResponse()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    return v0
.end method

.method public unwrap([BII)[B
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: this mechanism supports neither integrity nor privacy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap([BII)[B
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: this mechanism supports neither integrity nor privacy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
