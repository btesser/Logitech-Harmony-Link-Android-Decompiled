.class public Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$Provider;
.super Ljava/lang/Object;
.source "OccupantsInfo.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseOccupantInfo(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    .line 151
    const/4 v0, 0x0

    move-object v2, v1

    move v3, v0

    move-object v0, v1

    .line 155
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 156
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 157
    if-ne v4, v7, :cond_1

    const-string v5, "jid"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 159
    :cond_1
    if-ne v4, v7, :cond_2

    const-string v5, "nickname"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_2
    if-ne v4, v7, :cond_3

    const-string v5, "joined"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 164
    invoke-static {}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_3
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const-string v4, "occupant"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const/4 v3, 0x1

    goto :goto_0

    .line 170
    :cond_4
    new-instance v3, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;

    invoke-direct {v3, v2, v1, v0}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v3
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parser not in proper position, or bad XML."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;

    const-string v1, ""

    const-string v2, "roomID"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;-><init>(Ljava/lang/String;)V

    .line 135
    const/4 v1, 0x0

    .line 136
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 138
    if-ne v2, v5, :cond_2

    const-string v3, "occupant"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    #getter for: Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->occupants:Ljava/util/Set;
    invoke-static {v0}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;->access$000(Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$Provider;->parseOccupantInfo(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v2, "occupants-info"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    :cond_3
    return-object v0
.end method
