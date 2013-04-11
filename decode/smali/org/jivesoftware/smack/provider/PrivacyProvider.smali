.class public Lorg/jivesoftware/smack/provider/PrivacyProvider;
.super Ljava/lang/Object;
.source "PrivacyProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 25
    new-instance v0, Lorg/jivesoftware/smack/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Privacy;-><init>()V

    .line 28
    new-instance v1, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Privacy;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 29
    const/4 v1, 0x0

    .line 30
    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 31
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 32
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    const-string v2, ""

    const-string v3, "name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineActiveList(Z)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Privacy;->setActiveName(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    const-string v2, ""

    const-string v3, "name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    if-nez v2, :cond_3

    .line 44
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/Privacy;->setDeclineDefaultList(Z)V

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Privacy;->setDefaultName(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/provider/PrivacyProvider;->parseList(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/packet/Privacy;)V

    goto :goto_0

    .line 53
    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    .line 55
    goto :goto_0

    .line 60
    :cond_6
    return-object v0
.end method

.method public parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PrivacyItem;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 87
    .line 89
    const-string v0, ""

    const-string v1, "action"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, ""

    const-string v2, "order"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, ""

    const-string v3, "type"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v3, "allow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v4

    .line 104
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 107
    new-instance v3, Lorg/jivesoftware/smack/packet/PrivacyItem;

    invoke-direct {v3, v2, v0, v1}, Lorg/jivesoftware/smack/packet/PrivacyItem;-><init>(Ljava/lang/String;ZI)V

    .line 108
    const-string v0, ""

    const-string v1, "value"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setValue(Ljava/lang/String;)V

    move v0, v5

    .line 110
    :cond_0
    :goto_1
    if-nez v0, :cond_6

    .line 111
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 112
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterIQ(Z)V

    .line 116
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterMessage(Z)V

    .line 119
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "presence-in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterPresence_in(Z)V

    .line 122
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "presence-out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterPresence_out(Z)V

    goto :goto_1

    .line 100
    :cond_4
    const-string v3, "deny"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v5

    .line 101
    goto :goto_0

    .line 126
    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 127
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 128
    goto :goto_1

    .line 132
    :cond_6
    return-object v3

    :cond_7
    move v0, v4

    goto :goto_0
.end method

.method public parseList(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/packet/Privacy;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    const-string v1, ""

    const-string v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 70
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/provider/PrivacyProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PrivacyItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p2, v1, v2}, Lorg/jivesoftware/smack/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 83
    return-void
.end method
