.class Lorg/jivesoftware/smack/Roster$RosterResultListener;
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
    name = "RosterResultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/Roster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/Roster;)V
    .locals 0
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Roster$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 920
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Roster$RosterResultListener;-><init>(Lorg/jivesoftware/smack/Roster;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .parameter

    .prologue
    .line 924
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v0, :cond_1

    .line 925
    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    .line 926
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getExtensions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 928
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 929
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 930
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$1000(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$1000(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/RosterStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 932
    iget-object v5, p0, Lorg/jivesoftware/smack/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->insertRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    invoke-static {v5, v0, v1, v2, v3}, Lorg/jivesoftware/smack/Roster;->access$1100(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/Roster;

    monitor-enter v0

    .line 935
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/Roster;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    .line 936
    iget-object v4, p0, Lorg/jivesoftware/smack/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 937
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->fireRosterChangedEvent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    invoke-static {v0, v1, v2, v3}, Lorg/jivesoftware/smack/Roster;->access$1200(Lorg/jivesoftware/smack/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 942
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->access$900(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/Connection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 943
    return-void

    .line 937
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
