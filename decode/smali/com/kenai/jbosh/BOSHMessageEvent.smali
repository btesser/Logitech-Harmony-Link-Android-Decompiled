.class public final Lcom/kenai/jbosh/BOSHMessageEvent;
.super Ljava/util/EventObject;
.source "BOSHMessageEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final body:Lcom/kenai/jbosh/AbstractBody;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/kenai/jbosh/AbstractBody;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p2, p0, Lcom/kenai/jbosh/BOSHMessageEvent;->body:Lcom/kenai/jbosh/AbstractBody;

    .line 53
    return-void
.end method

.method static createRequestSentEvent(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/kenai/jbosh/BOSHMessageEvent;

    invoke-direct {v0, p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;-><init>(Ljava/lang/Object;Lcom/kenai/jbosh/AbstractBody;)V

    return-object v0
.end method

.method static createResponseReceivedEvent(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/kenai/jbosh/BOSHMessageEvent;

    invoke-direct {v0, p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;-><init>(Ljava/lang/Object;Lcom/kenai/jbosh/AbstractBody;)V

    return-object v0
.end method


# virtual methods
.method public getBody()Lcom/kenai/jbosh/AbstractBody;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHMessageEvent;->body:Lcom/kenai/jbosh/AbstractBody;

    return-object v0
.end method
