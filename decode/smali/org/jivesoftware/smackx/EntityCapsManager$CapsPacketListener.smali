.class Lorg/jivesoftware/smackx/EntityCapsManager$CapsPacketListener;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/EntityCapsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CapsPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/EntityCapsManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/EntityCapsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lorg/jivesoftware/smackx/EntityCapsManager$CapsPacketListener;->this$0:Lorg/jivesoftware/smackx/EntityCapsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter

    .prologue
    .line 323
    const-string v0, "c"

    const-string v1, "http://jabber.org/protocol/caps"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/CapsExtension;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/CapsExtension;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/CapsExtension;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lorg/jivesoftware/smackx/EntityCapsManager$CapsPacketListener;->this$0:Lorg/jivesoftware/smackx/EntityCapsManager;

    invoke-virtual {v2, v1, v0}, Lorg/jivesoftware/smackx/EntityCapsManager;->addUserCapsNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method
