.class Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;
.super Ljava/lang/Object;
.source "AdHocCommandManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 341
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    #getter for: Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$500(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    #getter for: Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;
    invoke-static {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$500(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/commands/LocalCommand;

    .line 347
    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/commands/LocalCommand;->getCreationDate()J

    move-result-wide v3

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-wide/32 v5, 0x3a980

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 361
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$7;->this$0:Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    #getter for: Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;
    invoke-static {v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->access$500(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 366
    :cond_1
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method
