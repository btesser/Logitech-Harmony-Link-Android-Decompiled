.class Lcom/logitech/connect/ConnectClient$3;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/connect/ConnectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/ConnectClient;


# direct methods
.method constructor <init>(Lcom/logitech/connect/ConnectClient;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$3;->this$0:Lcom/logitech/connect/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 357
    iget-object v7, p0, Lcom/logitech/connect/ConnectClient$3;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mWifiAvailable:Z
    invoke-static {v7}, Lcom/logitech/connect/ConnectClient;->access$000(Lcom/logitech/connect/ConnectClient;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/logitech/connect/ConnectClient$3;->this$0:Lcom/logitech/connect/ConnectClient;

    iget v7, v7, Lcom/logitech/connect/ConnectClient;->mConnected:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 359
    :try_start_0
    new-instance v6, Ljava/net/DatagramSocket;

    invoke-direct {v6}, Ljava/net/DatagramSocket;-><init>()V

    .line 360
    .local v6, socket:Ljava/net/DatagramSocket;
    const-string v7, "224.0.0.1"

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 362
    .local v3, groupAddr:Ljava/net/InetAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v5, probe:Ljava/lang/StringBuilder;
    const-string v7, "_logitech-reverse-bonjour._tcp.local."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const/16 v7, 0x1545

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 367
    .local v0, buf:[B
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v7, v0

    const/16 v8, 0x1468

    invoke-direct {v4, v0, v7, v3, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 369
    .local v4, packet:Ljava/net/DatagramPacket;
    invoke-virtual {v6, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 370
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    .end local v0           #buf:[B
    .end local v3           #groupAddr:Ljava/net/InetAddress;
    .end local v4           #packet:Ljava/net/DatagramPacket;
    .end local v5           #probe:Ljava/lang/StringBuilder;
    .end local v6           #socket:Ljava/net/DatagramSocket;
    :goto_0
    iget-object v7, p0, Lcom/logitech/connect/ConnectClient$3;->this$0:Lcom/logitech/connect/ConnectClient;

    const/4 v8, 0x1

    #setter for: Lcom/logitech/connect/ConnectClient;->mDiscoveryProbePending:Z
    invoke-static {v7, v8}, Lcom/logitech/connect/ConnectClient;->access$102(Lcom/logitech/connect/ConnectClient;Z)Z

    .line 378
    iget-object v7, p0, Lcom/logitech/connect/ConnectClient$3;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mMainHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/logitech/connect/ConnectClient;->access$300(Lcom/logitech/connect/ConnectClient;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/logitech/connect/ConnectClient$3;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mDiscoveryProbe:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/logitech/connect/ConnectClient;->access$200(Lcom/logitech/connect/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    :goto_1
    return-void

    .line 372
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 373
    .local v2, e1:Ljava/net/UnknownHostException;
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v2           #e1:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 375
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    iget-object v7, p0, Lcom/logitech/connect/ConnectClient$3;->this$0:Lcom/logitech/connect/ConnectClient;

    const/4 v8, 0x0

    #setter for: Lcom/logitech/connect/ConnectClient;->mDiscoveryProbePending:Z
    invoke-static {v7, v8}, Lcom/logitech/connect/ConnectClient;->access$102(Lcom/logitech/connect/ConnectClient;Z)Z

    goto :goto_1
.end method
