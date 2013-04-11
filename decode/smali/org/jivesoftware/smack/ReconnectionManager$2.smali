.class Lorg/jivesoftware/smack/ReconnectionManager$2;
.super Ljava/lang/Thread;
.source "ReconnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/ReconnectionManager;->reconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private attempts:I

.field final synthetic this$0:Lorg/jivesoftware/smack/ReconnectionManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/ReconnectionManager;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    return-void
.end method

.method private timeDelay()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 82
    const/16 v0, 0x12c

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 85
    const/16 v0, 0x3c

    goto :goto_0

    .line 87
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #calls: Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z
    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$100(Lorg/jivesoftware/smack/ReconnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager$2;->timeDelay()I

    move-result v0

    .line 104
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #calls: Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z
    invoke-static {v1}, Lorg/jivesoftware/smack/ReconnectionManager;->access$100(Lorg/jivesoftware/smack/ReconnectionManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 107
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 108
    add-int/lit8 v0, v0, -0x1

    .line 109
    iget-object v1, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/ReconnectionManager;->notifyAttemptToReconnectIn(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    .line 113
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 115
    iget-object v2, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/ReconnectionManager;->notifyReconnectionFailed(Ljava/lang/Exception;)V

    move v0, v1

    .line 116
    goto :goto_1

    .line 121
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #calls: Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z
    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$100(Lorg/jivesoftware/smack/ReconnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #getter for: Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$200(Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->connect()V
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 127
    iget-object v1, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/ReconnectionManager;->notifyReconnectionFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 130
    :cond_2
    return-void
.end method
