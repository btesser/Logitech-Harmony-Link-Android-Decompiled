.class Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;
.super Ljava/lang/Object;
.source "Socks5TransferNegotiatorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProxyProcess"
.end annotation


# instance fields
.field private final connectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private done:Z

.field private final listeningSocket:Ljava/net/ServerSocket;

.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;

.field private thread:Ljava/lang/Thread;

.field private transfers:I


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;Ljava/net/ServerSocket;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->this$0:Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->connectionMap:Ljava/util/Map;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->done:Z

    .line 360
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "File Transfer Connection Listener"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->thread:Ljava/lang/Thread;

    .line 361
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    .line 362
    return-void
.end method

.method private establishSocks5UploadConnection(Ljava/net/Socket;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 296
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 297
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 300
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 301
    if-eq v2, v8, :cond_0

    .line 302
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Only SOCKS5 supported"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 307
    new-array v3, v2, [I

    move v4, v6

    .line 308
    :goto_0
    if-ge v4, v2, :cond_1

    .line 309
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v5

    aput v5, v3, v4

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 313
    :cond_1
    array-length v2, v3

    move v4, v6

    move v5, v7

    :goto_1
    if-ge v4, v2, :cond_6

    aget v5, v3, v4

    .line 314
    if-nez v5, :cond_2

    move v5, v6

    .line 318
    :goto_2
    if-nez v5, :cond_3

    move v2, v5

    .line 322
    :goto_3
    if-eqz v2, :cond_4

    .line 323
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Authentication method not supported"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v5, v7

    .line 314
    goto :goto_2

    .line 313
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 325
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [B

    .line 326
    aput-byte v8, v2, v6

    .line 327
    const/4 v3, 0x1

    aput-byte v6, v2, v3

    .line 328
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 330
    invoke-static {v1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->createIncomingSocks5Message(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v6, v1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;->createOutgoingSocks5Message(ILjava/lang/String;)[B

    move-result-object v2

    .line 333
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 334
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Socket closed by remote user"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_5
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 337
    return-object v1

    :cond_6
    move v2, v5

    goto :goto_3
.end method


# virtual methods
.method public addTransfer()V
    .locals 2

    .prologue
    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->transfers:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 373
    const/4 v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->transfers:I

    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 379
    :goto_0
    monitor-exit p0

    .line 380
    return-void

    .line 377
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->transfers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->transfers:I

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSocket(Ljava/lang/String;)Ljava/net/Socket;
    .locals 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->connectionMap:Ljava/util/Map;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/Socket;

    monitor-exit v0

    return-object p0

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeTransfer()V
    .locals 2

    .prologue
    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->transfers:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->transfers:I

    .line 385
    monitor-exit p0

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->done:Z

    if-nez v0, :cond_2

    .line 229
    const/4 v0, 0x0

    .line 230
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    :goto_1
    :try_start_2
    iget v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->transfers:I

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->done:Z

    if-nez v1, :cond_1

    .line 232
    const/4 v1, -0x1

    iput v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->transfers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v1

    goto :goto_1

    .line 223
    :catch_1
    move-exception v0

    .line 225
    :try_start_4
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 277
    :try_start_5
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 283
    :goto_2
    return-void

    .line 240
    :cond_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 241
    :try_start_7
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->done:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_3

    .line 277
    :cond_2
    :try_start_8
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 279
    :catch_2
    move-exception v0

    goto :goto_2

    .line 240
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 276
    :catchall_1
    move-exception v0

    .line 277
    :try_start_b
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 281
    :goto_3
    throw v0

    .line 245
    :cond_3
    :try_start_c
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_c .. :try_end_c} :catch_5

    .line 246
    :try_start_d
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v0

    .line 247
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 248
    if-eqz v0, :cond_0

    .line 251
    :try_start_f
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->establishSocks5UploadConnection(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->connectionMap:Ljava/util/Map;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_f .. :try_end_f} :catch_9

    .line 253
    :try_start_10
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->connectionMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_11 .. :try_end_11} :catch_9

    .line 256
    :catch_3
    move-exception v0

    goto :goto_0

    .line 247
    :catchall_3
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :goto_4
    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_13 .. :try_end_13} :catch_8

    .line 259
    :catch_4
    move-exception v0

    goto :goto_0

    .line 262
    :catch_5
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 263
    :goto_5
    :try_start_14
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 264
    if-eqz v1, :cond_0

    .line 266
    :try_start_15
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    goto :goto_0

    .line 268
    :catch_6
    move-exception v0

    goto :goto_0

    .line 279
    :catch_7
    move-exception v1

    goto :goto_3

    .line 262
    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_9
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    .line 247
    :catchall_4
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_4

    :catchall_5
    move-exception v0

    goto :goto_4

    .line 279
    :catch_a
    move-exception v0

    goto :goto_2
.end method

.method public start()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 343
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->done:Z

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 349
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    monitor-enter v0

    .line 351
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiatorManager$ProxyProcess;->listeningSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 352
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 353
    return-void

    .line 349
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 352
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
