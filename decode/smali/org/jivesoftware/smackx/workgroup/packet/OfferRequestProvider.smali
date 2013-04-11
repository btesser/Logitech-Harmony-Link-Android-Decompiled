.class public Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider;
.super Ljava/lang/Object;
.source "OfferRequestProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 49
    const/4 v2, -0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 54
    if-eq v0, v10, :cond_0

    .line 58
    :cond_0
    const-string v0, ""

    const-string v1, "jid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v0, v3

    move-object v6, v5

    move v3, v2

    move-object v2, v1

    .line 62
    :cond_1
    :goto_0
    if-nez v0, :cond_9

    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 65
    if-ne v7, v10, :cond_8

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 68
    const-string v8, "timeout"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v11, v4

    move-object v4, v6

    move-object v6, v5

    move v5, v3

    move-object v3, v11

    :goto_1
    move-object v11, v3

    move v3, v5

    move-object v5, v6

    move-object v6, v4

    move-object v4, v11

    .line 94
    goto :goto_0

    .line 71
    :cond_2
    const-string v8, "metadata"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 72
    invoke-static {p1}, Lorg/jivesoftware/smackx/workgroup/util/MetaDataUtils;->parseMetaData(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v4

    move-object v11, v4

    move-object v4, v6

    move-object v6, v5

    move v5, v3

    move-object v3, v11

    goto :goto_1

    .line 74
    :cond_3
    const-string v8, "session"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 75
    const-string v5, ""

    const-string v7, "id"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v11, v4

    move-object v4, v6

    move-object v6, v5

    move v5, v3

    move-object v3, v11

    goto :goto_1

    .line 77
    :cond_4
    const-string v8, "user"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 78
    const-string v2, ""

    const-string v7, "id"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v4

    move-object v4, v6

    move-object v6, v5

    move v5, v3

    move-object v3, v11

    goto :goto_1

    .line 80
    :cond_5
    const-string v8, "user-request"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 81
    invoke-static {}, Lorg/jivesoftware/smackx/workgroup/agent/UserRequest;->getInstance()Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;

    move-result-object v6

    move-object v11, v4

    move-object v4, v6

    move-object v6, v5

    move v5, v3

    move-object v3, v11

    goto :goto_1

    .line 83
    :cond_6
    const-string v8, "invite"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 84
    const-string v6, "invite"

    const-string v7, "http://jabber.org/protocol/workgroup"

    invoke-static {v6, v7, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;

    .line 86
    new-instance v6, Lorg/jivesoftware/smackx/workgroup/agent/InvitationRequest;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->getInviter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->getRoom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/jivesoftware/smackx/workgroup/agent/InvitationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    move-object v4, v6

    move-object v6, v5

    move v5, v3

    move-object v3, v11

    .line 88
    goto :goto_1

    .line 89
    :cond_7
    const-string v8, "transfer"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 90
    const-string v6, "transfer"

    const-string v7, "http://jabber.org/protocol/workgroup"

    invoke-static {v6, v7, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;

    .line 92
    new-instance v6, Lorg/jivesoftware/smackx/workgroup/agent/TransferRequest;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->getInviter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->getRoom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/jivesoftware/smackx/workgroup/agent/TransferRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    move-object v4, v6

    move-object v6, v5

    move v5, v3

    move-object v3, v11

    goto/16 :goto_1

    .line 95
    :cond_8
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 96
    const-string v7, "offer"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 102
    :cond_9
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;)V

    .line 104
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 106
    return-object v0

    :cond_a
    move-object v11, v4

    move-object v4, v6

    move-object v6, v5

    move v5, v3

    move-object v3, v11

    goto/16 :goto_1
.end method
