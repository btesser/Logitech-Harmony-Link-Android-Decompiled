.class public Lorg/jivesoftware/smackx/packet/OfflineMessageInfo$Provider;
.super Ljava/lang/Object;
.source "OfflineMessageInfo.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/OfflineMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo;-><init>()V

    .line 111
    const/4 v1, 0x0

    .line 112
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 114
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const-string v2, ""

    const-string v3, "node"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo;->setNode(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "offline"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const/4 v1, 0x1

    goto :goto_0

    .line 124
    :cond_2
    return-object v0
.end method
