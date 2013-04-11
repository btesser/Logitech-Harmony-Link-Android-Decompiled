.class Lorg/jivesoftware/smackx/RosterExchangeManager$1;
.super Ljava/lang/Object;
.source "RosterExchangeManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/RosterExchangeManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/RosterExchangeManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/RosterExchangeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lorg/jivesoftware/smackx/RosterExchangeManager$1;->this$0:Lorg/jivesoftware/smackx/RosterExchangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter

    .prologue
    .line 167
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    .line 168
    const-string v0, "x"

    const-string v1, "jabber:x:roster"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/RosterExchange;

    .line 171
    iget-object v1, p0, Lorg/jivesoftware/smackx/RosterExchangeManager$1;->this$0:Lorg/jivesoftware/smackx/RosterExchangeManager;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/RosterExchange;->getRosterEntries()Ljava/util/Iterator;

    move-result-object v0

    #calls: Lorg/jivesoftware/smackx/RosterExchangeManager;->fireRosterExchangeListeners(Ljava/lang/String;Ljava/util/Iterator;)V
    invoke-static {v1, v2, v0}, Lorg/jivesoftware/smackx/RosterExchangeManager;->access$000(Lorg/jivesoftware/smackx/RosterExchangeManager;Ljava/lang/String;Ljava/util/Iterator;)V

    .line 172
    return-void
.end method
