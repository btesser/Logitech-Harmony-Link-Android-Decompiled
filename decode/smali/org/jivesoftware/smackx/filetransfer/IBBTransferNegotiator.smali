.class public Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;
.super Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
.source "IBBTransferNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$1;,
        Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBMessageSidFilter;,
        Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOpenSidFilter;,
        Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;,
        Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;
    }
.end annotation


# static fields
.field public static final DEFAULT_BLOCK_SIZE:I = 0x1000

.field protected static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/ibb"


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private initInBandTransfer(Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;)V
    .locals 5
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getTo()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-static {v1, v2, v3, v4}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 103
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public createIncomingStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->initiateIncomingStream(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/packet/StreamInitiation;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public createOutgoingStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1000

    .line 107
    new-instance v0, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;

    invoke-direct {v0, p1, v4}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;-><init>(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->setTo(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 112
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 116
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 117
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 119
    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from peer on IBB open"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    .line 124
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    const-string v2, "Target returned an error"

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 130
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Target returned unknown response"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;

    invoke-direct {v0, p0, p3, p1, v4}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOutputStream;-><init>(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getInitiationPacketFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    invoke-direct {v3, p1}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOpenSidFilter;

    invoke-direct {v3, p2}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBOpenSidFilter;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method public getNamespaces()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://jabber.org/protocol/ibb"

    aput-object v2, v0, v1

    return-object v0
.end method

.method negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Packet;)Ljava/io/InputStream;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 69
    check-cast p1, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;

    .line 71
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 75
    :cond_0
    new-instance v3, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBMessageSidFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBMessageSidFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v1, 0x0

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v5, Lorg/jivesoftware/smackx/packet/IBBExtensions$Close;

    invoke-direct {v2, v5}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {v4, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 81
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$IBBInputStream;-><init>(Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;Ljava/lang/String;Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator$1;)V

    .line 84
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;->initInBandTransfer(Lorg/jivesoftware/smackx/packet/IBBExtensions$Open;)V

    .line 86
    return-object v0
.end method
