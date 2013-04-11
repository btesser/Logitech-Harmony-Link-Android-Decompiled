.class public Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;
.super Ljava/lang/Object;
.source "UsernameHashedPasswordCallbackHandler.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;


# instance fields
.field private pwchars:[C

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->user:Ljava/lang/String;

    .line 43
    invoke-static {p2}, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->getHash(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    .line 44
    return-void
.end method

.method private clearPassword()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    if-eqz v0, :cond_1

    move v0, v2

    .line 72
    :goto_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    aput-char v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    .line 78
    :cond_1
    return-void
.end method

.method public static getHash(Ljava/lang/String;)[C
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 87
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 89
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 91
    array-length v2, v0

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 93
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update(B)V

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 98
    array-length v1, v0

    new-array v1, v1, [C

    .line 101
    array-length v2, v0

    move v3, v5

    move v4, v5

    :goto_1
    if-ge v3, v2, :cond_1

    aget-byte v5, v0, v3

    .line 103
    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v4

    .line 101
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1

    .line 106
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->clearPassword()V

    .line 83
    return-void
.end method

.method public handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 50
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    if-eqz v0, :cond_0

    .line 52
    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    .line 53
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 48
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 55
    :cond_0
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    if-eqz v0, :cond_1

    .line 57
    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    .line 58
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/UsernameHashedPasswordCallbackHandler;->pwchars:[C

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 62
    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;-><init>(Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    throw v0

    .line 65
    :cond_2
    return-void
.end method
