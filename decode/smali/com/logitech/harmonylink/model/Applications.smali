.class public Lcom/logitech/harmonylink/model/Applications;
.super Lcom/logitech/harmonylink/model/ContentType;
.source "Applications.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/logitech/harmonylink/model/Applications;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/model/Applications;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/logitech/harmonylink/model/ContentType;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/ContentType;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/logitech/harmonylink/model/Applications;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;Z)V
    .locals 2
    .parameter "connectClient"
    .parameter "oneTouchManager"
    .parameter "isFromAddMore"

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p3, :cond_0

    .line 39
    invoke-virtual {p2, v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    .line 43
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/logitech/harmonylink/model/Applications;->retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V

    .line 44
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/model/Applications;->setPopulated(Z)V

    goto :goto_0
.end method

.method public retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V
    .locals 3
    .parameter "connectClient"
    .parameter "oneTouchManager"
    .parameter "isFromAddMore"
    .parameter "bodyContent"

    .prologue
    .line 50
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    invoke-direct {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>()V

    .line 51
    .local v0, body:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v1, "path"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 52
    const-string v1, "action"

    const-string v2, "retrieveContents"

    invoke-virtual {v0, v1, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 115
    return-void
.end method
