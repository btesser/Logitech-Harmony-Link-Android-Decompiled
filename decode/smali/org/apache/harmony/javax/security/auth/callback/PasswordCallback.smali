.class public Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
.super Ljava/lang/Object;
.source "PasswordCallback.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f7780e27139c5e6L


# instance fields
.field echoOn:Z

.field private inputPassword:[C

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->setPrompt(Ljava/lang/String;)V

    .line 57
    iput-boolean p2, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->echoOn:Z

    .line 58
    return-void
.end method

.method private setPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->inputPassword:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 123
    :cond_0
    return-void
.end method

.method public getPassword()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v0, v0

    new-array v0, v0, [C

    .line 110
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public isEchoOn()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->echoOn:Z

    return v0
.end method

.method public setPassword([C)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->inputPassword:[C

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->inputPassword:[C

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->inputPassword:[C

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
