.class Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;
.super Ljava/io/OutputStream;
.source "IBBTransferNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IBBOutputStream"
.end annotation


# instance fields
.field protected buffer:[B

.field private final closePacket:Lorg/jivesoftware/smack/packet/IQ;

.field protected count:I

.field private messageID:Ljava/lang/String;

.field protected seq:I

.field private sid:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

.field final userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 159
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->this$0:Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 148
    iput v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I

    .line 150
    iput v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->seq:I

    .line 160
    if-gtz p4, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    .line 164
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->userID:Ljava/lang/String;

    .line 166
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0, p2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->messageID:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->sid:Ljava/lang/String;

    .line 169
    invoke-direct {p0, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->createClosePacket(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->closePacket:Lorg/jivesoftware/smack/packet/IQ;

    .line 170
    return-void
.end method

.method private createClosePacket(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    new-instance v0, Lorg/jivesoftware/smackx/packet/IBBExtensions$Close;

    invoke-direct {v0, p2}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Close;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 175
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 176
    return-object v0
.end method

.method private declared-synchronized flushBuffer()V
    .locals 3

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->writeToXML([BII)V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeOut([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    .line 201
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->flushBuffer()V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    iget v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I

    .line 205
    return-void
.end method

.method private declared-synchronized writeToXML([BII)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 214
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->messageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->createTemplate(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;

    move-result-object v0

    .line 215
    new-instance v1, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->sid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 218
    const/4 v2, 0x0

    invoke-static {p1, p2, p3, v2}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([BIIZ)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;->setData(Ljava/lang/String;)V

    .line 221
    iget v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->seq:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Data;->setSeq(J)V

    .line 222
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :try_start_3
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->this$0:Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->access$100(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;)Lorg/jivesoftware/smack/Connection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 233
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->seq:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    move v0, v4

    :goto_1
    iput v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->seq:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 214
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :cond_0
    :try_start_6
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->seq:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->flush()V

    .line 238
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->this$0:Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    #getter for: Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->access$100(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->closePacket:Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 239
    return-void
.end method

.method public createTemplate(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;
    .locals 2
    .parameter

    .prologue
    .line 250
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->userID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 252
    return-object v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->flushBuffer()V

    .line 243
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 181
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->flushBuffer()V

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    iget v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 185
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->write([BII)V

    .line 247
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    array-length v0, v0

    if-lt p3, v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    array-length v0, v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->writeOut([BII)V

    .line 193
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    array-length v0, v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->buffer:[B

    array-length v1, v1

    sub-int v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;->writeOut([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
