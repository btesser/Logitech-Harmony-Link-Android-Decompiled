.class public Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;
    }
.end annotation


# static fields
.field private static cacheNonCaps:Z

.field private static entityNode:Ljava/lang/String;

.field private static identityName:Ljava/lang/String;

.field private static identityType:Ljava/lang/String;

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/ServiceDiscoveryManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

.field private connection:Lorg/jivesoftware/smack/Connection;

.field private currentCapsVersion:Ljava/lang/String;

.field private extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nodeInformationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/NodeInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private nonCapsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sendPresence:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "Smack"

    sput-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityName:Ljava/lang/String;

    .line 57
    const-string v0, "pc"

    sput-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityType:Ljava/lang/String;

    .line 58
    const-string v0, "http://www.igniterealtime.org/projects/smack/"

    sput-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->entityNode:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->cacheNonCaps:Z

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    .line 82
    new-instance v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->currentCapsVersion:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->sendPresence:Z

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nonCapsCache:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    .line 75
    iput-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    .line 97
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 100
    instance-of v0, p1, Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lorg/jivesoftware/smackx/EntityCapsManager;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/EntityCapsManager;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->setEntityCapsManager(Lorg/jivesoftware/smackx/EntityCapsManager;)V

    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    new-instance v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$CapsPresenceRenewer;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Lorg/jivesoftware/smackx/ServiceDiscoveryManager$1;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/EntityCapsManager;->addCapsVerListener(Lorg/jivesoftware/smackx/CapsVerListener;)V

    .line 105
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 107
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->init()V

    .line 108
    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Lorg/jivesoftware/smackx/EntityCapsManager;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getEntityCapsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->isSendPresence()Z

    move-result v0

    return v0
.end method

.method public static canPublishItems(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 675
    const-string v0, "http://jabber.org/protocol/disco#publish"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private cloneDiscoverInfo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 1
    .parameter

    .prologue
    .line 729
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->clone()Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEntityCapsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/EntityCapsManager;->getCapsVersion()Ljava/lang/String;

    move-result-object v0

    .line 762
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIdentityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityName:Ljava/lang/String;

    return-object v0
.end method

.method public static getIdentityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityType:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    .locals 1
    .parameter

    .prologue
    .line 117
    sget-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    return-object p0
.end method

.method private getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/NodeInformationProvider;
    .locals 1
    .parameter

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/NodeInformationProvider;

    move-object v0, p0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 231
    sget-object v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$2;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 260
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 261
    new-instance v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$3;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    .line 270
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 273
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 274
    new-instance v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$4;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    .line 307
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 311
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 312
    new-instance v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$5;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager$5;-><init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V

    .line 362
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 363
    return-void
.end method

.method public static isNonCapsCachingEnabled()Z
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->cacheNonCaps:Z

    return v0
.end method

.method private isSendPresence()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->sendPresence:Z

    return v0
.end method

.method private renewEntityCapsVersion()V
    .locals 6

    .prologue
    .line 748
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    instance-of v0, v0, Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getOwnDiscoverInfo()Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityType:Ljava/lang/String;

    sget-object v3, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityName:Ljava/lang/String;

    iget-object v4, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    iget-object v5, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smackx/EntityCapsManager;->calculateEntityCapsVersion(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 755
    :cond_0
    return-void
.end method

.method public static setIdentityName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    sput-object p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static setIdentityType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    sput-object p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->identityType:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public static setNonCapsCaching(Z)V
    .locals 1
    .parameter

    .prologue
    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->cacheNonCaps:Z

    .line 174
    return-void
.end method

.method private setSendPresence()V
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->sendPresence:Z

    .line 772
    return-void
.end method


# virtual methods
.method public addDiscoverInfoTo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 191
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    const-string v1, "client"

    invoke-static {}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getIdentityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getIdentityType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->setType(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addIdentity(Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V

    .line 196
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    monitor-enter v1

    .line 198
    :try_start_0
    const-string v0, "http://jabber.org/protocol/caps"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getFeatures()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 203
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 206
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    return-void
.end method

.method public addFeature(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 440
    monitor-exit v0

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canPublishItems(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 662
    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->canPublishItems(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Z

    move-result v0

    return v0
.end method

.method public discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfoByCaps(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    .line 562
    :goto_0
    return-object v0

    .line 540
    :cond_0
    const/4 v0, 0x0

    .line 542
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    if-eqz v1, :cond_1

    .line 544
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/EntityCapsManager;->getNodeVersionByUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_1
    sget-boolean v1, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->cacheNonCaps:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nonCapsCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nonCapsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-object v0, p0

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 555
    if-eqz v0, :cond_4

    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    if-eqz v2, :cond_4

    .line 556
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/EntityCapsManager;->addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    :cond_3
    :goto_1
    move-object v0, v1

    .line 562
    goto :goto_0

    .line 559
    :cond_4
    sget-boolean v2, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->cacheNonCaps:Z

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 560
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nonCapsCache:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public discoverInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 579
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 580
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 587
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 590
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 592
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 593
    if-nez p0, :cond_0

    .line 594
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from the server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_1

    .line 597
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 600
    :cond_1
    check-cast p0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    return-object p0
.end method

.method public discoverInfoByCaps(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/EntityCapsManager;->getDiscoverInfoByUser(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    .line 515
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->cloneDiscoverInfo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 516
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setFrom(Ljava/lang/String;)V

    .line 520
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public discoverItems(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;

    move-result-object v0

    return-object v0
.end method

.method public discoverItems(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverItems;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 626
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;-><init>()V

    .line 627
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 628
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 635
    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 638
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 640
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 641
    if-nez p0, :cond_0

    .line 642
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from the server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_1

    .line 645
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 647
    :cond_1
    check-cast p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;

    return-object p0
.end method

.method public getEntityCapsManager()Lorg/jivesoftware/smackx/EntityCapsManager;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    return-object v0
.end method

.method public getFeatures()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    monitor-enter v0

    .line 421
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOwnDiscoverInfo()Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 216
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/EntityCapsManager;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getEntityCapsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addDiscoverInfoTo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 222
    return-object v0
.end method

.method public includesFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public publishItems(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 706
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p3, v0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 707
    invoke-virtual {p3, p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setTo(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p3, p2}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {p3}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 717
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smack/packet/IQ;

    .line 719
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 720
    if-nez p0, :cond_0

    .line 721
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "No response from the server."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_1

    .line 724
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 726
    :cond_1
    return-void
.end method

.method public publishItems(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->publishItems(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverItems;)V

    .line 691
    return-void
.end method

.method public removeExtendedInfo()V
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 499
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 500
    return-void
.end method

.method public removeFeature(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->features:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 454
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 455
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNodeInformationProvider(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    return-void
.end method

.method public setEntityCapsManager(Lorg/jivesoftware/smackx/EntityCapsManager;)V
    .locals 3
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    .line 738
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getCapsNode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getCapsNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/EntityCapsManager;->addUserCapsNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->capsManager:Lorg/jivesoftware/smackx/EntityCapsManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/EntityCapsManager;->addPacketListener(Lorg/jivesoftware/smack/Connection;)V

    .line 742
    return-void
.end method

.method public setExtendedInfo(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 487
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->renewEntityCapsVersion()V

    .line 488
    return-void
.end method

.method public setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/NodeInformationProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    return-void
.end method
