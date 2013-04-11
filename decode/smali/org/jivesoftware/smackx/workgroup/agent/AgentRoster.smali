.class public Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;
.super Ljava/lang/Object;
.source "AgentRoster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$1;,
        Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;,
        Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;
    }
.end annotation


# static fields
.field private static final EVENT_AGENT_ADDED:I = 0x0

.field private static final EVENT_AGENT_REMOVED:I = 0x1

.field private static final EVENT_PRESENCE_CHANGED:I = 0x2


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;",
            ">;"
        }
    .end annotation
.end field

.field private presenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;>;"
        }
    .end annotation
.end field

.field rosterInitialized:Z

.field private workgroupJID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->rosterInitialized:Z

    .line 68
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->connection:Lorg/jivesoftware/smack/Connection;

    .line 69
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->workgroupJID:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;

    .line 74
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 75
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$AgentStatusListener;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$1;)V

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 77
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;

    invoke-direct {v0, p0, v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$1;)V

    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 81
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;-><init>()V

    .line 82
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->setTo(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 84
    return-void
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->workgroupJID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V

    return-void
.end method

.method private fireEvent(ILjava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 258
    .line 259
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;

    .line 261
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 262
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 263
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 266
    :pswitch_0
    aget-object v4, v2, v3

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-interface {v4, v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->agentAdded(Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :pswitch_1
    aget-object v4, v2, v3

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-interface {v4, v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->agentRemoved(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :pswitch_2
    aget-object v4, v2, v3

    move-object v0, p2

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    move-object v1, v0

    invoke-interface {v4, v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_1

    .line 276
    :cond_0
    return-void

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;)V
    .locals 4
    .parameter

    .prologue
    .line 104
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->getAgents()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-interface {p1, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->agentAdded(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 119
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {p1, v0}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;->presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 175
    if-nez p1, :cond_0

    move v0, v4

    .line 186
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 185
    :cond_2
    monitor-exit v0

    move v0, v4

    .line 186
    goto :goto_0

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAgentCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAgents()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 158
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
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

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPresence(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 5
    .parameter

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 201
    if-nez p0, :cond_0

    .line 202
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 203
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 230
    :goto_0
    return-object v0

    .line 209
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 211
    const/4 v0, 0x0

    move-object v2, v0

    .line 213
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 215
    if-nez v2, :cond_2

    move-object v2, v0

    .line 216
    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v3

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v4

    if-le v3, v4, :cond_1

    move-object v2, v0

    .line 220
    goto :goto_1

    .line 224
    :cond_3
    if-nez v2, :cond_4

    .line 225
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 226
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 230
    goto :goto_0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;-><init>()V

    .line 93
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;->setTo(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 95
    return-void
.end method

.method public removeListener(Lorg/jivesoftware/smackx/workgroup/agent/AgentRosterListener;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
