.class Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;
.super Ljava/io/InputStream;
.source "IBBTransferNegotiator.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IBBInputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private bufferPointer:I

.field private closeConfirmation:Lorg/jivesoftware/smack/packet/IQ;

.field private dataCollector:Lorg/jivesoftware/smack/PacketCollector;

.field private isClosed:Z

.field private isDone:Z

.field private isEOF:Z

.field private lastMess:Lorg/jivesoftware/smack/packet/Message;

.field private seq:I

.field private streamID:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;Ljava/lang/String;Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 279
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->this$0:Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 266
    iput v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->seq:I

    .line 280
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->streamID:Ljava/lang/String;

    .line 281
    #getter for: Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->access$100(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->dataCollector:Lorg/jivesoftware/smack/PacketCollector;

    .line 282
    #getter for: Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->access$100(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    invoke-virtual {v0, p0, p4}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 283
    iput v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;Ljava/lang/String;Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;-><init>(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;Ljava/lang/String;Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-void
.end method

.method private cancelTransfer(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->cleanup()V

    .line 364
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->sendCancelMessage(Lorg/jivesoftware/smack/packet/Message;)V

    .line 365
    return-void
.end method

.method private checkSequence(Lorg/jivesoftware/smack/packet/Message;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->seq:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->seq:I

    .line 352
    :cond_0
    const/4 v0, 0x1

    sub-int v0, p2, v0

    iget v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->seq:I

    if-eq v0, v1, :cond_1

    .line 353
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->cancelTransfer(Lorg/jivesoftware/smack/packet/Message;)V

    .line 354
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packets out of sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_1
    iput p2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->seq:I

    .line 359
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->dataCollector:Lorg/jivesoftware/smack/PacketCollector;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 369
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->this$0:Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->access$100(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 370
    return-void
.end method

.method private loadBufferWait()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 325
    const/4 v0, 0x0

    move-object v1, v0

    .line 326
    :goto_0
    if-nez v1, :cond_1

    .line 327
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isDone:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->dataCollector:Lorg/jivesoftware/smack/PacketCollector;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->pollResult()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 329
    if-nez v0, :cond_2

    move v0, v4

    .line 345
    :goto_1
    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->dataCollector:Lorg/jivesoftware/smack/PacketCollector;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    move-object v1, v0

    goto :goto_0

    .line 337
    :cond_1
    iput-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->lastMess:Lorg/jivesoftware/smack/packet/Message;

    .line 338
    const-string v0, "data"

    const-string v2, "http://jabber.org/protocol/ibb"

    invoke-virtual {v1, v0, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;

    .line 342
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;->getSeq()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->checkSequence(Lorg/jivesoftware/smack/packet/Message;I)V

    .line 343
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->buffer:[B

    .line 344
    iput v4, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    .line 345
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private sendCancelMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 373
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-static {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 375
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v3, "Cancel Message Transfer"

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 376
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->this$0:Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->access$100(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;)Lorg/jivesoftware/smack/Connection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 377
    return-void
.end method

.method private sendCloseConfirmation()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->this$0:Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->access$100(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->closeConfirmation:Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 410
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 406
    :goto_0
    monitor-exit p0

    return-void

    .line 397
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->cleanup()V

    .line 399
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isEOF:Z

    if-eqz v0, :cond_2

    .line 400
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->sendCloseConfirmation()V

    .line 405
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 402
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->lastMess:Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->lastMess:Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->sendCancelMessage(Lorg/jivesoftware/smack/packet/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 5
    .parameter

    .prologue
    .line 384
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/packet/IBBExtensions$Close;

    move-object v1, v0

    .line 385
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Close;->getSessionID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->streamID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isDone:Z

    .line 387
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getTo()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-static {v1, v2, v3, v4}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->closeConfirmation:Lorg/jivesoftware/smack/packet/IQ;

    .line 391
    :cond_0
    return-void
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 287
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isEOF:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 294
    :goto_0
    monitor-exit p0

    return v0

    .line 290
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 291
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->loadBufferWait()Z

    .line 294
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->buffer:[B

    iget v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 303
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isEOF:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 319
    :goto_0
    monitor-exit p0

    return v0

    .line 306
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 307
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->loadBufferWait()Z

    move-result v0

    if-nez v0, :cond_3

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->isEOF:Z

    move v0, v2

    .line 309
    goto :goto_0

    .line 313
    :cond_3
    sub-int v0, p3, p2

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_4

    .line 314
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    sub-int/2addr v0, v1

    .line 317
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->buffer:[B

    iget v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;->bufferPointer:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, p3

    goto :goto_1
.end method
