.class public Lorg/jivesoftware/smackx/provider/PEPProvider;
.super Ljava/lang/Object;
.source "PEPProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# instance fields
.field nodeParsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/provider/PacketExtensionProvider;",
            ">;"
        }
    .end annotation
.end field

.field pepItem:Lorg/jivesoftware/smack/packet/PacketExtension;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/provider/PEPProvider;->nodeParsers:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    move v1, v0

    .line 71
    :goto_0
    if-nez v1, :cond_3

    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 73
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 89
    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "items"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const-string v0, ""

    const-string v2, "node"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lorg/jivesoftware/smackx/provider/PEPProvider;->nodeParsers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/provider/PEPProvider;->pepItem:Lorg/jivesoftware/smack/packet/PacketExtension;

    :cond_1
    move v0, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    const/4 v0, 0x1

    goto :goto_1

    .line 91
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/PEPProvider;->pepItem:Lorg/jivesoftware/smack/packet/PacketExtension;

    return-object v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public registerPEPParserExtension(Ljava/lang/String;Lorg/jivesoftware/smack/provider/PacketExtensionProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/PEPProvider;->nodeParsers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
