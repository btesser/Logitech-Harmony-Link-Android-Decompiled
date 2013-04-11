.class public Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor;
.super Ljava/lang/Object;
.source "DeafOccupantInterceptor.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$1;,
        Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public interceptPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter

    .prologue
    .line 48
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    move-object v1, v0

    .line 50
    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const-string v2, "x"

    const-string v3, "http://jabber.org/protocol/muc"

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$DeafExtension;-><init>(Lorg/jivesoftware/smackx/muc/DeafOccupantInterceptor$1;)V

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Packet;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 55
    :cond_0
    return-void
.end method
