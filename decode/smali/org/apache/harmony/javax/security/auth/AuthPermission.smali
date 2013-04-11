.class public final Lorg/apache/harmony/javax/security/auth/AuthPermission;
.super Ljava/security/BasicPermission;
.source "AuthPermission.java"


# static fields
.field private static final CREATE_LOGIN_CONTEXT:Ljava/lang/String; = "createLoginContext"

.field private static final CREATE_LOGIN_CONTEXT_ANY:Ljava/lang/String; = "createLoginContext.*"

.field private static final serialVersionUID:J = 0x50932ad66da4d0e6L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-static {p1}, Lorg/apache/harmony/javax/security/auth/AuthPermission;->init(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p1}, Lorg/apache/harmony/javax/security/auth/AuthPermission;->init(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private static init(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "auth.13"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    const-string v0, "createLoginContext"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "createLoginContext.*"

    .line 73
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method
