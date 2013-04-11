.class Lcom/logitech/connect/client/transport/XmppClientConnection$6$2;
.super Ljava/lang/Object;
.source "XmppClientConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/client/transport/XmppClientConnection$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/connect/client/transport/XmppClientConnection$6;


# direct methods
.method constructor <init>(Lcom/logitech/connect/client/transport/XmppClientConnection$6;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6$2;->this$1:Lcom/logitech/connect/client/transport/XmppClientConnection$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 245
    instance-of v2, p1, Lcom/logitech/connect/client/transport/OaIQ;

    if-eqz v2, :cond_0

    .line 247
    move-object v0, p1

    check-cast v0, Lcom/logitech/connect/client/transport/OaIQ;

    move-object v1, v0

    .line 248
    .local v1, iq:Lcom/logitech/connect/client/transport/OaIQ;
    iget-object v2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6$2;->this$1:Lcom/logitech/connect/client/transport/XmppClientConnection$6;

    iget-object v2, v2, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v2, v2, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    invoke-interface {v2, v1}, Lcom/logitech/connect/client/transport/IConnectClient;->onOaRequestReceived(Lcom/logitech/connect/client/transport/OaIQ;)V

    .line 250
    .end local v1           #iq:Lcom/logitech/connect/client/transport/OaIQ;
    :cond_0
    return-void
.end method
