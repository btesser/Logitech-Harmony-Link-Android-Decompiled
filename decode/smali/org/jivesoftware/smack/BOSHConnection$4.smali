.class Lorg/jivesoftware/smack/BOSHConnection$4;
.super Ljava/lang/Object;
.source "BOSHConnection.java"

# interfaces
.implements Lcom/kenai/jbosh/BOSHClientRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/BOSHConnection;->initDebugger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection$4;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestSent(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 631
    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->getBody()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection$4;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/BOSHConnection;->writer:Ljava/io/Writer;

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->getBody()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kenai/jbosh/AbstractBody;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    goto :goto_0
.end method
