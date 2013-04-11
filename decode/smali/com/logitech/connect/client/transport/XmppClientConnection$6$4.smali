.class Lcom/logitech/connect/client/transport/XmppClientConnection$6$4;
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
    .line 265
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6$4;->this$1:Lcom/logitech/connect/client/transport/XmppClientConnection$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$6$4;->this$1:Lcom/logitech/connect/client/transport/XmppClientConnection$6;

    iget-object v0, v0, Lcom/logitech/connect/client/transport/XmppClientConnection$6;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v0, v0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    invoke-interface {v0}, Lcom/logitech/connect/client/transport/IConnectClient;->onPresenceReceived()V

    .line 267
    return-void
.end method
