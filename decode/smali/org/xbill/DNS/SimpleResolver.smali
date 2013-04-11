.class public Lorg/xbill/DNS/SimpleResolver;
.super Ljava/lang/Object;
.source "SimpleResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# static fields
.field public static final DEFAULT_EDNS_PAYLOADSIZE:I = 0x500

.field public static final DEFAULT_PORT:I = 0x35

.field private static final DEFAULT_UDPSIZE:S = 0x200s

.field private static defaultResolver:Ljava/lang/String;

.field private static uniqueID:I


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private ignoreTruncation:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private queryOPT:Lorg/xbill/DNS/OPTRecord;

.field private timeoutValue:J

.field private tsig:Lorg/xbill/DNS/TSIG;

.field private useTCP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "localhost"

    sput-object v0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput v0, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    .line 47
    if-nez p1, :cond_2

    .line 48
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/ResolverConfig;->server()Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 53
    :cond_0
    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 57
    :goto_1
    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 58
    return-void

    .line 56
    :cond_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private applyEDNS(Lorg/xbill/DNS/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_0
.end method

.method private maxUDPSize(Lorg/xbill/DNS/Message;)I
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    const/16 v0, 0x200

    .line 211
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v0

    goto :goto_0
.end method

.method private parseMessage([B)Lorg/xbill/DNS/Message;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    :cond_0
    instance-of v1, v0, Lorg/xbill/DNS/WireParseException;

    if-nez v1, :cond_1

    .line 184
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "Error parsing message"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 185
    :goto_0
    check-cast p0, Lorg/xbill/DNS/WireParseException;

    throw p0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 325
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lorg/xbill/DNS/SimpleResolver;->getTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->setTimeout(I)V

    .line 328
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->setLocalAddress(Ljava/net/SocketAddress;)V

    .line 330
    :try_start_0
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;
    :try_end_0
    .catch Lorg/xbill/DNS/ZoneTransferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->getAXFR()Ljava/util/List;

    move-result-object v0

    .line 336
    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 337
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 338
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 339
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 341
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/Record;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_0
    return-object v1
.end method

.method public static setDefaultResolver(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    sput-object p0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    if-nez p4, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    invoke-virtual {p4, p2, p3, v0}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v0

    .line 194
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSIG verify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method getTSIGKey()Lorg/xbill/DNS/TSIG;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    return-object v0
.end method

.method getTimeout()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    return-wide v0
.end method

.method public send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 223
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v1

    if-nez v1, :cond_1

    .line 229
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_1

    .line 231
    invoke-direct {p0, p1}, Lorg/xbill/DNS/SimpleResolver;->sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v1

    .line 290
    :goto_0
    return-object v1

    .line 234
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/xbill/DNS/Message;

    move-object v7, v0

    .line 235
    invoke-direct {p0, v7}, Lorg/xbill/DNS/SimpleResolver;->applyEDNS(Lorg/xbill/DNS/Message;)V

    .line 236
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 239
    :cond_2
    const v1, 0xffff

    invoke-virtual {v7, v1}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v3

    .line 240
    invoke-direct {p0, v7}, Lorg/xbill/DNS/SimpleResolver;->maxUDPSize(Lorg/xbill/DNS/Message;)I

    move-result v4

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    add-long/2addr v5, v1

    move v1, v12

    .line 246
    :goto_1
    iget-boolean v2, p0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    if-nez v2, :cond_3

    array-length v2, v3

    if-le v2, v4, :cond_a

    :cond_3
    move v8, v11

    .line 248
    :goto_2
    if-eqz v8, :cond_4

    .line 249
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-static {v1, v2, v3, v5, v6}, Lorg/xbill/DNS/TCPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v1

    .line 258
    :goto_3
    array-length v2, v1

    const/16 v9, 0xc

    if-ge v2, v9, :cond_5

    .line 259
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "invalid DNS header - too short"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_4
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/UDPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B

    move-result-object v1

    goto :goto_3

    .line 268
    :cond_5
    aget-byte v2, v1, v12

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v9, v1, v11

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    .line 269
    invoke-virtual {v7}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v9

    invoke-virtual {v9}, Lorg/xbill/DNS/Header;->getID()I

    move-result v9

    .line 270
    if-eq v2, v9, :cond_7

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid message id: expected "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "; got id "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    if-eqz v8, :cond_6

    .line 274
    new-instance v2, Lorg/xbill/DNS/WireParseException;

    invoke-direct {v2, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_6
    const-string v2, "verbose"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 277
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v8

    goto :goto_1

    .line 282
    :cond_7
    invoke-direct {p0, v1}, Lorg/xbill/DNS/SimpleResolver;->parseMessage([B)Lorg/xbill/DNS/Message;

    move-result-object v2

    .line 283
    iget-object v9, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-direct {p0, v7, v2, v1, v9}, Lorg/xbill/DNS/SimpleResolver;->verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V

    .line 284
    if-nez v8, :cond_8

    iget-boolean v1, p0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    if-nez v1, :cond_8

    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    const/4 v8, 0x6

    invoke-virtual {v1, v8}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v11

    .line 288
    goto/16 :goto_1

    :cond_8
    move-object v1, v2

    .line 290
    goto/16 :goto_0

    :cond_9
    move v1, v8

    goto/16 :goto_1

    :cond_a
    move v8, v1

    goto/16 :goto_2
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    sget v1, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 308
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    new-instance v2, Lorg/xbill/DNS/ResolveThread;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/xbill/DNS/ResolveThread;-><init>(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Ljava/lang/Object;Lorg/xbill/DNS/ResolverListener;)V

    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 318
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 319
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 320
    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 314
    :cond_0
    const-string v1, "(none)"

    goto :goto_0
.end method

.method public setAddress(Ljava/net/InetAddress;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 104
    return-void
.end method

.method public setAddress(Ljava/net/InetSocketAddress;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 94
    return-void
.end method

.method public setEDNS(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/xbill/DNS/SimpleResolver;->setEDNS(IIILjava/util/List;)V

    .line 148
    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid EDNS level - must be 0 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    if-nez p2, :cond_1

    .line 141
    const/16 v0, 0x500

    move v1, v0

    .line 142
    :goto_0
    new-instance v0, Lorg/xbill/DNS/OPTRecord;

    const/4 v2, 0x0

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    .line 143
    return-void

    :cond_1
    move v1, p2

    goto :goto_0
.end method

.method public setIgnoreTruncation(Z)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-boolean p1, p0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    .line 133
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    .line 123
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    .line 113
    return-void
.end method

.method public setPort(I)V
    .locals 2
    .parameter

    .prologue
    .line 84
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 85
    return-void
.end method

.method public setTCP(Z)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    .line 128
    return-void
.end method

.method public setTSIGKey(Lorg/xbill/DNS/TSIG;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    .line 153
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/SimpleResolver;->setTimeout(II)V

    .line 168
    return-void
.end method

.method public setTimeout(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 162
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    .line 163
    return-void
.end method
