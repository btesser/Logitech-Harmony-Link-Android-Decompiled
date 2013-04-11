.class public Lorg/apache/qpid/management/common/sasl/CRAMMD5HashedSaslClientFactory;
.super Ljava/lang/Object;
.source "CRAMMD5HashedSaslClientFactory.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;


# static fields
.field public static final MECHANISM:Ljava/lang/String; = "CRAM-MD5-HASHED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .locals 6
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
    const/4 v3, 0x0

    .line 40
    move v0, v3

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 42
    aget-object v1, p1, v0

    const-string v2, "CRAM-MD5-HASHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    if-nez p6, :cond_0

    .line 46
    new-instance v0, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v1, "CallbackHandler must not be null"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CRAM-MD5"

    aput-object v1, v0, v3

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 50
    invoke-static/range {v0 .. v5}, Lde/measite/smack/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v0

    .line 53
    :goto_1
    return-object v0

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CRAM-MD5-HASHED"

    aput-object v2, v0, v1

    return-object v0
.end method
