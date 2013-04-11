.class public Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;
.super Ljava/lang/Object;
.source "HarmonyRemoteConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mLogger:Lcom/logitech/harmonylink/util/CustomLog;

.field mMouseBuf:[B

.field final mMouseClick:[B

.field mOutputStream:Ljava/io/OutputStream;

.field mSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V
    .locals 2
    .parameter "app"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mMouseBuf:[B

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mMouseClick:[B

    .line 19
    iput-object v1, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    .line 21
    iput-object v1, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 22
    invoke-static {}, Lcom/logitech/harmonylink/util/CustomLog;->getLogger()Lcom/logitech/harmonylink/util/CustomLog;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mLogger:Lcom/logitech/harmonylink/util/CustomLog;

    .line 25
    iget-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    if-nez v0, :cond_0

    .line 26
    iput-object p1, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 27
    :cond_0
    return-void

    .line 16
    :array_0
    .array-data 0x1
        0x2t
        0x0t
    .end array-data
.end method

.method private connectSocket()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 31
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    .line 32
    .local v1, client:Lcom/logitech/connect/ConnectClient;
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->tryGoogleApiWrite()V

    .line 34
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 38
    :try_start_0
    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getServer()Ljava/net/InetAddress;

    move-result-object v0

    .line 40
    .local v0, addr:Ljava/net/InetAddress;
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    .line 41
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 42
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 43
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 44
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    const/16 v5, 0x1467

    invoke-direct {v4, v0, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 45
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 47
    .local v2, e:Ljava/lang/Exception;
    iput-object v6, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    .line 48
    iput-object v6, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 49
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->googleApiWriteFail()V

    goto :goto_0
.end method

.method private writeBuf([B)Z
    .locals 6
    .parameter "buf"

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->connectSocket()V

    .line 56
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 60
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v2, 0x1

    .line 82
    :goto_0
    return v2

    .line 63
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 65
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :cond_1
    iput-object v5, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 75
    iput-object v5, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    .line 76
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->googleApiWriteFail()V

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 69
    .restart local v0       #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 70
    .local v1, e1:Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mLogger:Lcom/logitech/harmonylink/util/CustomLog;

    sget-object v3, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/logitech/harmonylink/util/CustomLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    iput-object v5, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 75
    iput-object v5, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    .line 76
    iget-object v2, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->googleApiWriteFail()V

    goto :goto_1

    .line 74
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iput-object v5, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 75
    iput-object v5, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mSocket:Ljava/net/Socket;

    .line 76
    iget-object v3, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->googleApiWriteFail()V

    throw v2
.end method


# virtual methods
.method public writeMouse(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mMouseBuf:[B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mMouseBuf:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 90
    iget-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mMouseBuf:[B

    const/4 v1, 0x2

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mMouseBuf:[B

    const/4 v1, 0x3

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mMouseBuf:[B

    const/4 v1, 0x4

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mMouseBuf:[B

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->writeBuf([B)Z

    move-result v0

    return v0
.end method

.method public writeMouseclick()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->mMouseClick:[B

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->writeBuf([B)Z

    move-result v0

    return v0
.end method
