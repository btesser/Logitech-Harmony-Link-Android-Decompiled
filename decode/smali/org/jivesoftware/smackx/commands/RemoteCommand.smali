.class public Lorg/jivesoftware/smackx/commands/RemoteCommand;
.super Lorg/jivesoftware/smackx/commands/AdHocCommand;
.source "RemoteCommand.java"


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private jid:Ljava/lang/String;

.field private packetReplyTimeout:J

.field private sessionID:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommand;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->connection:Lorg/jivesoftware/smack/Connection;

    .line 83
    iput-object p3, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->jid:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->setNode(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->packetReplyTimeout:J

    .line 86
    return-void
.end method

.method private executeAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;J)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->executeAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;Lorg/jivesoftware/smackx/Form;J)V

    .line 127
    return-void
.end method

.method private executeAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;Lorg/jivesoftware/smackx/Form;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;-><init>()V

    .line 144
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 145
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->getOwnerJID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setTo(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setNode(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setSessionID(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)V

    .line 150
    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setForm(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 159
    invoke-virtual {v1, p3, p4}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 162
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 163
    if-nez v0, :cond_1

    .line 164
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 167
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 170
    :cond_2
    check-cast v0, Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    .line 171
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->getSessionID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->sessionID:Ljava/lang/String;

    .line 172
    invoke-super {p0, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommand;->setData(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V

    .line 173
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    iget-wide v1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->packetReplyTimeout:J

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->executeAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;J)V

    .line 91
    return-void
.end method

.method public complete(Lorg/jivesoftware/smackx/Form;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    iget-wide v1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->packetReplyTimeout:J

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->executeAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;Lorg/jivesoftware/smackx/Form;J)V

    .line 96
    return-void
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    iget-wide v1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->packetReplyTimeout:J

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->executeAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;J)V

    .line 101
    return-void
.end method

.method public execute(Lorg/jivesoftware/smackx/Form;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    iget-wide v1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->packetReplyTimeout:J

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->executeAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;Lorg/jivesoftware/smackx/Form;J)V

    .line 113
    return-void
.end method

.method public getOwnerJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketReplyTimeout()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->packetReplyTimeout:J

    return-wide v0
.end method

.method public next(Lorg/jivesoftware/smackx/Form;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    iget-wide v1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->packetReplyTimeout:J

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->executeAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;Lorg/jivesoftware/smackx/Form;J)V

    .line 118
    return-void
.end method

.method public prev()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    iget-wide v1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->packetReplyTimeout:J

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/commands/RemoteCommand;->executeAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;J)V

    .line 123
    return-void
.end method

.method public setPacketReplyTimeout(J)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-wide p1, p0, Lorg/jivesoftware/smackx/commands/RemoteCommand;->packetReplyTimeout:J

    .line 200
    return-void
.end method
