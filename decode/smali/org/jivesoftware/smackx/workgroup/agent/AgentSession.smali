.class public Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;
.super Ljava/lang/Object;
.source "AgentSession.java"


# instance fields
.field private agent:Lorg/jivesoftware/smackx/workgroup/agent/Agent;

.field private agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

.field private connection:Lorg/jivesoftware/smack/Connection;

.field private final invitationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;",
            ">;"
        }
    .end annotation
.end field

.field private maxChats:I

.field private final metaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final offerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;",
            ">;"
        }
    .end annotation
.end field

.field private online:Z

.field private packetListener:Lorg/jivesoftware/smack/PacketListener;

.field private presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field private final queueUsersListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;",
            ">;"
        }
    .end annotation
.end field

.field private queues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;",
            ">;"
        }
    .end annotation
.end field

.field private transcriptManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

.field private transcriptSearchManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

.field private workgroupJID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    .line 88
    invoke-virtual {p2}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must login to server before creating workgroup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 94
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

    invoke-direct {v0, p2}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

    .line 95
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

    invoke-direct {v0, p2}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptSearchManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    .line 108
    new-instance v0, Lorg/jivesoftware/smack/filter/OrFilter;

    invoke-direct {v0}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>()V

    .line 109
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 110
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 111
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 112
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 114
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$1;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 124
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {p2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 126
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/Agent;

    invoke-direct {v0, p2, p1}, Lorg/jivesoftware/smackx/workgroup/agent/Agent;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agent:Lorg/jivesoftware/smackx/workgroup/agent/Agent;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method private fireInvitationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 646
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 649
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;

    .line 651
    invoke-interface {p0, v0}, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;->invitationReceived(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;)V

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    return-void
.end method

.method private fireOfferRequestEvent(Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;)V
    .locals 11
    .parameter

    .prologue
    .line 621
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/Offer;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getUserJID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getTimeout()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getSessionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getMetaData()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getContent()Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;

    move-result-object v9

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lorg/jivesoftware/smackx/workgroup/agent/Offer;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;)V

    .line 626
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    monitor-enter v1

    .line 627
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;

    .line 628
    invoke-interface {p0, v0}, Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;->offerReceived(Lorg/jivesoftware/smackx/workgroup/agent/Offer;)V

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    return-void
.end method

.method private fireOfferRevokeEvent(Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;)V
    .locals 7
    .parameter

    .prologue
    .line 634
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->getUserJID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;->getReason()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 637
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;

    .line 639
    invoke-interface {p0, v0}, Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;->offerRevoked(Lorg/jivesoftware/smackx/workgroup/agent/RevokedOffer;)V

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    return-void
.end method

.method private fireQueueUsersEvent(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;ILjava/util/Date;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 658
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    monitor-enter v0

    .line 659
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;

    .line 660
    if-eqz p2, :cond_1

    .line 661
    invoke-interface {p0, p1, p2}, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;->statusUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V

    .line 663
    :cond_1
    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    .line 664
    invoke-interface {p0, p1, p3}, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;->averageWaitTimeUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;I)V

    .line 666
    :cond_2
    if-eqz p4, :cond_3

    .line 667
    invoke-interface {p0, p1, p4}, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;->oldestEntryUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Ljava/util/Date;)V

    .line 669
    :cond_3
    if-eqz p5, :cond_0

    .line 670
    invoke-interface {p0, p1, p5}, Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;->usersUpdated(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Ljava/util/Set;)V

    goto :goto_0

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    return-void
.end method

.method private handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 679
    instance-of v1, p1, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;

    if-eqz v1, :cond_1

    .line 681
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$2;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;)V

    .line 686
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 688
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 689
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 691
    check-cast p1, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;

    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireOfferRequestEvent(Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;)V

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v1, :cond_6

    .line 694
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    move-object v1, v0

    .line 700
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 701
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;

    .line 703
    if-nez v2, :cond_2

    .line 704
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;-><init>(Ljava/lang/String;)V

    .line 705
    iget-object v4, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_2
    sget-object v3, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->ELEMENT_NAME:Ljava/lang/String;

    sget-object v4, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;

    move-object v5, v0

    .line 710
    if-eqz v5, :cond_4

    .line 711
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getStatus()Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    move-result-object v1

    if-nez v1, :cond_3

    .line 712
    sget-object v1, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setStatus(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V

    .line 717
    :goto_1
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getAverageWaitTime()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setAverageWaitTime(I)V

    .line 718
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getOldestEntry()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setOldestEntry(Ljava/util/Date;)V

    .line 720
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getStatus()Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    move-result-object v3

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getAverageWaitTime()I

    move-result v4

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getOldestEntry()Ljava/util/Date;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireQueueUsersEvent(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;ILjava/util/Date;Ljava/util/Set;)V

    goto :goto_0

    .line 715
    :cond_3
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/packet/QueueOverview;->getStatus()Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setStatus(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V

    goto :goto_1

    .line 728
    :cond_4
    const-string v3, "notify-queue-details"

    const-string v4, "http://jabber.org/protocol/workgroup"

    invoke-virtual {p1, v3, v4}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;

    .line 729
    if-eqz v3, :cond_5

    .line 730
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->getUsers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setUsers(Ljava/util/Set;)V

    .line 732
    const/4 v7, -0x1

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->getUsers()Ljava/util/Set;

    move-result-object v9

    move-object v4, p0

    move-object v5, v2

    move-object v8, v6

    invoke-direct/range {v4 .. v9}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireQueueUsersEvent(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;ILjava/util/Date;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 737
    :cond_5
    const-string v3, "notify-agents"

    const-string v4, "http://jabber.org/protocol/workgroup"

    invoke-virtual {v1, v3, v4}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    .line 738
    if-eqz p0, :cond_0

    .line 739
    const-string v1, "current-chats"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 740
    const-string v3, "max-chats"

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 741
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setCurrentChats(I)V

    .line 742
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->setMaxChats(I)V

    goto/16 :goto_0

    .line 748
    :cond_6
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v1, :cond_9

    .line 749
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    .line 752
    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 754
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    .line 755
    :goto_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    const-string v1, "session"

    const-string v2, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;

    .line 761
    if-eqz v1, :cond_a

    .line 762
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;->getSessionID()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 765
    :goto_3
    const-string v1, "metadata"

    const-string v2, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/workgroup/MetaData;

    .line 767
    if-eqz v1, :cond_7

    .line 768
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/MetaData;->getMetaData()Ljava/util/Map;

    move-result-object v1

    move-object v6, v1

    .line 771
    :cond_7
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireInvitationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v6

    .line 754
    goto :goto_2

    .line 775
    :cond_9
    instance-of v1, p1, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;

    if-eqz v1, :cond_0

    .line 777
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$3;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;)V

    .line 782
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 783
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 784
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 786
    check-cast p1, Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;

    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->fireOfferRevokeEvent(Lorg/jivesoftware/smackx/workgroup/packet/OfferRevokeProvider$OfferRevokePacket;)V

    goto/16 :goto_0

    :cond_a
    move-object v3, v6

    goto :goto_3
.end method


# virtual methods
.method public addInvitationListener(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;)V
    .locals 2
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    monitor-enter v0

    .line 603
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_0
    monitor-exit v0

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOfferListener(Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;)V
    .locals 2
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 580
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_0
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addQueueUsersListener(Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;)V
    .locals 2
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_0
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 135
    return-void
.end method

.method public dequeueUser(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;-><init>(Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 449
    return-void
.end method

.method public getAgent()Lorg/jivesoftware/smackx/workgroup/agent/Agent;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agent:Lorg/jivesoftware/smackx/workgroup/agent/Agent;

    return-object v0
.end method

.method public getAgentHistory(Ljava/lang/String;ILjava/util/Date;)Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
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
    .line 863
    if-eqz p3, :cond_0

    .line 864
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;

    invoke-direct {v0, p1, p2, p3}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;-><init>(Ljava/lang/String;ILjava/util/Date;)V

    .line 870
    :goto_0
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 871
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->setTo(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 874
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 876
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;

    .line 879
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 880
    if-nez p0, :cond_1

    .line 881
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 883
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 884
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 886
    :cond_2
    return-object p0
.end method

.method public getAgentRoster()Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    iget-boolean v1, v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->rosterInitialized:Z

    if-nez v1, :cond_1

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_1

    .line 155
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_1
    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->agentRoster:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    return-object v0

    .line 157
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getChatMetadata(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 984
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;-><init>()V

    .line 985
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 986
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->setTo(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->setSessionID(Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 990
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 993
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;

    .line 996
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 997
    if-nez p0, :cond_0

    .line 998
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1001
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 1003
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/history/ChatMetadata;->getMetadata()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSettings(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1121
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;-><init>()V

    .line 1122
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1123
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->setTo(Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 1126
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1128
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;

    .line 1131
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1132
    if-nez p0, :cond_0

    .line 1133
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1136
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/GenericSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 1138
    :cond_1
    return-object p0
.end method

.method public getMacros(Z)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 925
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;-><init>()V

    .line 926
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 927
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setTo(Ljava/lang/String;)V

    .line 928
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setPersonal(Z)V

    .line 930
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 931
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 934
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;

    .line 937
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 938
    if-nez p0, :cond_1

    .line 939
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 941
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 942
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 944
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getRootGroup()Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMaxChats()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    return v0
.end method

.method public getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNote(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 830
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;-><init>()V

    .line 831
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 832
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setTo(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setSessionID(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 836
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 838
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;

    .line 841
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 842
    if-nez p0, :cond_0

    .line 843
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 846
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 848
    :cond_1
    return-object p0
.end method

.method public getOccupantsInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;-><init>(Ljava/lang/String;)V

    .line 511
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 512
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->setTo(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 515
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 517
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;

    .line 520
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 521
    if-nez p0, :cond_0

    .line 522
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 527
    :cond_1
    return-object p0
.end method

.method public getPresenceMode()Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-object v0
.end method

.method public getQueue(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
    .locals 1
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;

    return-object p0
.end method

.method public getQueues()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSearchSettings()Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 896
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;-><init>()V

    .line 897
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 898
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->setTo(Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 901
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 904
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;

    .line 907
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 908
    if-nez p0, :cond_0

    .line 909
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 912
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/SearchSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 914
    :cond_1
    return-object p0
.end method

.method public getTranscript(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/Transcript;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;->getTranscript(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/Transcript;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptSearchForm()Lorg/jivesoftware/smackx/Form;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptSearchManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;->getSearchForm(Ljava/lang/String;)Lorg/jivesoftware/smackx/Form;

    move-result-object v0

    return-object v0
.end method

.method public getTranscripts(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptManager;->getTranscripts(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/Transcripts;

    move-result-object v0

    return-object v0
.end method

.method public getWorkgroupJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    return-object v0
.end method

.method public hasMonitorPrivileges(Lorg/jivesoftware/smack/Connection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1142
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;-><init>()V

    .line 1143
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1144
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setTo(Ljava/lang/String;)V

    .line 1146
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 1147
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1149
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;

    .line 1152
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1153
    if-nez p0, :cond_0

    .line 1154
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1157
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 1159
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->isMonitor()Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    return v0
.end method

.method public makeRoomOwner(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1164
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;-><init>()V

    .line 1165
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1166
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setTo(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->setSessionID(Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/MonitorPacket;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 1171
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1173
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 1176
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1177
    if-nez v0, :cond_0

    .line 1178
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1181
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 1183
    :cond_1
    return-void
.end method

.method public removeInvitationListener(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;)V
    .locals 2
    .parameter

    .prologue
    .line 615
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->invitationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 617
    monitor-exit v0

    .line 618
    return-void

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMetaData(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iget v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    invoke-virtual {p0, v0, v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;I)V

    .line 226
    :cond_0
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeOfferListener(Lorg/jivesoftware/smackx/workgroup/agent/OfferListener;)V
    .locals 2
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    monitor-enter v0

    .line 592
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->offerListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 593
    monitor-exit v0

    .line 594
    return-void

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeQueueUsersListener(Lorg/jivesoftware/smackx/workgroup/agent/QueueUsersListener;)V
    .locals 2
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    monitor-enter v0

    .line 568
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->queueUsersListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 569
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveMacros(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 954
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;-><init>()V

    .line 955
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 956
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setTo(Ljava/lang/String;)V

    .line 957
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setPersonal(Z)V

    .line 958
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setPersonalMacroGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V

    .line 960
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 961
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 964
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 967
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 968
    if-nez p0, :cond_0

    .line 969
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 972
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 974
    :cond_1
    return-void
.end method

.method public searchTranscripts(Lorg/jivesoftware/smackx/Form;)Lorg/jivesoftware/smackx/ReportedData;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->transcriptSearchManager:Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smackx/workgroup/agent/TranscriptSearchManager;->submitSearch(Ljava/lang/String;Lorg/jivesoftware/smackx/Form;)Lorg/jivesoftware/smackx/ReportedData;

    move-result-object v0

    return-object v0
.end method

.method public sendRoomInvitation(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    .line 1034
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$4;

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$4;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Lorg/jivesoftware/smackx/workgroup/packet/RoomInvitation;)V

    .line 1041
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1042
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 1046
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1048
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 1051
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1052
    if-nez p0, :cond_0

    .line 1053
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1056
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 1058
    :cond_1
    return-void
.end method

.method public sendRoomTransfer(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    .line 1086
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;-><init>(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$5;

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession$5;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;)V

    .line 1093
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1094
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 1098
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1100
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 1103
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 1104
    if-nez p0, :cond_0

    .line 1105
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1108
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 1110
    :cond_1
    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iget v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    invoke-virtual {p0, v0, v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;I)V

    .line 209
    :cond_1
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 798
    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-static {p2, v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;-><init>()V

    .line 802
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 803
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setTo(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setSessionID(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setNotes(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 808
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 810
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 813
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 814
    if-nez p0, :cond_0

    .line 815
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 818
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 820
    :cond_1
    return-void
.end method

.method public setOnline(Z)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 250
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    if-ne v0, p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 257
    :cond_0
    if-eqz p1, :cond_3

    .line 258
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 259
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 260
    new-instance v1, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    const-string v2, "agent-status"

    const-string v3, "http://jabber.org/protocol/workgroup"

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 263
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v4, 0x0

    new-instance v5, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v6, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    iget-object v6, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 265
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 267
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 268
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 269
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 274
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 278
    :cond_2
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    goto :goto_0

    .line 283
    :cond_3
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    .line 285
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 286
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 287
    new-instance v1, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    const-string v2, "agent-status"

    const-string v3, "http://jabber.org/protocol/workgroup"

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 289
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0
.end method

.method public setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;ILjava/lang/String;)V

    .line 318
    return-void
.end method

.method public setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 344
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set status when the agent is not online."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    if-nez p1, :cond_4

    .line 349
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 351
    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 352
    iput p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->maxChats:I

    .line 354
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 355
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 356
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 358
    if-eqz p3, :cond_1

    .line 359
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 362
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    const-string v2, "agent-status"

    const-string v3, "http://jabber.org/protocol/workgroup"

    invoke-direct {v0, v2, v3}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v2, "max-chats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 366
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/MetaData;

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/workgroup/MetaData;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 368
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v4, 0x0

    new-instance v5, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v6, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    iget-object v6, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 370
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 372
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/Presence;

    .line 373
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 374
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 375
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 379
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 381
    :cond_3
    return-void

    :cond_4
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public setStatus(Lorg/jivesoftware/smack/packet/Presence$Mode;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 400
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->online:Z

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set status when the agent is not online."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    if-nez p1, :cond_4

    .line 405
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 407
    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->presenceMode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 409
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 410
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 411
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 413
    if-eqz p2, :cond_1

    .line 414
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 416
    :cond_1
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/MetaData;

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->metaData:Ljava/util/Map;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/workgroup/MetaData;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 418
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v4, 0x0

    new-instance v5, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v6, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    iget-object v6, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->workgroupJID:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 421
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 423
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/Presence;

    .line 424
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 425
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 426
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 430
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 432
    :cond_3
    return-void

    :cond_4
    move-object v0, p1

    goto :goto_0
.end method
