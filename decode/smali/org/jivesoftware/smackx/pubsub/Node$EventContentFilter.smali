.class Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventContentFilter"
.end annotation


# instance fields
.field private firstElement:Ljava/lang/String;

.field private secondElement:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smackx/pubsub/Node;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;->this$0:Lorg/jivesoftware/smackx/pubsub/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;->firstElement:Ljava/lang/String;

    .line 483
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;->this$0:Lorg/jivesoftware/smackx/pubsub/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;->firstElement:Ljava/lang/String;

    .line 488
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;->secondElement:Ljava/lang/String;

    .line 489
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 493
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-nez v0, :cond_0

    move v0, v3

    .line 522
    :goto_0
    return v0

    .line 496
    :cond_0
    const-string v0, "event"

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->EVENT:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/EventElement;

    .line 498
    if-nez v0, :cond_1

    move v0, v3

    .line 499
    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/EventElement;->getEvent()Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    move-result-object v0

    .line 503
    if-nez v0, :cond_2

    move v0, v3

    .line 504
    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;->firstElement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 508
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->getNode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;->this$0:Lorg/jivesoftware/smackx/pubsub/Node;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    .line 509
    goto :goto_0

    .line 511
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;->secondElement:Ljava/lang/String;

    if-nez v1, :cond_4

    move v0, v4

    .line 512
    goto :goto_0

    .line 514
    :cond_4
    instance-of v1, v0, Lorg/jivesoftware/smackx/pubsub/EmbeddedPacketExtension;

    if-eqz v1, :cond_5

    .line 516
    check-cast v0, Lorg/jivesoftware/smackx/pubsub/EmbeddedPacketExtension;

    invoke-interface {v0}, Lorg/jivesoftware/smackx/pubsub/EmbeddedPacketExtension;->getExtensions()Ljava/util/List;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PacketExtension;

    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;->secondElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    .line 519
    goto :goto_0

    :cond_5
    move v0, v3

    .line 522
    goto :goto_0
.end method
