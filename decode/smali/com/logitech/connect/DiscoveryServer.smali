.class public Lcom/logitech/connect/DiscoveryServer;
.super Ljava/lang/Object;
.source "DiscoveryServer.java"


# static fields
.field public static final MIN_OPEN_API_CLIENT_VERSION_KEY:Ljava/lang/String; = "minimumOpenApiClientVersionRequired"

.field public static final OPEN_API_VERSION_KEY:Ljava/lang/String; = "openApiVersion"

.field public static final RECCOMMENDED_OPEN_API_CLIENT_VERSION_KEY:Ljava/lang/String; = "recommendedOpenApiClientVersion"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field final cmdListen:Ljava/lang/Runnable;

.field mMainHandler:Landroid/os/Handler;

.field mServerPort:I

.field mServerSocket:Ljava/net/ServerSocket;

.field t:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 4
    .parameter "port"
    .parameter "mMainHandler"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v1, Lcom/logitech/connect/DiscoveryServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->LOG_TAG:Ljava/lang/String;

    .line 52
    new-instance v1, Lcom/logitech/connect/DiscoveryServer$1;

    invoke-direct {v1, p0}, Lcom/logitech/connect/DiscoveryServer$1;-><init>(Lcom/logitech/connect/DiscoveryServer;)V

    iput-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->cmdListen:Ljava/lang/Runnable;

    .line 38
    iput p1, p0, Lcom/logitech/connect/DiscoveryServer;->mServerPort:I

    .line 39
    iput-object p2, p0, Lcom/logitech/connect/DiscoveryServer;->mMainHandler:Landroid/os/Handler;

    .line 42
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/logitech/connect/DiscoveryServer;->mServerPort:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/logitech/connect/DiscoveryServer;->cmdListen:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->t:Ljava/lang/Thread;

    .line 47
    iget-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->t:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 48
    iget-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->t:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discovery Server thread on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->t:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 50
    return-void

    .line 43
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 44
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/logitech/connect/DiscoveryServer;->t:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
