.class public Lorg/jivesoftware/smackx/MultipleRecipientManager;
.super Ljava/lang/Object;
.source "MultipleRecipientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;
    }
.end annotation


# static fields
.field private static services:Lorg/jivesoftware/smack/util/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    const/16 v1, 0x64

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    return-void
.end method

.method private static getMultipleRecipienServiceAddress(Lorg/jivesoftware/smack/Connection;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    .line 285
    sget-object v0, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    if-nez v0, :cond_2

    .line 287
    sget-object v3, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    monitor-enter v3

    .line 288
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    if-nez v0, :cond_1

    .line 293
    :try_start_1
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 296
    const-string v4, "http://jabber.org/protocol/address"

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    .line 315
    :cond_0
    :goto_0
    sget-object v1, Lorg/jivesoftware/smackx/MultipleRecipientManager;->services:Lorg/jivesoftware/smack/util/Cache;

    if-nez v0, :cond_6

    const-string v4, ""

    :goto_1
    invoke-virtual {v1, v2, v4}, Lorg/jivesoftware/smack/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    :cond_2
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0

    .line 301
    :cond_4
    :try_start_3
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getItems()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 305
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v5

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 307
    const-string v5, "http://jabber.org/protocol/address"

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    .line 309
    goto :goto_0

    :cond_6
    move-object v4, v0

    .line 315
    goto :goto_1

    .line 317
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 318
    :try_start_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static getMultipleRecipientInfo(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/MultipleRecipientInfo;
    .locals 2
    .parameter

    .prologue
    .line 199
    const-string v0, "addresses"

    const-string v1, "http://jabber.org/protocol/address"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;

    .line 201
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/MultipleRecipientInfo;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;-><init>(Lorg/jivesoftware/smackx/packet/MultipleAddresses;)V

    goto :goto_0
.end method

.method public static reply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-static {p1}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->getMultipleRecipientInfo(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/MultipleRecipientInfo;

    move-result-object v1

    .line 133
    if-nez v1, :cond_0

    .line 134
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Original message does not contain multiple recipient info"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->shouldNotReply()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Original message should not be replied"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->getReplyRoom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Reply should be sent through a room"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 146
    :cond_3
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->getReplyAddress()Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->getJid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 149
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 187
    :goto_0
    return-void

    .line 154
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->getTOAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->getJid()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_5
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/MultipleRecipientInfo;->getCCAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses$Address;->getJid()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 165
    :cond_6
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 166
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_7
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 171
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 176
    :cond_8
    invoke-static {p0}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->getMultipleRecipienServiceAddress(Lorg/jivesoftware/smack/Connection;)Ljava/lang/String;

    move-result-object v8

    .line 177
    if-eqz v8, :cond_9

    .line 179
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v8}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->sendThroughService(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_9
    invoke-static {p0, p2, v2, v3, v4}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->sendToIndividualRecipients(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static send(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 72
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v7}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->send(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public static send(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->getMultipleRecipienServiceAddress(Lorg/jivesoftware/smack/Connection;)Ljava/lang/String;

    move-result-object v9

    .line 101
    if-eqz v9, :cond_0

    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->sendThroughService(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_0
    if-nez p7, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    if-gtz p5, :cond_2

    :cond_1
    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_3

    .line 112
    :cond_2
    new-instance p0, Lorg/jivesoftware/smack/XMPPException;

    const-string p1, "Extended Stanza Addressing not supported by server"

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/MultipleRecipientManager;->sendToIndividualRecipients(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static sendThroughService(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    new-instance v0, Lorg/jivesoftware/smackx/packet/MultipleAddresses;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;-><init>()V

    .line 234
    if-eqz p2, :cond_0

    .line 235
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    const-string v1, "to"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_0
    if-eqz p3, :cond_1

    .line 241
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 242
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    const-string v1, "cc"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_1
    if-eqz p4, :cond_2

    .line 247
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 248
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    const-string v1, "bcc"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 252
    :cond_2
    if-eqz p7, :cond_4

    .line 253
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->setNoReply()V

    .line 266
    :cond_3
    :goto_3
    invoke-virtual {p1, p8}, Lorg/jivesoftware/smack/packet/Packet;->setTo(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 270
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 271
    return-void

    .line 256
    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_5

    .line 257
    const-string v1, "replyto"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 260
    :cond_5
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 261
    const-string v1, "replyroom"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smackx/packet/MultipleAddresses;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_3
.end method

.method private static sendToIndividualRecipients(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    if-eqz p2, :cond_0

    .line 207
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->setTo(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 213
    :cond_0
    if-eqz p3, :cond_1

    .line 214
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->setTo(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_1

    .line 220
    :cond_1
    if-eqz p4, :cond_2

    .line 221
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Packet;->setTo(Ljava/lang/String;)V

    .line 224
    new-instance v0, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/MultipleRecipientManager$PacketCopy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_2

    .line 227
    :cond_2
    return-void
.end method
