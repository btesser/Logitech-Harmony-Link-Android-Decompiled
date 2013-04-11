.class Lorg/jivesoftware/smack/Roster$RosterPacketListener;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/Roster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RosterPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/Roster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/Roster;)V
    .locals 0
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Roster$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Roster$RosterPacketListener;-><init>(Lorg/jivesoftware/smack/Roster;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 954
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 955
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 956
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 959
    check-cast p1, Lorg/jivesoftware/smack/packet/RosterPacket;

    .line 960
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 961
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 962
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 966
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 967
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #setter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v0, v6}, Lorg/jivesoftware/smack/Roster;->access$1002(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/RosterStorage;)Lorg/jivesoftware/smack/RosterStorage;

    move-object v5, v6

    .line 972
    :goto_1
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$1000(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    iget-boolean v0, v0, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-nez v0, :cond_2

    .line 973
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$1000(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/RosterStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 974
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 969
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getVersion()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 978
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 979
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->insertRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    invoke-static {v6, v0, v1, v2, v3}, Lorg/jivesoftware/smack/Roster;->access$1100(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_3

    .line 981
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$1000(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 982
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 983
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->remove:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 984
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1000(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v6

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/jivesoftware/smack/RosterStorage;->removeEntry(Ljava/lang/String;)V

    goto :goto_4

    .line 987
    :cond_4
    iget-object v6, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v6}, Lorg/jivesoftware/smack/Roster;->access$1000(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lorg/jivesoftware/smack/RosterStorage;->addEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/lang/String;)V

    goto :goto_4

    .line 992
    :cond_5
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    monitor-enter v0

    .line 993
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    .line 994
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 995
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->fireRosterChangedEvent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    invoke-static {v0, v1, v2, v3}, Lorg/jivesoftware/smack/Roster;->access$1200(Lorg/jivesoftware/smack/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 999
    return-void

    .line 995
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
