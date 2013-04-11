.class public Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory$InternalProvider;
.super Ljava/lang/Object;
.source "AgentChatHistory.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseChatSetting(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    const/4 v1, 0x0

    .line 120
    const-wide/16 v2, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 126
    :goto_0
    if-nez v0, :cond_6

    .line 127
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 128
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const-string v9, "date"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 129
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 131
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object v11, v7

    move v7, v0

    move-object v0, v11

    move-object v12, v5

    move-object v13, v4

    move-wide v4, v2

    move-object v2, v12

    move-object v3, v13

    move-object v14, v1

    move-object v1, v6

    move-object v6, v14

    :goto_1
    move-object v11, v0

    move v0, v7

    move-object v7, v11

    move-object v12, v2

    move-object v13, v3

    move-wide v2, v4

    move-object v5, v12

    move-object v4, v13

    move-object v14, v6

    move-object v6, v1

    move-object v1, v14

    .line 151
    goto :goto_0

    .line 133
    :cond_0
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    const-string v9, "duration"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 134
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v11, v7

    move v7, v0

    move-object v0, v11

    move-object v12, v5

    move-object v13, v4

    move-wide v4, v2

    move-object v2, v12

    move-object v3, v13

    move-object v14, v1

    move-object v1, v6

    move-object v6, v14

    goto :goto_1

    .line 136
    :cond_1
    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    const-string v9, "visitorsName"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 137
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    move-object v11, v7

    move v7, v0

    move-object v0, v11

    move-object v12, v5

    move-object v13, v4

    move-wide v4, v2

    move-object v2, v12

    move-object v3, v13

    move-object v14, v1

    move-object v1, v6

    move-object v6, v14

    goto :goto_1

    .line 139
    :cond_2
    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const-string v9, "visitorsEmail"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 140
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    move-object v11, v7

    move v7, v0

    move-object v0, v11

    move-object v12, v5

    move-object v13, v4

    move-wide v4, v2

    move-object v2, v12

    move-object v3, v13

    move-object v14, v1

    move-object v1, v6

    move-object v6, v14

    goto :goto_1

    .line 142
    :cond_3
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const-string v9, "sessionID"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 143
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    move-object v11, v7

    move v7, v0

    move-object v0, v11

    move-object v12, v5

    move-object v13, v4

    move-wide v4, v2

    move-object v2, v12

    move-object v3, v13

    move-object v14, v1

    move-object v1, v6

    move-object v6, v14

    goto/16 :goto_1

    .line 145
    :cond_4
    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    const-string v9, "question"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 146
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    move v7, v0

    move-object v0, v11

    move-object v12, v5

    move-object v13, v4

    move-wide v4, v2

    move-object v2, v12

    move-object v3, v13

    move-object v14, v1

    move-object v1, v6

    move-object v6, v14

    goto/16 :goto_1

    .line 148
    :cond_5
    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    const-string v8, "chat-session"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 149
    const/4 v0, 0x1

    move-object v11, v7

    move v7, v0

    move-object v0, v11

    move-object v12, v5

    move-object v13, v4

    move-wide v4, v2

    move-object v2, v12

    move-object v3, v13

    move-object v14, v1

    move-object v1, v6

    move-object v6, v14

    goto/16 :goto_1

    .line 152
    :cond_6
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;-><init>(Ljava/util/Date;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7
    move-object v11, v7

    move v7, v0

    move-object v0, v11

    move-object v12, v5

    move-object v13, v4

    move-wide v4, v2

    move-object v2, v12

    move-object v3, v13

    move-object v14, v1

    move-object v1, v6

    move-object v6, v14

    goto/16 :goto_1
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

    .line 96
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parser not in proper position, or bad XML."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;-><init>()V

    .line 102
    const/4 v1, 0x0

    .line 103
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 105
    if-ne v2, v5, :cond_2

    const-string v3, "chat-session"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory$InternalProvider;->parseChatSetting(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatHistory;->addChatSession(Lorg/jivesoftware/smackx/workgroup/ext/history/AgentChatSession;)V

    goto :goto_0

    .line 109
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v2, "chat-sessions"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const/4 v1, 0x1

    goto :goto_0

    .line 113
    :cond_3
    return-object v0
.end method
