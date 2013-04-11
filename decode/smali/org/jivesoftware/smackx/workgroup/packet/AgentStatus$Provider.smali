.class public Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$Provider;
.super Ljava/lang/Object;
.source "AgentStatus.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseChatInfo(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;
    .locals 7
    .parameter

    .prologue
    .line 250
    const-string v0, ""

    const-string v1, "sessionID"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    const-string v0, ""

    const-string v2, "userID"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    const/4 v0, 0x0

    .line 254
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v3

    const-string v4, ""

    const-string v5, "startTime"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 259
    :goto_0
    const-string v0, ""

    const-string v4, "email"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    const-string v0, ""

    const-string v5, "username"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    const-string v0, ""

    const-string v6, "question"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 256
    :catch_0
    move-exception v3

    move-object v3, v0

    goto :goto_0
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
    .line 224
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;-><init>()V

    .line 226
    const-string v1, ""

    const-string v2, "jid"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->workgroupJID:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->access$102(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    const/4 v1, 0x0

    .line 229
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 230
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 232
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 233
    const-string v2, "chat"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    #getter for: Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->currentChats:Ljava/util/List;
    invoke-static {v0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->access$200(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$Provider;->parseChatInfo(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_1
    const-string v2, "max-chats"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->maxChats:I
    invoke-static {v0, v2}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->access$302(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;I)I

    goto :goto_0

    .line 240
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v2, "agent-status"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const/4 v1, 0x1

    goto :goto_0

    .line 245
    :cond_3
    return-object v0
.end method
