.class public Lde/measite/smack/Sasl;
.super Ljava/lang/Object;
.source "Sasl.java"


# static fields
.field private static final CLIENTFACTORYSRV:Ljava/lang/String; = "SaslClientFactory"

.field public static final MAX_BUFFER:Ljava/lang/String; = "javax.security.sasl.maxbuffer"

.field public static final POLICY_FORWARD_SECRECY:Ljava/lang/String; = "javax.security.sasl.policy.forward"

.field public static final POLICY_NOACTIVE:Ljava/lang/String; = "javax.security.sasl.policy.noactive"

.field public static final POLICY_NOANONYMOUS:Ljava/lang/String; = "javax.security.sasl.policy.noanonymous"

.field public static final POLICY_NODICTIONARY:Ljava/lang/String; = "javax.security.sasl.policy.nodictionary"

.field public static final POLICY_NOPLAINTEXT:Ljava/lang/String; = "javax.security.sasl.policy.noplaintext"

.field public static final POLICY_PASS_CREDENTIALS:Ljava/lang/String; = "javax.security.sasl.policy.credentials"

.field public static final QOP:Ljava/lang/String; = "javax.security.sasl.qop"

.field public static final RAW_SEND_SIZE:Ljava/lang/String; = "javax.security.sasl.rawsendsize"

.field public static final REUSE:Ljava/lang/String; = "javax.security.sasl.reuse"

.field private static final SERVERFACTORYSRV:Ljava/lang/String; = "SaslServerFactory"

.field public static final SERVER_AUTH:Ljava/lang/String; = "javax.security.sasl.server.authentication"

.field public static final STRENGTH:Ljava/lang/String; = "javax.security.sasl.strength"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;",
            ")",
            "Lorg/apache/harmony/javax/security/sasl/SaslClient;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 79
    if-nez p0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "auth.33"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {}, Lde/measite/smack/Sasl;->getSaslClientFactories()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/measite/smack/SaslClientFactory;

    .line 83
    invoke-virtual {v0, v8}, Lde/measite/smack/SaslClientFactory;->getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_5

    move v2, v7

    move v3, v7

    .line 86
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    move v4, v7

    .line 87
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 88
    aget-object v5, v1, v2

    aget-object v6, p0, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    const/4 v3, 0x1

    .line 86
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    .line 95
    :goto_2
    if-eqz v1, :cond_4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 96
    invoke-virtual/range {v0 .. v6}, Lde/measite/smack/SaslClientFactory;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v0

    .line 105
    :goto_3
    return-object v0

    :cond_4
    move-object v0, v8

    goto :goto_3

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method public static createSaslServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslServer;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;",
            ")",
            "Lorg/apache/harmony/javax/security/sasl/SaslServer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/security/sasl/Sasl;->createSaslServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslServer;

    move-result-object v0

    return-object v0
.end method

.method public static getSaslClientFactories()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lde/measite/smack/SaslClientFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 63
    new-instance v1, Lde/measite/smack/SaslClientFactory;

    invoke-direct {v1}, Lde/measite/smack/SaslClientFactory;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getSaslServerFactories()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lorg/apache/harmony/javax/security/sasl/Sasl;->getSaslServerFactories()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
