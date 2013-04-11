.class Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;
.super Ljava/lang/Object;
.source "AgentRoster.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresencePacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;-><init>(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .parameter

    .prologue
    .line 283
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    move-object v1, v0

    .line 284
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    .line 285
    if-nez v3, :cond_1

    .line 287
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Presence with no FROM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #calls: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->getPresenceMapKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$200(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v2

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v2, v5, :cond_5

    .line 296
    const-string v2, "agent-status"

    const-string v5, "http://jabber.org/protocol/workgroup"

    invoke-virtual {v1, v2, v5}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;

    .line 298
    if-eqz v2, :cond_0

    .line 303
    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->workgroupJID:Ljava/lang/String;
    invoke-static {v5}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$300(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->getWorkgroupJID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$400(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 309
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 310
    iget-object v5, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v5}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$400(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :goto_1
    monitor-enter v2

    .line 317
    :try_start_0
    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$500(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 321
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$500(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    const/4 v5, 0x2

    #calls: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v1, v5, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$600(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V

    goto :goto_2

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 313
    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$400(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_1

    .line 318
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 327
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 330
    :cond_5
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v1, v2, :cond_0

    .line 331
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$400(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 332
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$400(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 333
    monitor-enter v1

    .line 334
    :try_start_4
    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 336
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 337
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->presenceMap:Ljava/util/Map;
    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$400(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_6
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$500(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 342
    :try_start_5
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    #getter for: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->entries:Ljava/util/List;
    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$500(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 343
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 345
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster$PresencePacketListener;->this$0:Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;

    const/4 v5, 0x2

    #calls: Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->fireEvent(ILjava/lang/Object;)V
    invoke-static {v1, v5, p1}, Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;->access$600(Lorg/jivesoftware/smackx/workgroup/agent/AgentRoster;ILjava/lang/Object;)V

    goto :goto_3

    .line 348
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 335
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 348
    :cond_8
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_0
.end method
