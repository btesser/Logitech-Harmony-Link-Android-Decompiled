.class Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;
.super Ljava/lang/Object;
.source "PacketWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAliveTask"
.end annotation


# instance fields
.field private delay:I

.field final synthetic this$0:Lorg/jivesoftware/smack/PacketWriter;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketWriter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput p2, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->delay:I

    .line 274
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 284
    const-wide/16 v0, 0x3a98

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->done:Z
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketWriter;->access$100(Lorg/jivesoftware/smack/PacketWriter;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->keepAliveThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketWriter;->access$200(Lorg/jivesoftware/smack/PacketWriter;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 290
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;
    invoke-static {v0}, Lorg/jivesoftware/smack/PacketWriter;->access$300(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;

    move-result-object v0

    monitor-enter v0

    .line 292
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->lastActive:J
    invoke-static {v3}, Lorg/jivesoftware/smack/PacketWriter;->access$400(Lorg/jivesoftware/smack/PacketWriter;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget v3, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->delay:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 294
    :try_start_2
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;
    invoke-static {v1}, Lorg/jivesoftware/smack/PacketWriter;->access$300(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;
    invoke-static {v1}, Lorg/jivesoftware/smack/PacketWriter;->access$300(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 301
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    :try_start_4
    iget v0, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->delay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 286
    :catch_1
    move-exception v0

    goto :goto_0

    .line 310
    :cond_1
    return-void

    .line 297
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method protected setThread(Ljava/lang/Thread;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->thread:Ljava/lang/Thread;

    .line 278
    return-void
.end method
