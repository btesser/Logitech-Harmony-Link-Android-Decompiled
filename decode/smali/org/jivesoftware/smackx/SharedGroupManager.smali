.class public Lorg/jivesoftware/smackx/SharedGroupManager;
.super Ljava/lang/Object;
.source "SharedGroupManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedGroups(Lorg/jivesoftware/smack/Connection;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;-><init>()V

    .line 33
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 36
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 39
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 42
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 44
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from the server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_1

    .line 49
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 51
    :cond_1
    check-cast p0, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo;->getGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
