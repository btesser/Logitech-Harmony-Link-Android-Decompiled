.class Lcom/logitech/connect/client/transport/XmppClientConnection$8;
.super Ljava/lang/Object;
.source "XmppClientConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/client/transport/XmppClientConnection;->sendMessage(Lcom/logitech/connect/client/transport/IMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

.field final synthetic val$message:Lcom/logitech/connect/client/transport/IMessage;


# direct methods
.method constructor <init>(Lcom/logitech/connect/client/transport/XmppClientConnection;Lcom/logitech/connect/client/transport/IMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$8;->this$0:Lcom/logitech/connect/client/transport/XmppClientConnection;

    iput-object p2, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$8;->val$message:Lcom/logitech/connect/client/transport/IMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 402
    const-string v0, "<%s xmlns=\'%s\'>%s</%s>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$8;->val$message:Lcom/logitech/connect/client/transport/IMessage;

    invoke-interface {v3}, Lcom/logitech/connect/client/transport/IMessage;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$8;->val$message:Lcom/logitech/connect/client/transport/IMessage;

    invoke-interface {v3}, Lcom/logitech/connect/client/transport/IMessage;->getUri()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$8;->val$message:Lcom/logitech/connect/client/transport/IMessage;

    invoke-interface {v3}, Lcom/logitech/connect/client/transport/IMessage;->getBody()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/logitech/connect/client/transport/XmppClientConnection$8;->val$message:Lcom/logitech/connect/client/transport/IMessage;

    invoke-interface {v3}, Lcom/logitech/connect/client/transport/IMessage;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
