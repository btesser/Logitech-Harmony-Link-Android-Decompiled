.class public Lcom/logitech/harmonylink/util/CustomLog;
.super Ljava/lang/Object;
.source "CustomLog.java"


# static fields
.field public static final DEBUG:I = 0xa2

.field public static final ERROR:I = 0xa5

.field public static final INFO:I = 0xa3

.field private static TAG:Ljava/lang/String; = null

.field public static final VERBOSE:I = 0xa1

.field public static final WARN:I = 0xa4

.field private static logger:Lcom/logitech/harmonylink/util/CustomLog;


# instance fields
.field private mBuffer:Ljava/io/BufferedOutputStream;

.field private mContext:Landroid/content/Context;

.field private mEnableFileLog:Z

.field private mEnableLog:Z

.field private mLogFileName:Ljava/lang/String;

.field private mLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "RemoteLog"

    sput-object v0, Lcom/logitech/harmonylink/util/CustomLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0xa1

    iput v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    .line 35
    const-string v0, "remoteLog.txt"

    iput-object v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogFileName:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableFileLog:Z

    .line 45
    sput-object p0, Lcom/logitech/harmonylink/util/CustomLog;->logger:Lcom/logitech/harmonylink/util/CustomLog;

    .line 46
    return-void
.end method

.method public static getLogger()Lcom/logitech/harmonylink/util/CustomLog;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/logitech/harmonylink/util/CustomLog;->logger:Lcom/logitech/harmonylink/util/CustomLog;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/logitech/harmonylink/util/CustomLog;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/logitech/harmonylink/util/CustomLog;->logger:Lcom/logitech/harmonylink/util/CustomLog;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/logitech/harmonylink/util/CustomLog;

    invoke-direct {v1}, Lcom/logitech/harmonylink/util/CustomLog;-><init>()V

    sput-object v1, Lcom/logitech/harmonylink/util/CustomLog;->logger:Lcom/logitech/harmonylink/util/CustomLog;

    .line 58
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lcom/logitech/harmonylink/util/CustomLog;->logger:Lcom/logitech/harmonylink/util/CustomLog;

    return-object v0

    .line 58
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeLog(Ljava/lang/String;)V
    .locals 8
    .parameter "str"

    .prologue
    const/4 v7, 0x0

    .line 173
    iget-boolean v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableFileLog:Z

    if-nez v4, :cond_0

    .line 200
    :goto_0
    return-void

    .line 176
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogFileName:Ljava/lang/String;

    const v6, 0x8000

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 177
    .local v3, out:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x800

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, log:Ljava/lang/String;
    iget-object v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 185
    iget-object v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    if-eqz v4, :cond_1

    .line 186
    iget-object v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    if-eqz v4, :cond_2

    .line 193
    :try_start_1
    iget-object v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    :cond_2
    :goto_1
    iput-object v7, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    goto :goto_0

    .line 194
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 196
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 188
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #log:Ljava/lang/String;
    .end local v3           #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 189
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/logitech/harmonylink/util/CustomLog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in creating log file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    iget-object v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    if-eqz v4, :cond_3

    .line 193
    :try_start_3
    iget-object v4, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 198
    :cond_3
    :goto_2
    iput-object v7, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    goto/16 :goto_0

    .line 194
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 196
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 191
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    if-eqz v5, :cond_4

    .line 193
    :try_start_4
    iget-object v5, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 198
    :cond_4
    :goto_3
    iput-object v7, p0, Lcom/logitech/harmonylink/util/CustomLog;->mBuffer:Ljava/io/BufferedOutputStream;

    throw v4

    .line 194
    :catch_3
    move-exception v5

    move-object v0, v5

    .line 196
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa2

    if-le v0, v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa2

    if-le v0, v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableLogging()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    .line 85
    return-void
.end method

.method public disableLoggingToFile()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableFileLog:Z

    .line 102
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa5

    if-le v0, v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa5

    if-le v0, v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableLoggingToConsole()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    .line 78
    return-void
.end method

.method public enableLoggingToFile(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableFileLog:Z

    .line 94
    iput-object p1, p0, Lcom/logitech/harmonylink/util/CustomLog;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa3

    if-le v0, v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa3

    if-le v0, v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa1

    if-le v0, v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa1

    if-le v0, v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa4

    if-le v0, v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mEnableLog:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/logitech/harmonylink/util/CustomLog;->mLogLevel:I

    const/16 v1, 0xa4

    if-le v0, v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/CustomLog;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method
