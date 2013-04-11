.class public Lorg/jivesoftware/smackx/workgroup/user/Workgroup;
.super Ljava/lang/Object;
.source "Workgroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;
    }
.end annotation


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private inQueue:Z

.field private invitationListeners:Ljava/util/List;

.field private queueListeners:Ljava/util/List;

.field private queuePosition:I

.field private queueRemainingTime:I

.field private siteInviteListeners:Ljava/util/List;

.field private workgroupJID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queuePosition:I

    .line 66
    iput v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueRemainingTime:I

    .line 80
    invoke-virtual {p2}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must login to server before creating workgroup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->siteInviteListeners:Ljava/util/List;

    .line 92
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$1;-><init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->addQueueListener(Lorg/jivesoftware/smackx/workgroup/user/QueueListener;)V

    .line 115
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$2;-><init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)V

    invoke-static {p2, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->addInvitationListener(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/muc/InvitationListener;)V

    .line 126
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 128
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$3;-><init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)V

    invoke-virtual {p2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 133
    return-void
.end method

.method static synthetic access$002(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    return p1
.end method

.method static synthetic access$102(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queuePosition:I

    return p1
.end method

.method static synthetic access$202(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueRemainingTime:I

    return p1
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private fireInvitationEvent(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;)V
    .locals 3
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;

    .line 494
    invoke-interface {p0, p1}, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;->invitationReceived(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;)V

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    return-void
.end method

.method private fireQueueDepartedEvent()V
    .locals 3

    .prologue
    .line 509
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;

    .line 512
    invoke-interface {p0}, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;->departedQueue()V

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    return-void
.end method

.method private fireQueueJoinedEvent()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;

    .line 503
    invoke-interface {p0}, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;->joinedQueue()V

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    return-void
.end method

.method private fireQueuePositionEvent(I)V
    .locals 3
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v0

    .line 519
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;

    .line 521
    invoke-interface {p0, p1}, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;->queuePositionUpdated(I)V

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    return-void
.end method

.method private fireQueueTimeEvent(I)V
    .locals 3
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;

    .line 530
    invoke-interface {p0, p1}, Lorg/jivesoftware/smackx/workgroup/user/QueueListener;->queueWaitTimeUpdated(I)V

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    return-void
.end method

.method private getChatSettings(Ljava/lang/String;I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;-><init>()V

    .line 666
    if-eqz p1, :cond_0

    .line 667
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->setKey(Ljava/lang/String;)V

    .line 669
    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 670
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->setType(I)V

    .line 672
    :cond_1
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 673
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->setTo(Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 676
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 679
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    .line 682
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 683
    if-nez p0, :cond_2

    .line 684
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 687
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 689
    :cond_3
    return-object p0
.end method

.method private handlePacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 538
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_0

    .line 539
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    .line 541
    const-string v0, "depart-queue"

    const-string v1, "http://jabber.org/protocol/workgroup"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 542
    const-string v0, "queue-status"

    const-string v2, "http://jabber.org/protocol/workgroup"

    invoke-virtual {p1, v0, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 544
    if-eqz v1, :cond_1

    .line 545
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueueDepartedEvent()V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    if-eqz v0, :cond_3

    .line 548
    check-cast v0, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;

    .line 549
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->getPosition()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 550
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueuePositionEvent(I)V

    .line 552
    :cond_2
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->getRemaingTime()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 553
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->getRemaingTime()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueueTimeEvent(I)V

    goto :goto_0

    .line 559
    :cond_3
    const-string v0, "x"

    const-string v1, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 560
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v0

    .line 561
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "session"

    const-string v1, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_6

    .line 568
    check-cast v0, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/SessionID;->getSessionID()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 571
    :goto_2
    const-string v0, "metadata"

    const-string v1, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_5

    .line 574
    check-cast v0, Lorg/jivesoftware/smackx/workgroup/MetaData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/MetaData;->getMetaData()Ljava/util/Map;

    move-result-object v0

    move-object v7, v0

    .line 577
    :goto_3
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 581
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireInvitationEvent(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitation;)V

    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 560
    goto :goto_1

    :cond_5
    move-object v7, v3

    goto :goto_3

    :cond_6
    move-object v4, v3

    goto :goto_2
.end method


# virtual methods
.method public addInvitationListener(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;)V
    .locals 2
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    monitor-enter v0

    .line 473
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_0
    monitor-exit v0

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addQueueListener(Lorg/jivesoftware/smackx/workgroup/user/QueueListener;)V
    .locals 2
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_0
    monitor-exit v0

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public departQueue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 418
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 422
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;-><init>(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 427
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 428
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 429
    if-nez v0, :cond_1

    .line 430
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from the server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 433
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 437
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueueDepartedEvent()V

    goto :goto_0
.end method

.method public getChatSetting(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 632
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->getChatSettings(Ljava/lang/String;I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;->getFirstEntry()Lorg/jivesoftware/smackx/workgroup/settings/ChatSetting;

    move-result-object v0

    return-object v0
.end method

.method public getChatSettings()Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 654
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->getChatSettings(Ljava/lang/String;I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    move-result-object v0

    return-object v0
.end method

.method public getChatSettings(I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->getChatSettings(Ljava/lang/String;I)Lorg/jivesoftware/smackx/workgroup/settings/ChatSettings;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineSettings()Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 718
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;-><init>()V

    .line 719
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 720
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->setTo(Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 723
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 726
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;

    .line 729
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 730
    if-nez p0, :cond_0

    .line 731
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 734
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/OfflineSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 736
    :cond_1
    return-object p0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queuePosition:I

    return v0
.end method

.method public getQueueRemainingTime()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueRemainingTime:I

    return v0
.end method

.method public getSoundSettings()Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 746
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;-><init>()V

    .line 747
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 748
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->setTo(Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 751
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 754
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;

    .line 757
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 758
    if-nez p0, :cond_0

    .line 759
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 762
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/SoundSettings;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 764
    :cond_1
    return-object p0
.end method

.method public getWorkgroupForm()Lorg/jivesoftware/smackx/Form;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 835
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;-><init>()V

    .line 836
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 837
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->setTo(Ljava/lang/String;)V

    .line 839
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 840
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 842
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;

    .line 845
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 846
    if-nez p0, :cond_0

    .line 847
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server on status set."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 850
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/ext/forms/WorkgroupForm;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 852
    :cond_1
    invoke-static {p0}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v0

    return-object v0
.end method

.method public getWorkgroupJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkgroupProperties()Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 774
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;-><init>()V

    .line 775
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 776
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setTo(Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 779
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 782
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;

    .line 785
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 786
    if-nez p0, :cond_0

    .line 787
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 790
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 792
    :cond_1
    return-object p0
.end method

.method public getWorkgroupProperties(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 803
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;-><init>()V

    .line 804
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setJid(Ljava/lang/String;)V

    .line 805
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 806
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->setTo(Ljava/lang/String;)V

    .line 808
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 809
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 812
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;

    .line 815
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 816
    if-nez p0, :cond_0

    .line 817
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 820
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/settings/WorkgroupProperties;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 822
    :cond_1
    return-object p0
.end method

.method public isAvailable()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 161
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 162
    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 163
    new-instance v2, Lorg/jivesoftware/smack/filter/FromContainsFilter;

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/FromContainsFilter;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v4, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/jivesoftware/smack/filter/PacketFilter;

    aput-object v2, v5, v6

    aput-object v1, v5, v7

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 169
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/Presence;

    .line 172
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 173
    if-nez p0, :cond_0

    move v0, v6

    .line 180
    :goto_0
    return v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 177
    goto :goto_0

    .line 180
    :cond_1
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    if-ne v0, v1, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method public isEmailAvailable()Z
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 702
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 704
    const-string v1, "jive:email:provider"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 707
    :goto_0
    return v0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInQueue()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    return v0
.end method

.method public joinQueue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->joinQueue(Lorg/jivesoftware/smackx/Form;)V

    .line 248
    return-void
.end method

.method public joinQueue(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 383
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already in queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/Form;

    const-string v0, "submit"

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/Form;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 390
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 397
    new-instance v4, Lorg/jivesoftware/smackx/FormField;

    invoke-direct {v4, v0}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 398
    const-string v5, "text-single"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/Form;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 400
    invoke-virtual {v1, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p0, v1, p2}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->joinQueue(Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public joinQueue(Lorg/jivesoftware/smackx/Form;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->joinQueue(Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public joinQueue(Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 322
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->inQueue:Z

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already in queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;

    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->workgroupJID:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;-><init>(Lorg/jivesoftware/smackx/workgroup/user/Workgroup;Ljava/lang/String;Lorg/jivesoftware/smackx/Form;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup$JoinQueuePacket;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 331
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 333
    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 336
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 337
    if-nez v0, :cond_1

    .line 338
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from the server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 341
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 345
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->fireQueueJoinedEvent()V

    .line 346
    return-void
.end method

.method public removeQueueListener(Lorg/jivesoftware/smackx/workgroup/WorkgroupInvitationListener;)V
    .locals 2
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->invitationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 487
    monitor-exit v0

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeQueueListener(Lorg/jivesoftware/smackx/workgroup/user/QueueListener;)V
    .locals 2
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/user/Workgroup;->queueListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 462
    monitor-exit v0

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
