.class public Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;
.super Ljava/lang/Object;
.source "UserPasswordCallbackHandler.java"

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

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->user:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    .line 34
    return-void
.end method

.method private clearPassword()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    if-eqz v0, :cond_1

    move v0, v2

    .line 61
    :goto_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    aput-char v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->clearPassword()V

    .line 72
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
    .line 38
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 40
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    if-eqz v0, :cond_0

    .line 42
    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    .line 43
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 38
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 45
    :cond_0
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    if-eqz v0, :cond_1

    .line 47
    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    .line 48
    iget-object v2, p0, Lorg/apache/qpid/management/common/sasl/UserPasswordCallbackHandler;->pwchars:[C

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;-><init>(Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    throw v0

    .line 55
    :cond_2
    return-void
.end method
