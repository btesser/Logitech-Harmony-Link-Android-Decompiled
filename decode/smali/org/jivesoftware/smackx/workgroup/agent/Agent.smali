.class public Lorg/jivesoftware/smackx/workgroup/agent/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private workgroupJID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->connection:Lorg/jivesoftware/smack/Connection;

    .line 67
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->workgroupJID:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static getWorkgroups(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)Ljava/util/Collection;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/Connection;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentWorkgroups;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentWorkgroups;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentWorkgroups;->setTo(Ljava/lang/String;)V

    .line 45
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentWorkgroups;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 47
    invoke-virtual {p2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 49
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentWorkgroups;

    .line 52
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentWorkgroups;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentWorkgroups;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentWorkgroups;->getWorkgroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;-><init>()V

    .line 86
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 87
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->setTo(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->setFrom(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 93
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;

    .line 96
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 97
    if-nez p0, :cond_0

    .line 98
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;-><init>()V

    .line 118
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 119
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->setTo(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->setFrom(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->setName(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentInfo;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 126
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 129
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 130
    if-nez p0, :cond_0

    .line 131
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 136
    :cond_1
    return-void
.end method
