.class Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;
.super Ljava/lang/Object;
.source "KeyMappedCommands.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/harmony/KeyMappedCommands;->sendGetKeyMappedCommands(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

.field final synthetic val$customCommands:Lcom/logitech/harmonylink/harmony/Commands;

.field final synthetic val$keyMappedCommandCallBack:Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;

.field final synthetic val$launcher:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/harmony/Commands;Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$customCommands:Lcom/logitech/harmonylink/harmony/Commands;

    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$activity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    iput-object p3, p0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$keyMappedCommandCallBack:Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;

    iput-object p4, p0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$launcher:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 32
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 21
    .parameter "response"

    .prologue
    .line 37
    invoke-interface/range {p1 .. p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v13

    .line 40
    .local v13, responseAsString:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 42
    .local v7, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 44
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v17, Ljava/io/StringReader;

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 45
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "keyAssignmentList"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 47
    :goto_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "keyAssignment"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    if-eqz v17, :cond_4

    .line 50
    :try_start_1
    const-string v17, ""

    const-string v18, "extraData"

    move-object v0, v12

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 51
    .local v14, value:Ljava/lang/String;
    const-string v17, "&"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 52
    .local v15, values:[Ljava/lang/String;
    new-instance v3, Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v3}, Lcom/logitech/harmonylink/harmony/Command;-><init>()V

    .line 53
    .local v3, cmd:Lcom/logitech/harmonylink/harmony/Command;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$customCommands:Lcom/logitech/harmonylink/harmony/Commands;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Commands;->add(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 55
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object v0, v15

    array-length v0, v0

    move/from16 v17, v0

    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 56
    aget-object v17, v15, v9

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 57
    .local v16, values2:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v16, v17

    const-string v18, "languageElement"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 58
    const/16 v17, 0x1

    aget-object v17, v16, v17

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->setCommandId(Ljava/lang/String;)V

    .line 59
    const/16 v17, 0x1

    aget-object v17, v16, v17

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->setRawCommandId(Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 61
    :cond_1
    const/16 v17, 0x0

    aget-object v17, v16, v17

    const-string v18, "deviceId"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$activity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v17 .. v18}, Lcom/logitech/harmonylink/harmony/Dom;->getDevice(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->putDevice(Lcom/logitech/harmonylink/harmony/Device;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 66
    .end local v3           #cmd:Lcom/logitech/harmonylink/harmony/Command;
    .end local v9           #i:I
    .end local v14           #value:Ljava/lang/String;
    .end local v15           #values:[Ljava/lang/String;
    .end local v16           #values2:[Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v8, v17

    .line 67
    .local v8, genericException:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v8           #genericException:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 87
    .end local v7           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v17

    move-object/from16 v5, v17

    .line 88
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$keyMappedCommandCallBack:Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$activity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$launcher:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$customCommands:Lcom/logitech/harmonylink/harmony/Commands;

    move-object/from16 v20, v0

    invoke-interface/range {v17 .. v20}, Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;->addKeyMappedCommand(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/Commands;)V

    .line 92
    return-void

    .line 73
    .restart local v7       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/KeyMappedCommands$1;->val$customCommands:Lcom/logitech/harmonylink/harmony/Commands;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/logitech/harmonylink/harmony/Commands;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/harmony/Command;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 76
    .restart local v3       #cmd:Lcom/logitech/harmonylink/harmony/Command;
    :try_start_4
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Command;->getDevice()Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v4

    .line 78
    .local v4, d:Lcom/logitech/harmonylink/harmony/Device;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Command;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 79
    .local v11, name:Ljava/lang/String;
    invoke-virtual {v3, v11}, Lcom/logitech/harmonylink/harmony/Command;->setName(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 81
    .end local v4           #d:Lcom/logitech/harmonylink/harmony/Device;
    .end local v11           #name:Ljava/lang/String;
    :catch_2
    move-exception v17

    move-object/from16 v6, v17

    .line 82
    .local v6, eLabelSetting:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method
