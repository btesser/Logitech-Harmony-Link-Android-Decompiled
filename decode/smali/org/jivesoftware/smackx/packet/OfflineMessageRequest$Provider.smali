.class public Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Provider;
.super Ljava/lang/Object;
.source "OfflineMessageRequest.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    new-instance v1, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;

    const-string v2, ""

    const-string v3, "node"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;-><init>(Ljava/lang/String;)V

    .line 224
    const-string v2, ""

    const-string v3, "action"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;->setAction(Ljava/lang/String;)V

    .line 225
    const-string v2, ""

    const-string v3, "jid"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;->setJid(Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 228
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 229
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    return-object v1
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

    .line 197
    new-instance v0, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;-><init>()V

    .line 198
    const/4 v1, 0x0

    .line 199
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 200
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 201
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 202
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Provider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->addItem(Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Item;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "purge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->setPurge(Z)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fetch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest;->setFetch(Z)V

    goto :goto_0

    .line 211
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 212
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "offline"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    .line 213
    goto :goto_0

    .line 218
    :cond_4
    return-object v0
.end method
