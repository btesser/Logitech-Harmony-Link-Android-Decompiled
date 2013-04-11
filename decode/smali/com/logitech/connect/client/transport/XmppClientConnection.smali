.class public Lcom/logitech/connect/client/transport/XmppClientConnection;
.super Ljava/lang/Object;
.source "XmppClientConnection.java"


# static fields
.field public static final CONNECTED_AND_AUTHORIZED:I = 0x2

.field public static final CONNECTED_AS_GUEST:I = 0x1

.field public static final ERROR_CONNECTION_DROPPED:I = 0x3

.field public static final ERROR_LOGIN_FAILED:I = 0x5

.field public static final ERROR_NO_SERVER:I = 0x1

.field public static final ERROR_SERVER_BUSY:I = 0x2

.field public static final ERROR_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NOT_CONNECTED:I

.field public static final WIFI_ERROR:I


# instance fields
.field final cmdCleanup:Ljava/lang/Runnable;

.field final cmdConnect:Ljava/lang/Runnable;

.field final cmdDisconnect:Ljava/lang/Runnable;

.field mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

.field private mConnected:I

.field final mConnectionListener:Lorg/jivesoftware/smack/ConnectionListener;

.field private mErrorCode:I

.field private mErrorCondition:Z

.field private mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mLocalHandler:Landroid/os/Handler;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mServer:Ljava/lang/String;

.field private mService:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/connect/client/transport/XmppClientConnection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IConnectClient;)V
    .locals 2
    .parameter "server"
    .parameter "port"
    .parameter "service"
    .parameter "userName"
    .parameter "password"
    .parameter "client"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I

    .line 55
    iput-boolean v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCondition:Z

    .line 56
    iput v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCode:I

    .line 138
    new-instance v1, Lcom/logitech/connect/client/transport/XmppClientConnection$3;

    invoke-direct {v1, p0}, Lcom/logitech/connect/client/transport/XmppClientConnection$3;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection;)V

    iput-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdDisconnect:Ljava/lang/Runnable;

    .line 160
    new-instance v1, Lcom/logitech/connect/client/transport/XmppClientConnection$4;

    invoke-direct {v1, p0}, Lcom/logitech/connect/client/transport/XmppClientConnection$4;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection;)V

    iput-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdCleanup:Ljava/lang/Runnable;

    .line 172
    new-instance v1, Lcom/logitech/connect/client/transport/XmppClientConnection$5;

    invoke-direct {v1, p0}, Lcom/logitech/connect/client/transport/XmppClientConnection$5;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection;)V

    iput-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 196
    new-instance v1, Lcom/logitech/connect/client/transport/XmppClientConnection$6;

    invoke-direct {v1, p0}, Lcom/logitech/connect/client/transport/XmppClientConnection$6;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection;)V

    iput-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdConnect:Ljava/lang/Runnable;

    .line 85
    iput-object p6, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    .line 86
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mService:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mUserName:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mPassword:Ljava/lang/String;

    .line 90
    iput p2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mPort:I

    .line 92
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 96
    :cond_0
    new-instance v0, Lcom/logitech/connect/client/transport/XmppClientConnection$2;

    invoke-direct {v0, p0}, Lcom/logitech/connect/client/transport/XmppClientConnection$2;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection;)V

    .line 110
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 111
    const-string v1, "localXmppConnection handler"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/connect/client/transport/XmppClientConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I

    return v0
.end method

.method static synthetic access$002(Lcom/logitech/connect/client/transport/XmppClientConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I

    return p1
.end method

.method static synthetic access$100(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/logitech/connect/client/transport/XmppClientConnection;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/logitech/connect/client/transport/XmppClientConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/logitech/connect/client/transport/XmppClientConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mPort:I

    return v0
.end method

.method static synthetic access$202(Lcom/logitech/connect/client/transport/XmppClientConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mPort:I

    return p1
.end method

.method static synthetic access$300(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/logitech/connect/client/transport/XmppClientConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/logitech/connect/client/transport/XmppClientConnection;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/logitech/connect/client/transport/XmppClientConnection;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method static synthetic access$502(Lcom/logitech/connect/client/transport/XmppClientConnection;Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object p1
.end method

.method static synthetic access$600(Lcom/logitech/connect/client/transport/XmppClientConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCondition:Z

    return v0
.end method

.method static synthetic access$602(Lcom/logitech/connect/client/transport/XmppClientConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCondition:Z

    return p1
.end method

.method static synthetic access$700(Lcom/logitech/connect/client/transport/XmppClientConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCode:I

    return v0
.end method

.method static synthetic access$702(Lcom/logitech/connect/client/transport/XmppClientConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCode:I

    return p1
.end method

.method static synthetic access$800(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mService:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method private sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/logitech/connect/client/transport/XmppClientConnection$7;

    invoke-direct {v1, p0, p1}, Lcom/logitech/connect/client/transport/XmppClientConnection$7;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    .line 412
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdCleanup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method public connectTo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "server"
    .parameter "port"
    .parameter "userName"
    .parameter "passWord"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/logitech/connect/client/transport/XmppClientConnection$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/logitech/connect/client/transport/XmppClientConnection$1;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    return-void
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mUserName:Ljava/lang/String;

    .line 338
    :cond_2
    return-object v0
.end method

.method public isConnected()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v2, :cond_0

    .line 119
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 120
    .local v1, presence:Lorg/jivesoftware/smack/packet/Presence;
    const-string v2, "TV"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 121
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 124
    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v2

    .line 133
    .end local v1           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :goto_0
    return v2

    .line 125
    .restart local v1       #presence:Lorg/jivesoftware/smack/packet/Presence;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 126
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/logitech/connect/client/transport/XmppClientConnection;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in isConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v5

    .line 128
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_0
    move v2, v5

    .line 133
    goto :goto_0
.end method

.method public sendMessage(Lcom/logitech/connect/client/transport/IMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 398
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    iget-object v1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mUserName:Ljava/lang/String;

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 399
    .local v0, m:Lorg/jivesoftware/smack/packet/Message;
    new-instance v1, Lcom/logitech/connect/client/transport/XmppClientConnection$8;

    invoke-direct {v1, p0, p1}, Lcom/logitech/connect/client/transport/XmppClientConnection$8;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection;Lcom/logitech/connect/client/transport/IMessage;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 404
    invoke-direct {p0, v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 406
    return-void
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/IOpenApiRequest;
    .locals 2
    .parameter "uri"
    .parameter "body"

    .prologue
    .line 344
    new-instance v0, Lcom/logitech/connect/client/transport/OaIQ;

    invoke-virtual {p0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/logitech/connect/client/transport/OaIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v0, r:Lcom/logitech/connect/client/transport/OaIQ;
    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/OaIQ;->getPacketID()Ljava/lang/String;

    .line 346
    invoke-direct {p0, v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 347
    return-object v0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/IOpenApiRequest;
    .locals 2
    .parameter "id"
    .parameter "uri"
    .parameter "body"

    .prologue
    .line 324
    new-instance v0, Lcom/logitech/connect/client/transport/OaIQ;

    invoke-virtual {p0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/logitech/connect/client/transport/OaIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v0, r:Lcom/logitech/connect/client/transport/OaIQ;
    invoke-direct {p0, v0}, Lcom/logitech/connect/client/transport/XmppClientConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 328
    return-object v0
.end method
