.class public Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemDeleteTranslator"
.end annotation


# instance fields
.field private listener:Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;

.field final synthetic this$0:Lorg/jivesoftware/smackx/pubsub/Node;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/Node;Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;->this$0:Lorg/jivesoftware/smackx/pubsub/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;->listener:Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;

    .line 414
    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter

    .prologue
    .line 418
    const-string v0, "event"

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->EVENT:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/EventElement;

    .line 420
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/EventElement;->getExtensions()Ljava/util/List;

    move-result-object v1

    .line 422
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/PacketExtension;

    invoke-interface {v1}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->PURGE_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;->listener:Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;

    invoke-interface {v0}, Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;->handlePurge()V

    .line 442
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/EventElement;->getEvent()Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;

    .line 429
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getItems()Ljava/util/List;

    move-result-object v1

    .line 430
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 431
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/RetractItem;

    .line 436
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/RetractItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 439
    :cond_1
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/ItemDeleteEvent;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension;->getNode()Ljava/lang/String;

    move-result-object v0

    #calls: Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptionIds(Lorg/jivesoftware/smack/packet/Packet;)Ljava/util/List;
    invoke-static {p1}, Lorg/jivesoftware/smackx/pubsub/Node;->access$000(Lorg/jivesoftware/smack/packet/Packet;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lorg/jivesoftware/smackx/pubsub/ItemDeleteEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 440
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;->listener:Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;->handleDeletedItems(Lorg/jivesoftware/smackx/pubsub/ItemDeleteEvent;)V

    goto :goto_0
.end method
