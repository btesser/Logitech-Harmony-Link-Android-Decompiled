.class public Lorg/jivesoftware/smack/PrivacyListManager;
.super Ljava/lang/Object;
.source "PrivacyListManager.java"


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smack/PrivacyListManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/PrivacyListListener;",
            ">;"
        }
    .end annotation
.end field

.field packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    .line 57
    new-instance v0, Lorg/jivesoftware/smack/PrivacyListManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/PrivacyListManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 6
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    .line 50
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/IQTypeFilter;

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/IQTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v4, "query"

    const-string v5, "jabber:iq:privacy"

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 71
    iput-object p1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 72
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->init()V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/PrivacyListManager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PrivacyListManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/PrivacyListManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/PrivacyListManager;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/PrivacyListManager;
    .locals 1
    .parameter

    .prologue
    .line 164
    sget-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/PrivacyListManager;

    return-object p0
.end method

.method private getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 303
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPrivacyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 254
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v0

    return-object v0
.end method

.method private getRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Privacy;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 178
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Privacy;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 179
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Privacy;->setFrom(Ljava/lang/String;)V

    .line 182
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 189
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/Privacy;

    .line 193
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 196
    if-nez p0, :cond_0

    .line 197
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Privacy;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 202
    :cond_1
    return-object p0
.end method

.method private getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lorg/jivesoftware/smack/PrivacyListManager;->instances:Ljava/util/Map;

    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smack/PrivacyListManager$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/PrivacyListManager$2;-><init>(Lorg/jivesoftware/smack/PrivacyListManager;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smack/PrivacyListManager$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/PrivacyListManager$3;-><init>(Lorg/jivesoftware/smack/PrivacyListManager;)V

    iget-object v2, p0, Lorg/jivesoftware/smack/PrivacyListManager;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 155
    return-void
.end method

.method private setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Privacy;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 218
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Privacy;->setFrom(Ljava/lang/String;)V

    .line 221
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Privacy;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 228
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 231
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 234
    if-nez v1, :cond_0

    .line 235
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 239
    :cond_1
    return-object v1
.end method


# virtual methods
.method public addListener(Lorg/jivesoftware/smack/PrivacyListListener;)V
    .locals 2
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createPrivacyList(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/PrivacyListManager;->updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V

    .line 416
    return-void
.end method

.method public declineActiveList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 369
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineActiveList(Z)V

    .line 372
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 373
    return-void
.end method

.method public declineDefaultList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 400
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineDefaultList(Z)V

    .line 403
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 404
    return-void
.end method

.method public deletePrivacyList(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 450
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 451
    return-void
.end method

.method public getActiveList()Lorg/jivesoftware/smack/PrivacyList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 264
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 270
    :goto_0
    new-instance v2, Lorg/jivesoftware/smack/PrivacyList;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v4, v0, v1, v3}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultList()Lorg/jivesoftware/smack/PrivacyList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 280
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 286
    :goto_0
    new-instance v2, Lorg/jivesoftware/smack/PrivacyList;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v0, v4, v1, v3}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivacyList(Ljava/lang/String;)Lorg/jivesoftware/smack/PrivacyList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 317
    new-instance v0, Lorg/jivesoftware/smack/PrivacyList;

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v2, p1, v1}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public getPrivacyLists()[Lorg/jivesoftware/smack/PrivacyList;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smack/packet/Privacy;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Privacy;->getPrivacyListNames()Ljava/util/Set;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jivesoftware/smack/PrivacyList;

    .line 332
    const/4 v3, 0x0

    .line 333
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 334
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 335
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 336
    new-instance v7, Lorg/jivesoftware/smack/PrivacyList;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v5, v6, v0, v8}, Lorg/jivesoftware/smack/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    aput-object v7, v2, v3

    .line 338
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 340
    :cond_0
    return-object v2
.end method

.method public setActiveListName(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 354
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->setActiveName(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 358
    return-void
.end method

.method public setDefaultListName(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 385
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Privacy;->setDefaultName(Ljava/lang/String;)V

    .line 388
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 389
    return-void
.end method

.method public updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 431
    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 434
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setRequest(Lorg/jivesoftware/smack/packet/Privacy;)Lorg/jivesoftware/smack/packet/Packet;

    .line 435
    return-void
.end method
