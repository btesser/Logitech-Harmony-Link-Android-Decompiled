.class final Lcom/kenai/jbosh/GZIPCodec;
.super Ljava/lang/Object;
.source "GZIPCodec.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x200


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static decode([B)[B
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    const/4 v2, 0x0

    .line 88
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const/16 v0, 0x200

    :try_start_1
    new-array v0, v0, [B

    .line 92
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    .line 93
    if-lez v2, :cond_1

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 96
    :cond_1
    if-gez v2, :cond_0

    .line 97
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 99
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0

    .line 99
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    const/4 v1, 0x0

    .line 65
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 67
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 71
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v1

    .line 71
    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v1

    .line 71
    :catchall_1
    move-exception v1

    goto :goto_0
.end method

.method public static getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "gzip"

    return-object v0
.end method
