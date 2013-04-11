.class public Lcom/logitech/harmonylink/util/EventTracker;
.super Ljava/lang/Object;
.source "EventTracker.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTIVITY_ADDED:Ljava/lang/String; = "addedactivity"

.field public static final ACTIVITY_CONTROLS:Ljava/lang/String; = "activitycontrolspage"

.field public static final ACTIVITY_CONTROLS_DPAD:Ljava/lang/String; = "indpad"

.field public static final ACTIVITY_CONTROLS_GESTURE:Ljava/lang/String; = "ingesture"

.field public static final ACTIVITY_CONTROLS_KBD:Ljava/lang/String; = "inkeyboard"

.field public static final ACTIVITY_CONTROLS_TRACKPAD:Ljava/lang/String; = "intrackpad"

.field public static final ACTIVITY_CONTROLS_TRANSPORT:Ljava/lang/String; = "inactivitytransportscreen"

.field public static final ACTIVITY_LAUNCHED:Ljava/lang/String; = "launchedactivity"

.field public static final ACTIVITY_NAME:Ljava/lang/String; = "activityname"

.field public static final ACTIVITY_SELECTED:Ljava/lang/String; = "selectedactivity"

.field public static final ADD_MORE_SCREEN:Ljava/lang/String; = "addmore"

.field static final BUFF_SIZE:I = 0x2800

.field public static final CHANNEL_ADDED:Ljava/lang/String; = "addedchannel"

.field public static final CHANNEL_ID:Ljava/lang/String; = "channelid"

.field public static final CHANNEL_NAME:Ljava/lang/String; = "channelname"

.field public static final CHANNEL_NUM:Ljava/lang/String; = "channelnum"

.field public static final CHANNEL_REMOVED:Ljava/lang/String; = "removedchannel"

.field public static final CHANNEL_SELECTED:Ljava/lang/String; = "selectedchannel"

.field public static final COMMAND_NAME:Ljava/lang/String; = "commandname"

.field public static final COMMAND_VALUE:Ljava/lang/String; = "commandvalue"

.field public static final DEVICE_CONTROLS:Ljava/lang/String; = "devicecontrolspage"

.field public static final DEVICE_NAME:Ljava/lang/String; = "devicename"

.field private static FILE_NUM_LIMIT:I = 0x0

.field public static final HELP_SCREEN:Ljava/lang/String; = "helppage"

.field public static final HOMESCREEN:Ljava/lang/String; = "onetouchscreen"

.field public static final KBD_KEY_PRESS:Ljava/lang/String; = "kbdpress"

.field public static final LABEL:Ljava/lang/String; = "label"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final PROGRAM_ID:Ljava/lang/String; = "programid"

.field public static final SCREEN:Ljava/lang/String; = "currentscreen"

.field static final buffer:[B

.field private static mCount:I

.field private static mEventMsg:Ljava/lang/String;

.field private static mLogFileName:Ljava/lang/String;

.field private static mTracker:Lcom/logitech/harmonylink/util/EventTracker;

.field private static mUniqueId:Ljava/lang/String;

.field private static mWritten:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputBuffer:Ljava/io/BufferedInputStream;

.field private mOutputBuffer:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/logitech/harmonylink/util/EventTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/util/EventTracker;->LOG_TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/logitech/harmonylink/util/EventTracker;->mWritten:I

    .line 32
    const/4 v0, 0x1

    sput v0, Lcom/logitech/harmonylink/util/EventTracker;->mCount:I

    .line 34
    const/4 v0, 0x5

    sput v0, Lcom/logitech/harmonylink/util/EventTracker;->FILE_NUM_LIMIT:I

    .line 36
    const/16 v0, 0x2800

    new-array v0, v0, [B

    sput-object v0, Lcom/logitech/harmonylink/util/EventTracker;->buffer:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sput-object p0, Lcom/logitech/harmonylink/util/EventTracker;->mTracker:Lcom/logitech/harmonylink/util/EventTracker;

    .line 78
    return-void
.end method

.method private generateFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/logitech/harmonylink/util/EventTracker;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/logitech/harmonylink/util/EventTracker;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/util/EventTracker;->mLogFileName:Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/logitech/harmonylink/util/EventTracker;->mLogFileName:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentDateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 132
    .local v0, now:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 133
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEventTracker()Lcom/logitech/harmonylink/util/EventTracker;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/logitech/harmonylink/util/EventTracker;->mTracker:Lcom/logitech/harmonylink/util/EventTracker;

    if-nez v0, :cond_1

    .line 86
    const-class v0, Lcom/logitech/harmonylink/util/EventTracker;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/logitech/harmonylink/util/EventTracker;->mTracker:Lcom/logitech/harmonylink/util/EventTracker;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/logitech/harmonylink/util/EventTracker;

    invoke-direct {v1}, Lcom/logitech/harmonylink/util/EventTracker;-><init>()V

    sput-object v1, Lcom/logitech/harmonylink/util/EventTracker;->mTracker:Lcom/logitech/harmonylink/util/EventTracker;

    .line 90
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    sget-object v0, Lcom/logitech/harmonylink/util/EventTracker;->mTracker:Lcom/logitech/harmonylink/util/EventTracker;

    return-object v0

    .line 90
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private saveDataToFile(Ljava/lang/String;)V
    .locals 12
    .parameter "eventMsg"

    .prologue
    const-wide/16 v10, 0x2800

    .line 140
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 141
    .local v4, input:Ljava/io/ByteArrayInputStream;
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mInputBuffer:Ljava/io/BufferedInputStream;

    .line 143
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/logitech/harmonylink/util/EventTracker;->mLogFileName:Ljava/lang/String;

    const v9, 0x8000

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 144
    .local v5, out:Ljava/io/FileOutputStream;
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/logitech/harmonylink/util/EventTracker;->mLogFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 145
    .local v6, outFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-gtz v7, :cond_5

    .line 146
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x800

    invoke-direct {v7, v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mOutputBuffer:Ljava/io/BufferedOutputStream;

    .line 148
    :goto_0
    sget-object v7, Lcom/logitech/harmonylink/util/EventTracker;->buffer:[B

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    iget-object v8, p0, Lcom/logitech/harmonylink/util/EventTracker;->mInputBuffer:Ljava/io/BufferedInputStream;

    sget-object v9, Lcom/logitech/harmonylink/util/EventTracker;->buffer:[B

    invoke-virtual {v8, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    .line 150
    .local v0, amountRead:I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    .line 151
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .end local v0           #amountRead:I
    :cond_0
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mInputBuffer:Ljava/io/BufferedInputStream;

    if-eqz v7, :cond_1

    .line 177
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mInputBuffer:Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 178
    :cond_1
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mOutputBuffer:Ljava/io/BufferedOutputStream;

    if-eqz v7, :cond_2

    .line 179
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mOutputBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    .end local v4           #input:Ljava/io/ByteArrayInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .end local v6           #outFile:Ljava/io/File;
    :cond_2
    :goto_2
    return-void

    .line 153
    .restart local v0       #amountRead:I
    .restart local v4       #input:Ljava/io/ByteArrayInputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #outFile:Ljava/io/File;
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/logitech/harmonylink/util/EventTracker;->mOutputBuffer:Ljava/io/BufferedOutputStream;

    sget-object v9, Lcom/logitech/harmonylink/util/EventTracker;->buffer:[B

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 154
    sget v8, Lcom/logitech/harmonylink/util/EventTracker;->mWritten:I

    add-int/2addr v8, v0

    sput v8, Lcom/logitech/harmonylink/util/EventTracker;->mWritten:I

    .line 155
    monitor-exit v7

    goto :goto_0

    .end local v0           #amountRead:I
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 169
    .end local v4           #input:Ljava/io/ByteArrayInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .end local v6           #outFile:Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 170
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 176
    :try_start_6
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mInputBuffer:Ljava/io/BufferedInputStream;

    if-eqz v7, :cond_4

    .line 177
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mInputBuffer:Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 178
    :cond_4
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mOutputBuffer:Ljava/io/BufferedOutputStream;

    if-eqz v7, :cond_2

    .line 179
    iget-object v7, p0, Lcom/logitech/harmonylink/util/EventTracker;->mOutputBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 180
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 181
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 158
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v4       #input:Ljava/io/ByteArrayInputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #outFile:Ljava/io/File;
    :cond_5
    :try_start_7
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-ltz v7, :cond_0

    .line 159
    sget v7, Lcom/logitech/harmonylink/util/EventTracker;->mCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/logitech/harmonylink/util/EventTracker;->mCount:I

    .line 160
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, fileToUpload:Ljava/lang/String;
    invoke-direct {p0}, Lcom/logitech/harmonylink/util/EventTracker;->generateFileName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/logitech/harmonylink/util/EventTracker;->mLogFileName:Ljava/lang/String;

    .line 162
    sget v7, Lcom/logitech/harmonylink/util/EventTracker;->mCount:I

    sget v8, Lcom/logitech/harmonylink/util/EventTracker;->FILE_NUM_LIMIT:I

    if-ne v7, v8, :cond_6

    .line 165
    const/4 v7, 0x1

    sput v7, Lcom/logitech/harmonylink/util/EventTracker;->mCount:I

    .line 167
    :cond_6
    invoke-direct {p0, v3}, Lcom/logitech/harmonylink/util/EventTracker;->uploadFile(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 174
    .end local v3           #fileToUpload:Ljava/lang/String;
    .end local v4           #input:Ljava/io/ByteArrayInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .end local v6           #outFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    .line 176
    :try_start_8
    iget-object v8, p0, Lcom/logitech/harmonylink/util/EventTracker;->mInputBuffer:Ljava/io/BufferedInputStream;

    if-eqz v8, :cond_7

    .line 177
    iget-object v8, p0, Lcom/logitech/harmonylink/util/EventTracker;->mInputBuffer:Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 178
    :cond_7
    iget-object v8, p0, Lcom/logitech/harmonylink/util/EventTracker;->mOutputBuffer:Ljava/io/BufferedOutputStream;

    if-eqz v8, :cond_8

    .line 179
    iget-object v8, p0, Lcom/logitech/harmonylink/util/EventTracker;->mOutputBuffer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 182
    :cond_8
    :goto_3
    throw v7

    .line 180
    .restart local v4       #input:Ljava/io/ByteArrayInputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #outFile:Ljava/io/File;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 181
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 180
    .end local v2           #ex:Ljava/io/IOException;
    .end local v4           #input:Ljava/io/ByteArrayInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .end local v6           #outFile:Ljava/io/File;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 181
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private uploadFile(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/util/EventTracker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/logitech/harmonylink/service/UploadEventTrackLogService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v0, uploadIntent:Landroid/content/Intent;
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/logitech/harmonylink/util/EventTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    return-void
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
    .line 104
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    return-object v0
.end method

.method public startTracker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "unique_id"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/logitech/harmonylink/util/EventTracker;->mContext:Landroid/content/Context;

    .line 115
    sput-object p2, Lcom/logitech/harmonylink/util/EventTracker;->mUniqueId:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/logitech/harmonylink/util/EventTracker;->generateFileName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/util/EventTracker;->mLogFileName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public trackEvents(Lcom/logitech/connect/client/transport/NameValuePairs;)V
    .locals 2
    .parameter "pairs"

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/util/EventTracker;->mEventMsg:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/logitech/harmonylink/util/EventTracker;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/logitech/harmonylink/util/EventTracker;->mEventMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/util/EventTracker;->saveDataToFile(Ljava/lang/String;)V

    .line 127
    return-void
.end method
