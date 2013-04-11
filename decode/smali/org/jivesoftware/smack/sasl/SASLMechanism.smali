.class public abstract Lorg/jivesoftware/smack/sasl/SASLMechanism;
.super Ljava/lang/Object;
.source "SASLMechanism.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;,
        Lorg/jivesoftware/smack/sasl/SASLMechanism$Success;,
        Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;,
        Lorg/jivesoftware/smack/sasl/SASLMechanism$Challenge;,
        Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;
    }
.end annotation


# instance fields
.field protected authenticationId:Ljava/lang/String;

.field protected hostname:Ljava/lang/String;

.field protected password:Ljava/lang/String;

.field private saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

.field protected sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/SASLAuthentication;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 68
    return-void
.end method


# virtual methods
.method protected authenticate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    invoke-interface {v1}, Lorg/apache/harmony/javax/security/sasl/SaslClient;->hasInitialResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v0

    .line 118
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BI)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;-><init>(Lorg/jivesoftware/smack/sasl/SASLMechanism;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 126
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    const-string v2, "SASL authentication failed"

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticationId:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->password:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->hostname:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 91
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string v2, "xmpp"

    move-object v1, p1

    move-object v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lde/measite/smack/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 93
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate()V

    .line 94
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 109
    const-string v2, "xmpp"

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lde/measite/smack/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 110
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate()V

    .line 111
    return-void
.end method

.method public challengeReceived(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    invoke-static {p1}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v0

    .line 145
    :goto_0
    if-nez v0, :cond_1

    .line 146
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;-><init>(Lorg/jivesoftware/smack/sasl/SASLMechanism;)V

    .line 153
    :goto_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 154
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    new-instance v1, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;-><init>(Lorg/jivesoftware/smack/sasl/SASLMechanism;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    return-object v0
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
    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_4

    .line 173
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    if-eqz v0, :cond_1

    .line 174
    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    .line 175
    iget-object v2, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 176
    :cond_1
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    if-eqz v0, :cond_2

    .line 177
    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    .line 178
    iget-object v2, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 179
    :cond_2
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    if-eqz v0, :cond_3

    .line 180
    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/RealmCallback;

    .line 181
    iget-object v2, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/harmony/javax/security/sasl/RealmCallback;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_3
    aget-object v0, p1, v1

    instance-of v0, v0, Lorg/apache/harmony/javax/security/sasl/RealmChoiceCallback;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;-><init>(Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    throw v0

    .line 189
    :cond_4
    return-void
.end method
