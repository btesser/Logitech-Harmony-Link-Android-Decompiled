.class Lorg/jivesoftware/smack/BOSHConnection$5;
.super Ljava/lang/Thread;
.source "BOSHConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/BOSHConnection;->initDebugger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bufferLength:I

.field final synthetic this$0:Lorg/jivesoftware/smack/BOSHConnection;

.field private thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 643
    iput-object p0, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->thread:Ljava/lang/Thread;

    .line 644
    const/16 v0, 0x400

    iput v0, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->bufferLength:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 648
    :try_start_0
    iget v0, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->bufferLength:I

    new-array v0, v0, [C

    .line 649
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    #getter for: Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;
    invoke-static {v1}, Lorg/jivesoftware/smack/BOSHConnection;->access$100(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->thread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    #getter for: Lorg/jivesoftware/smack/BOSHConnection;->done:Z
    invoke-static {v1}, Lorg/jivesoftware/smack/BOSHConnection;->access$200(Lorg/jivesoftware/smack/BOSHConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    const/4 v2, 0x0

    iget v3, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->bufferLength:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 655
    :cond_0
    return-void
.end method
