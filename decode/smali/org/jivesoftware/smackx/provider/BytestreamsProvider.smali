.class public Lorg/jivesoftware/smackx/provider/BytestreamsProvider;
.super Ljava/lang/Object;
.source "BytestreamsProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 40
    const/4 v0, 0x0

    .line 42
    new-instance v1, Lorg/jivesoftware/smackx/packet/Bytestream;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/Bytestream;-><init>()V

    .line 44
    const-string v2, ""

    const-string v3, "sid"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, ""

    const-string v4, "mode"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move-object v0, v10

    .line 55
    :cond_0
    :goto_0
    if-nez v6, :cond_6

    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 59
    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    .line 60
    sget-object v7, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;->ELEMENTNAME:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    const-string v0, ""

    const-string v4, "jid"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v4, ""

    const-string v5, "host"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    const-string v5, ""

    const-string v7, "port"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    goto :goto_0

    .line 64
    :cond_1
    sget-object v7, Lorg/jivesoftware/smackx/packet/Bytestream$StreamHostUsed;->ELEMENTNAME:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 66
    const-string v7, ""

    const-string v8, "jid"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/packet/Bytestream;->setUsedHost(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    sget-object v7, Lorg/jivesoftware/smackx/packet/Bytestream$Activate;->ELEMENTNAME:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    const-string v7, ""

    const-string v8, "jid"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/jivesoftware/smackx/packet/Bytestream;->setToActivate(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    const/4 v9, 0x3

    if-ne v7, v9, :cond_0

    .line 71
    const-string v7, "streamhost"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 72
    if-nez v0, :cond_4

    .line 73
    invoke-virtual {v1, v5, v4}, Lorg/jivesoftware/smackx/packet/Bytestream;->addStreamHost(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    :goto_1
    move-object v0, v10

    move-object v4, v10

    move-object v5, v10

    .line 80
    goto :goto_0

    .line 75
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v5, v4, v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->addStreamHost(Ljava/lang/String;Ljava/lang/String;I)Lorg/jivesoftware/smackx/packet/Bytestream$StreamHost;

    goto :goto_1

    .line 81
    :cond_5
    const-string v7, "query"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    const/4 v6, 0x1

    goto :goto_0

    .line 87
    :cond_6
    invoke-static {v3}, Lorg/jivesoftware/smackx/packet/Bytestream$Mode;->fromName(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/Bytestream$Mode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/packet/Bytestream;->setMode(Lorg/jivesoftware/smackx/packet/Bytestream$Mode;)V

    .line 88
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/Bytestream;->setSessionID(Ljava/lang/String;)V

    .line 89
    return-object v1
.end method
