.class public Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;
.super Ljava/lang/Object;
.source "AuthorizeCallback.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x20a8c211adfec195L


# instance fields
.field private final authenticationID:Ljava/lang/String;

.field private final authorizationID:Ljava/lang/String;

.field private authorized:Z

.field private authorizedID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authenticationID:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authorizationID:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authorizedID:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getAuthenticationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authenticationID:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authorizationID:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizedID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authorized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authorizedID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthorized()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authorized:Z

    return v0
.end method

.method public setAuthorized(Z)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authorized:Z

    .line 72
    return-void
.end method

.method public setAuthorizedID(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lorg/apache/harmony/javax/security/sasl/AuthorizeCallback;->authorizedID:Ljava/lang/String;

    .line 78
    :cond_0
    return-void
.end method
