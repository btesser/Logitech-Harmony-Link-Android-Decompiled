.class Lcom/logitech/connect/client/transport/XmppClientConnection$6;
.super Ljava/lang/Object;
.source "XmppClientConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/connect/client/transport/XmppClientConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;


# direct methods
.method constructor <init>(Lcom/logitech/connect/client/transport/XmppClientConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 201
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$100(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    :try_start_0
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mServer:Ljava/lang/String;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$100(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mPort:I
    invoke-static {v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$200(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v12

    iget-object v13, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mService:Ljava/lang/String;
    invoke-static {v13}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$800(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v11, v12, v13}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    .local v0, connConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSendPresence(Z)V

    .line 208
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setRosterLoadedAtLogin(Z)V

    .line 209
    new-instance v11, Lcom/logitech/connect/client/transport/XmppClientConnection$6$1;

    invoke-direct {v11, p0}, Lcom/logitech/connect/client/transport/XmppClientConnection$6$1;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection$6;)V

    invoke-virtual {v0, v11}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 242
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    new-instance v12, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v12, v0}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v11, v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$502(Lcom/logitech/connect/client/transport/XmppClientConnection;Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    .line 243
    new-instance v4, Lcom/logitech/connect/client/transport/XmppClientConnection$6$2;

    invoke-direct {v4, p0}, Lcom/logitech/connect/client/transport/XmppClientConnection$6$2;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection$6;)V

    .line 252
    .local v4, myListener:Lorg/jivesoftware/smack/PacketListener;
    new-instance v2, Lcom/logitech/connect/client/transport/XmppClientConnection$6$3;

    invoke-direct {v2, p0}, Lcom/logitech/connect/client/transport/XmppClientConnection$6$3;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection$6;)V

    .line 261
    .local v2, messageListener:Lorg/jivesoftware/smack/PacketListener;
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v11

    new-instance v12, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v13, Lcom/logitech/connect/client/transport/OaIQ;

    invoke-direct {v12, v13}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v11, v4, v12}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 262
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v11

    new-instance v12, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v13, "event"

    const-string v14, "connect.logitech.com"

    invoke-direct {v12, v13, v14}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v2, v12}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 264
    new-instance v6, Lcom/logitech/connect/client/transport/XmppClientConnection$6$4;

    invoke-direct {v6, p0}, Lcom/logitech/connect/client/transport/XmppClientConnection$6$4;-><init>(Lcom/logitech/connect/client/transport/XmppClientConnection$6;)V

    .line 269
    .local v6, presenceListener:Lorg/jivesoftware/smack/PacketListener;
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 272
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v11

    invoke-virtual {v11}, Lorg/jivesoftware/smack/XMPPConnection;->connect()V

    .line 273
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v11

    iget-object v12, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v12, v12, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {v11, v12}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 275
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v11

    iget-object v12, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mUserName:Ljava/lang/String;
    invoke-static {v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$300(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mPassword:Ljava/lang/String;
    invoke-static {v13}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$900(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "gatorade."

    invoke-virtual {v11, v12, v13, v14}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v5, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v11, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v5, v11}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 278
    .local v5, presence:Lorg/jivesoftware/smack/packet/Presence;
    const-string v11, "TV"

    invoke-virtual {v5, v11}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 279
    const/4 v11, -0x1

    invoke-virtual {v5, v11}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    .line 281
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mLocalConnection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$500(Lcom/logitech/connect/client/transport/XmppClientConnection;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v11

    invoke-virtual {v11, v5}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 282
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$000(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v9

    .line 283
    .local v9, wasConnected:I
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const-string v12, "guest"

    iget-object v13, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mUserName:Ljava/lang/String;
    invoke-static {v13}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$300(Lcom/logitech/connect/client/transport/XmppClientConnection;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_1
    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I
    invoke-static {v11, v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$002(Lcom/logitech/connect/client/transport/XmppClientConnection;I)I

    .line 284
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const/4 v12, 0x0

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCondition:Z
    invoke-static {v11, v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$602(Lcom/logitech/connect/client/transport/XmppClientConnection;Z)Z

    .line 285
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const/4 v12, 0x0

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCode:I
    invoke-static {v11, v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$702(Lcom/logitech/connect/client/transport/XmppClientConnection;I)I

    .line 286
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v11, v11, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I
    invoke-static {v11}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$000(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v11

    if-eq v9, v11, :cond_0

    .line 287
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v11, v11, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    iget-object v12, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnected:I
    invoke-static {v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$000(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v12

    iget-object v13, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCondition:Z
    invoke-static {v13}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$600(Lcom/logitech/connect/client/transport/XmppClientConnection;)Z

    move-result v13

    iget-object v14, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    #getter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCode:I
    invoke-static {v14}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$700(Lcom/logitech/connect/client/transport/XmppClientConnection;)I

    move-result v14

    invoke-interface {v11, v12, v13, v14}, Lcom/logitech/connect/client/transport/IConnectClient;->onConnectChanged(IZI)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 289
    .end local v0           #connConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;
    .end local v2           #messageListener:Lorg/jivesoftware/smack/PacketListener;
    .end local v4           #myListener:Lorg/jivesoftware/smack/PacketListener;
    .end local v5           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v6           #presenceListener:Lorg/jivesoftware/smack/PacketListener;
    .end local v9           #wasConnected:I
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 290
    .local v10, xex:Lorg/jivesoftware/smack/XMPPException;
    const-string v7, ""

    .line 291
    .local v7, str:Ljava/lang/String;
    invoke-static {}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$1000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cmdConnect:XMPPException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lorg/jivesoftware/smack/XMPPException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    invoke-virtual {v10}, Lorg/jivesoftware/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v8

    .line 293
    .local v8, t:Ljava/lang/Throwable;
    if-eqz v8, :cond_2

    .line 294
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 296
    :cond_2
    const-string v11, "java.net.SocketTimeoutException"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 297
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const/4 v12, 0x1

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCode:I
    invoke-static {v11, v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$702(Lcom/logitech/connect/client/transport/XmppClientConnection;I)I

    .line 301
    :cond_3
    :goto_2
    invoke-virtual {v10}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, msg:Ljava/lang/String;
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const/4 v12, 0x1

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCondition:Z
    invoke-static {v11, v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$602(Lcom/logitech/connect/client/transport/XmppClientConnection;Z)Z

    .line 303
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v11, v11, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    if-eqz v11, :cond_6

    const-string v11, "SASL authentication failed using mechanism PLAIN"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 306
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v11, v11, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    invoke-interface {v11}, Lcom/logitech/connect/client/transport/IConnectClient;->reset()V

    .line 307
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v11, v11, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    const/4 v12, 0x5

    invoke-interface {v11, v12, v3}, Lcom/logitech/connect/client/transport/IConnectClient;->onLoginFailed(ILjava/lang/String;)V

    .line 308
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v11, v11, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    invoke-interface {v11}, Lcom/logitech/connect/client/transport/IConnectClient;->disconnect()V

    goto/16 :goto_0

    .line 283
    .end local v3           #msg:Ljava/lang/String;
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #t:Ljava/lang/Throwable;
    .end local v10           #xex:Lorg/jivesoftware/smack/XMPPException;
    .restart local v0       #connConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;
    .restart local v2       #messageListener:Lorg/jivesoftware/smack/PacketListener;
    .restart local v4       #myListener:Lorg/jivesoftware/smack/PacketListener;
    .restart local v5       #presence:Lorg/jivesoftware/smack/packet/Presence;
    .restart local v6       #presenceListener:Lorg/jivesoftware/smack/PacketListener;
    .restart local v9       #wasConnected:I
    :cond_4
    const/4 v12, 0x2

    goto/16 :goto_1

    .line 298
    .end local v0           #connConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;
    .end local v2           #messageListener:Lorg/jivesoftware/smack/PacketListener;
    .end local v4           #myListener:Lorg/jivesoftware/smack/PacketListener;
    .end local v5           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v6           #presenceListener:Lorg/jivesoftware/smack/PacketListener;
    .end local v9           #wasConnected:I
    .restart local v7       #str:Ljava/lang/String;
    .restart local v8       #t:Ljava/lang/Throwable;
    .restart local v10       #xex:Lorg/jivesoftware/smack/XMPPException;
    :cond_5
    const-string v11, "java.io.IOException: Socket Closed"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 299
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const/4 v12, 0x2

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCode:I
    invoke-static {v11, v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$702(Lcom/logitech/connect/client/transport/XmppClientConnection;I)I

    goto :goto_2

    .line 311
    .restart local v3       #msg:Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v11, v11, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdDisconnect:Ljava/lang/Runnable;

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 313
    .end local v3           #msg:Ljava/lang/String;
    .end local v7           #str:Ljava/lang/String;
    .end local v8           #t:Ljava/lang/Throwable;
    .end local v10           #xex:Lorg/jivesoftware/smack/XMPPException;
    :catch_1
    move-exception v11

    move-object v1, v11

    .line 315
    .local v1, ex:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    const/4 v12, 0x1

    #setter for: Lcom/logitech/connect/client/transport/XmppClientConnection;->mErrorCondition:Z
    invoke-static {v11, v12}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$602(Lcom/logitech/connect/client/transport/XmppClientConnection;Z)Z

    .line 316
    iget-object v11, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v11, v11, Lcom/logitech/connect/client/transport/XmppClientConnection;->cmdDisconnect:Ljava/lang/Runnable;

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 317
    invoke-static {}, Lcom/logitech/connect/client/transport/XmppClientConnection;->access$1000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cmdConnect:Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
