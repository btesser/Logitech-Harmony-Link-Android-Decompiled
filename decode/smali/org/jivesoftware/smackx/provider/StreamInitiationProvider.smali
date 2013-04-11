.class public Lorg/jivesoftware/smackx/provider/StreamInitiationProvider;
.super Ljava/lang/Object;
.source "StreamInitiationProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 25
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 45
    const-string v5, ""

    const-string v6, "id"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    const-string v6, ""

    const-string v7, "mime-type"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    new-instance v7, Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-direct {v7}, Lorg/jivesoftware/smackx/packet/StreamInitiation;-><init>()V

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 59
    const/4 v14, 0x0

    .line 60
    new-instance v15, Lorg/jivesoftware/smackx/provider/DataFormProvider;

    invoke-direct {v15}, Lorg/jivesoftware/smackx/provider/DataFormProvider;-><init>()V

    move-object/from16 v21, v14

    move v14, v4

    move-object/from16 v4, v21

    move-object/from16 v22, v12

    move-object v12, v9

    move-object/from16 v9, v22

    move-object/from16 v23, v10

    move-object v10, v11

    move-object/from16 v11, v23

    move-object/from16 v24, v8

    move v8, v13

    move-object/from16 v13, v24

    .line 65
    :cond_0
    :goto_0
    if-nez v14, :cond_8

    .line 66
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .line 67
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 68
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v18

    .line 69
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 70
    const-string v16, "file"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 71
    const-string v10, ""

    const-string v11, "name"

    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 72
    const-string v11, ""

    const-string v12, "size"

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 73
    const-string v12, ""

    const-string v13, "hash"

    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 74
    const-string v13, ""

    const-string v16, "date"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v13

    move-object v13, v10

    move-object/from16 v10, v21

    move-object/from16 v22, v11

    move-object v11, v12

    move-object/from16 v12, v22

    goto :goto_0

    .line 75
    :cond_1
    const-string v16, "desc"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 76
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 77
    :cond_2
    const-string v16, "range"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 78
    const/4 v8, 0x1

    goto :goto_0

    .line 79
    :cond_3
    const-string v16, "x"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v16, "jabber:x:data"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 81
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p0

    check-cast p0, Lorg/jivesoftware/smackx/packet/DataForm;

    move-object/from16 v4, p0

    goto/16 :goto_0

    .line 83
    :cond_4
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 84
    const-string v16, "si"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 85
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 86
    :cond_5
    const-string v16, "file"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 87
    const-wide/16 v16, 0x0

    .line 88
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_6

    .line 90
    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 97
    :cond_6
    :goto_1
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 98
    if-eqz v10, :cond_7

    .line 100
    :try_start_1
    sget-object v19, Lorg/jivesoftware/smack/packet/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    monitor-enter v19
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 101
    :try_start_2
    sget-object v20, Lorg/jivesoftware/smack/packet/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v18

    .line 102
    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    :cond_7
    :goto_2
    new-instance v19, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    move-object/from16 v0, v19

    move-object v1, v13

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;-><init>(Ljava/lang/String;J)V

    .line 109
    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setHash(Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setDate(Ljava/util/Date;)V

    .line 111
    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setDesc(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, v19

    move v1, v8

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setRanged(Z)V

    .line 113
    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFile(Lorg/jivesoftware/smackx/packet/StreamInitiation$File;)V

    goto/16 :goto_0

    .line 92
    :catch_0
    move-exception v18

    .line 93
    invoke-virtual/range {v18 .. v18}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v20

    move-object/from16 v21, v20

    move-object/from16 v20, v18

    move-object/from16 v18, v21

    :goto_3
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v18
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1

    .line 103
    :catch_1
    move-exception v18

    move-object/from16 v18, v20

    goto :goto_2

    .line 118
    :cond_8
    invoke-virtual {v7, v5}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setSesssionID(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v7, v6}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setMimeType(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v7, v4}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFeatureNegotiationForm(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 123
    return-object v7

    .line 103
    :catch_2
    move-exception v19

    goto :goto_2

    .line 102
    :catchall_1
    move-exception v20

    move-object/from16 v21, v20

    move-object/from16 v20, v18

    move-object/from16 v18, v21

    goto :goto_3

    :catchall_2
    move-exception v18

    goto :goto_3
.end method
