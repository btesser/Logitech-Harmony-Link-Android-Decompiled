.class final Lorg/apache/harmony/javax/security/auth/login/Configuration$1;
.super Lorg/apache/harmony/javax/security/auth/login/Configuration;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/javax/security/auth/login/Configuration;->getDefaultProvider()Lorg/apache/harmony/javax/security/auth/login/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/Configuration;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
