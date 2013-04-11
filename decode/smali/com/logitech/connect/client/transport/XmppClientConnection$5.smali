.class Lcom/logitech/connect/client/transport/XmppClientConnection$5;
.super Ljava/lang/Object;
.source "XmppClientConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


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
    .line 192
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$5;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$5;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iget-object v0, v0, Lcom/logitech/connect/client/transport/XmppClientConnection;->mConnectClient:Lcom/logitech/connect/client/transport/IConnectClient;

    invoke-interface {v0}, Lcom/logitech/connect/client/transport/IConnectClient;->onXmppConnectionClosedOnError()V

    .line 181
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 185
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 189
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
