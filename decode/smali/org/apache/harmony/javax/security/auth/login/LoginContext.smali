.class public Lorg/apache/harmony/javax/security/auth/login/LoginContext;
.super Ljava/lang/Object;
.source "LoginContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;,
        Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALLBACK_HANDLER_PROPERTY:Ljava/lang/String; = "auth.login.defaultCallbackHandler"

.field private static final OPTIONAL:I = 0x0

.field private static final REQUIRED:I = 0x1

.field private static final REQUISITE:I = 0x2

.field private static final SUFFICIENT:I = 0x3


# instance fields
.field private callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private contextClassLoader:Ljava/lang/ClassLoader;

.field private loggedIn:Z

.field private modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

.field private sharedState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private subject:Lorg/apache/harmony/javax/security/auth/Subject;

.field private userContext:Ljava/security/AccessControlContext;

.field private userProvidedConfig:Z

.field private userProvidedSubject:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-nez p2, :cond_0

    .line 110
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.03"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.03"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-nez p3, :cond_1

    .line 122
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.34"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p2, :cond_0

    .line 102
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.34"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object p1
.end method

.method static synthetic access$102(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loginImpl()V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->logoutImpl()V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/security/AccessControlContext;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method private init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 136
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedSubject:Z

    .line 141
    if-nez p1, :cond_1

    .line 142
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.00"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v5

    .line 136
    goto :goto_0

    .line 145
    :cond_1
    if-nez p4, :cond_4

    .line 146
    invoke-static {}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAccessibleConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;

    move-result-object v0

    .line 151
    :goto_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-nez v2, :cond_2

    .line 154
    new-instance v2, Lorg/apache/harmony/javax/security/auth/AuthPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createLoginContext."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 157
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    move-result-object v2

    .line 158
    if-nez v2, :cond_5

    .line 159
    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-nez v2, :cond_3

    .line 160
    new-instance v2, Lorg/apache/harmony/javax/security/auth/AuthPermission;

    const-string v3, "createLoginContext.other"

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 162
    :cond_3
    const-string v1, "other"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    move-result-object v0

    .line 163
    if-nez v0, :cond_6

    .line 164
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth.35 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_4
    iput-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    move-object v0, p4

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 168
    :cond_6
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    iput-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    move v1, v5

    .line 169
    :goto_2
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 170
    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    new-instance v3, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;)V

    aput-object v3, v2, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 182
    :cond_7
    :try_start_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;

    invoke-direct {v0, p0, p3}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v0, :cond_9

    .line 211
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    .line 216
    :cond_8
    :goto_3
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 207
    new-instance v1, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v2, "auth.36"

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw p0

    .line 212
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    if-eqz v0, :cond_8

    .line 213
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    .line 214
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    goto :goto_3
.end method

.method private loginImpl()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 252
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lorg/apache/harmony/javax/security/auth/Subject;

    invoke-direct {v0}, Lorg/apache/harmony/javax/security/auth/Subject;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    .line 261
    :cond_1
    const/4 v0, 0x0

    .line 263
    new-array v1, v14, [I

    .line 264
    new-array v2, v14, [I

    .line 266
    iget-object v3, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v4, v3

    move-object v5, v0

    move v0, v10

    :goto_0
    if-ge v0, v4, :cond_15

    aget-object v6, v3, v0

    .line 270
    :try_start_0
    iget-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    iget-object v8, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    iget-object v9, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->create(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Ljava/util/Map;)V

    .line 272
    iget-object v7, v6, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v7}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->login()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 273
    invoke-virtual {v6}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v7

    aget v8, v2, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v7

    .line 274
    invoke-virtual {v6}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v7

    aget v8, v1, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v7

    .line 275
    invoke-virtual {v6}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v13, :cond_5

    move-object v0, v5

    .line 316
    :goto_1
    aget v3, v1, v11

    aget v4, v2, v11

    if-ne v3, v4, :cond_14

    aget v3, v1, v12

    aget v4, v2, v12

    if-eq v3, v4, :cond_6

    move v1, v11

    .line 331
    :goto_2
    new-array v3, v14, [I

    .line 333
    aput v10, v2, v13

    aput v10, v2, v12

    aput v10, v2, v11

    aput v10, v2, v10

    .line 334
    if-nez v1, :cond_a

    .line 337
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v4, v1

    move-object v5, v0

    move v0, v10

    :goto_3
    if-ge v0, v4, :cond_9

    aget-object v6, v1, v0

    .line 338
    iget-object v7, v6, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    if-eqz v7, :cond_2

    .line 339
    invoke-virtual {v6}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v7

    aget v8, v2, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v7

    .line 341
    :try_start_1
    iget-object v7, v6, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v7}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->commit()Z

    .line 342
    invoke-virtual {v6}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v6

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 279
    :catch_0
    move-exception v7

    .line 280
    if-nez v5, :cond_3

    move-object v5, v7

    .line 283
    :cond_3
    iget-object v7, v6, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    if-nez v7, :cond_4

    .line 290
    aget v0, v2, v11

    add-int/lit8 v0, v0, 0x1

    aput v0, v2, v11

    move-object v0, v5

    .line 291
    goto :goto_1

    .line 293
    :cond_4
    invoke-virtual {v6}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v7

    aget v8, v2, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v7

    .line 295
    invoke-virtual {v6}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v6

    if-ne v6, v12, :cond_5

    move-object v0, v5

    .line 297
    goto :goto_1

    .line 266
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 319
    :cond_6
    aget v3, v2, v11

    if-nez v3, :cond_8

    aget v3, v2, v12

    if-nez v3, :cond_8

    .line 322
    aget v3, v1, v10

    if-nez v3, :cond_7

    aget v1, v1, v13

    if-eqz v1, :cond_14

    :cond_7
    move v1, v10

    .line 323
    goto :goto_2

    :cond_8
    move v1, v10

    .line 327
    goto :goto_2

    .line 343
    :catch_1
    move-exception v6

    .line 344
    if-nez v5, :cond_2

    move-object v5, v6

    .line 345
    goto :goto_4

    :cond_9
    move-object v0, v5

    .line 354
    :cond_a
    aget v1, v3, v11

    aget v4, v2, v11

    if-ne v1, v4, :cond_13

    aget v1, v3, v12

    aget v4, v2, v12

    if-eq v1, v4, :cond_c

    move v1, v11

    .line 372
    :goto_5
    if-eqz v1, :cond_11

    .line 375
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v2, v1

    move-object v3, v0

    move v0, v10

    :goto_6
    if-ge v0, v2, :cond_f

    aget-object v4, v1, v0

    .line 377
    :try_start_2
    iget-object v4, v4, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v4}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->abort()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 375
    :cond_b
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 357
    :cond_c
    aget v1, v2, v11

    if-nez v1, :cond_e

    aget v1, v2, v12

    if-nez v1, :cond_e

    .line 362
    aget v1, v3, v10

    if-nez v1, :cond_d

    aget v1, v3, v13

    if-eqz v1, :cond_13

    :cond_d
    move v1, v10

    .line 363
    goto :goto_5

    :cond_e
    move v1, v10

    .line 368
    goto :goto_5

    .line 378
    :catch_2
    move-exception v4

    .line 379
    if-nez v3, :cond_b

    move-object v3, v4

    .line 380
    goto :goto_7

    .line 384
    :cond_f
    instance-of v0, v3, Ljava/security/PrivilegedActionException;

    if-eqz v0, :cond_12

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 386
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    .line 388
    :goto_8
    instance-of v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    if-eqz v0, :cond_10

    .line 389
    check-cast p0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw p0

    .line 391
    :cond_10
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.37"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw p0

    .line 393
    :cond_11
    iput-boolean v11, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    .line 394
    return-void

    :cond_12
    move-object p0, v3

    goto :goto_8

    :cond_13
    move v1, v11

    goto :goto_5

    :cond_14
    move v1, v11

    goto/16 :goto_2

    :cond_15
    move-object v0, v5

    goto/16 :goto_1
.end method

.method private logoutImpl()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 419
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.38"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iput-boolean v3, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    .line 423
    const/4 v0, 0x0

    .line 425
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v2, v1

    move-object v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v5, v1, v0

    .line 427
    :try_start_0
    iget-object v5, v5, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v5}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->logout()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    add-int/lit8 v3, v3, 0x1

    .line 425
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :catch_0
    move-exception v5

    .line 430
    if-nez v4, :cond_1

    move-object v4, v5

    .line 431
    goto :goto_1

    .line 435
    :cond_2
    if-nez v4, :cond_3

    if-nez v3, :cond_5

    .line 436
    :cond_3
    instance-of v0, v4, Ljava/security/PrivilegedActionException;

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 438
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object p0, v0

    .line 440
    :goto_2
    instance-of v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    if-eqz v0, :cond_4

    .line 441
    check-cast p0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw p0

    .line 443
    :cond_4
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.37"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw p0

    .line 445
    :cond_5
    return-void

    :cond_6
    move-object p0, v4

    goto :goto_2
.end method


# virtual methods
.method public getSubject()Lorg/apache/harmony/javax/security/auth/Subject;
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedSubject:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    .line 222
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V

    .line 237
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw p0
.end method

.method public logout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$3;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$3;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V

    .line 404
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw p0
.end method
