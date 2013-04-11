.class public Lcom/logitech/harmonylink/common/JsonUserConfigParser;
.super Ljava/lang/Object;
.source "JsonUserConfigParser.java"

# interfaces
.implements Lcom/logitech/harmonylink/common/IUserConfigParser;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isTiVoPresent:Z

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->isTiVoPresent:Z

    return-void
.end method

.method private buildActivityCommand(Lorg/json/JSONObject;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 4
    .parameter "functionObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/Command;-><init>()V

    .line 268
    .local v0, command:Lcom/logitech/harmonylink/harmony/Command;
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/logitech/harmonylink/harmony/Command;->setCommandId(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, hubId:Ljava/lang/String;
    const-string v3, "Revue 2.0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    const-string v3, "action"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/harmony/Command;->setCommandAction(Ljava/lang/String;)V

    .line 280
    :goto_0
    const-string v3, "label"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/harmony/Command;->setCommandLabel(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, v2}, Lcom/logitech/harmonylink/harmony/Command;->setCommandName(Ljava/lang/String;)V

    .line 284
    return-object v0

    .line 274
    :cond_0
    const-string v3, "TiVo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    const-string v3, "{\"type\":\"KaCommand\",\"keycode\":\"147\"}"

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/harmony/Command;->setCommandAction(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    const-string v3, "action"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/logitech/harmonylink/harmony/Command;->buildKa2xCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/harmony/Command;->setCommandAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildDeviceCommand(Lorg/json/JSONObject;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 3
    .parameter "functionObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/Command;-><init>()V

    .line 254
    .local v0, command:Lcom/logitech/harmonylink/harmony/Command;
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->setCommandId(Ljava/lang/String;)V

    .line 256
    const-string v2, "action"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/logitech/harmonylink/harmony/Command;->setCommandAction(Ljava/lang/String;)V

    .line 257
    const-string v2, "label"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/logitech/harmonylink/harmony/Command;->setCommandLabel(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->setCommandName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Command;->setRawCmdId()V

    .line 261
    return-object v0
.end method

.method private parseActivities(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;Lorg/json/JSONArray;)V
    .locals 6
    .parameter "activities"
    .parameter "activitiesArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 61
    .local v0, arrayLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 62
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 63
    .local v3, jsonHarmonyActivity:Lorg/json/JSONObject;
    new-instance v1, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-direct {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;-><init>()V

    .line 65
    .local v1, harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-direct {p0, v1, v3}, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->parseAndSetActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;Lorg/json/JSONObject;)V

    .line 68
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->isPartiallySetup()Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    invoke-virtual {p1, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->setHasPartiallySetupActivity(Z)V

    goto :goto_1

    .line 82
    .end local v1           #harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v3           #jsonHarmonyActivity:Lorg/json/JSONObject;
    :cond_2
    return-void
.end method

.method private parseAndSetActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;Lorg/json/JSONObject;)V
    .locals 32
    .parameter "harmonyActivity"
    .parameter "activityJsonValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v7, Lcom/logitech/harmonylink/harmony/Commands;

    invoke-direct {v7}, Lcom/logitech/harmonylink/harmony/Commands;-><init>()V

    .line 87
    .local v7, commands:Lcom/logitech/harmonylink/harmony/Commands;
    const-string v30, "controlGroup"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 92
    .local v9, controlGroupArray:Lorg/json/JSONArray;
    const-string v30, "label"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setName(Ljava/lang/String;)V

    .line 93
    const-string v30, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, activityId:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setId(Ljava/lang/String;)V

    .line 96
    const-string v30, "-1"

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 188
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local p0
    :cond_1
    const-string v30, "isDefaultWatchGTVActivity"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 101
    const-string v30, "isDefaultWatchGTVActivity"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setIsDefaultActivity(Z)V

    .line 105
    :cond_2
    const-string v30, "activityConfigured"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 106
    const-string v30, "activityConfigured"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v31, "Full"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    const/16 v30, 0x0

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setIsPartiallySetup(Z)V

    .line 111
    :cond_3
    const-string v30, "suggestedDisplay"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 112
    const-string v30, "suggestedDisplay"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 114
    .local v29, suggestedDisplay:Ljava/lang/String;
    const-string v30, "WatchGoogleTVLogitech"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 117
    :cond_4
    const-string v30, "WatchGTV"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setActivityType(Ljava/lang/String;)V

    .line 127
    .end local v29           #suggestedDisplay:Ljava/lang/String;
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 128
    .local v5, clength:I
    const/16 v23, 0x0

    .local v23, j:I
    :goto_3
    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_a

    .line 129
    move-object v0, v9

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 130
    .local v8, controlGroup:Lorg/json/JSONObject;
    const-string v30, "function"

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 131
    .local v17, functionArray:Lorg/json/JSONArray;
    const-string v30, "name"

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, controlGroupName:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v16

    .line 134
    .local v16, flength:I
    const/16 v24, 0x0

    .local v24, k:I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 135
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 136
    .local v18, functionObject:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->buildActivityCommand(Lorg/json/JSONObject;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v6

    .line 138
    .local v6, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v6, v10}, Lcom/logitech/harmonylink/harmony/Command;->setControlGroupName(Ljava/lang/String;)V

    .line 139
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->putActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 140
    invoke-virtual {v7, v6}, Lcom/logitech/harmonylink/harmony/Commands;->add(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 141
    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Command;->getLabel()Ljava/lang/String;

    move-result-object v30

    const-string v31, "TiVo"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 142
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->isTiVoPresent:Z

    .line 134
    :cond_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 106
    .end local v5           #clength:I
    .end local v6           #command:Lcom/logitech/harmonylink/harmony/Command;
    .end local v8           #controlGroup:Lorg/json/JSONObject;
    .end local v10           #controlGroupName:Ljava/lang/String;
    .end local v16           #flength:I
    .end local v17           #functionArray:Lorg/json/JSONArray;
    .end local v18           #functionObject:Lorg/json/JSONObject;
    .end local v23           #j:I
    .end local v24           #k:I
    :cond_6
    const/16 v30, 0x1

    goto/16 :goto_1

    .line 120
    .restart local v29       #suggestedDisplay:Ljava/lang/String;
    :cond_7
    const-string v30, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setActivityType(Ljava/lang/String;)V

    goto :goto_2

    .line 124
    .end local v29           #suggestedDisplay:Ljava/lang/String;
    :cond_8
    const-string v30, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setActivityType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 128
    .restart local v5       #clength:I
    .restart local v8       #controlGroup:Lorg/json/JSONObject;
    .restart local v10       #controlGroupName:Ljava/lang/String;
    .restart local v16       #flength:I
    .restart local v17       #functionArray:Lorg/json/JSONArray;
    .restart local v23       #j:I
    .restart local v24       #k:I
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 147
    .end local v8           #controlGroup:Lorg/json/JSONObject;
    .end local v10           #controlGroupName:Ljava/lang/String;
    .end local v16           #flength:I
    .end local v17           #functionArray:Lorg/json/JSONArray;
    .end local v24           #k:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->isTiVoPresent:Z

    move/from16 v30, v0

    if-nez v30, :cond_b

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v19

    .line 149
    .local v19, hubId:Ljava/lang/String;
    const-string v30, "Revue 2.0"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 150
    new-instance v12, Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v12}, Lcom/logitech/harmonylink/harmony/Command;-><init>()V

    .line 151
    .local v12, dvrCmd:Lcom/logitech/harmonylink/harmony/Command;
    const-string v30, "{\"type\":\"KaCommand\",\"keycode\":\"147\"}"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->setCommandAction(Ljava/lang/String;)V

    .line 152
    const-string v30, "DVR"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->setCommandName(Ljava/lang/String;)V

    .line 153
    const-string v30, "DVR"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->setCommandLabel(Ljava/lang/String;)V

    .line 154
    const-string v30, "DVR"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->setCommandId(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v7, v12}, Lcom/logitech/harmonylink/harmony/Commands;->add(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 159
    .end local v12           #dvrCmd:Lcom/logitech/harmonylink/harmony/Command;
    .end local v19           #hubId:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setCommands(Lcom/logitech/harmonylink/harmony/Commands;)V

    .line 161
    const-string v30, "fixit"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 162
    const-string v30, "fixit"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 163
    .local v13, fixitArray:Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v26

    .line 164
    .local v26, mIteratorList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .end local p0
    .local v15, fixitValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Fixit;>;"
    :cond_c
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_d

    .line 166
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    .line 167
    .local v25, key:Ljava/lang/String;
    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    .line 168
    .local v11, device:Lorg/json/JSONObject;
    const-string v30, "Power"

    const/16 v31, 0x0

    move-object v0, v11

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 169
    .local v27, powerValue:Ljava/lang/String;
    const-string v30, "id"

    const/16 v31, 0x0

    move-object v0, v11

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 170
    .local v20, id:Ljava/lang/String;
    const-string v30, "Input"

    const/16 v31, 0x0

    move-object v0, v11

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 171
    .local v21, input:Ljava/lang/String;
    const-string v30, "isRelativePower"

    const/16 v31, 0x0

    move-object v0, v11

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 174
    .local v28, relativePower:Ljava/lang/String;
    if-eqz v27, :cond_c

    if-eqz v20, :cond_c

    .line 175
    new-instance v14, Lcom/logitech/harmonylink/harmony/Fixit;

    move-object v0, v14

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/harmony/Fixit;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v14, fixitValue:Lcom/logitech/harmonylink/harmony/Fixit;
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Fixit;->setInput(Ljava/lang/String;)V

    .line 177
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 178
    .local v22, isRpwr:Z
    move-object v0, v14

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Fixit;->setRelatedPower(Z)V

    .line 179
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 183
    .end local v11           #device:Lorg/json/JSONObject;
    .end local v14           #fixitValue:Lcom/logitech/harmonylink/harmony/Fixit;
    .end local v20           #id:Ljava/lang/String;
    .end local v21           #input:Ljava/lang/String;
    .end local v22           #isRpwr:Z
    .end local v25           #key:Ljava/lang/String;
    .end local v27           #powerValue:Ljava/lang/String;
    .end local v28           #relativePower:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setFixitValues(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private parseAndSetDevice(Lcom/logitech/harmonylink/harmony/Device;Lorg/json/JSONObject;)V
    .locals 18
    .parameter "device"
    .parameter "jsonDevice"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v15, 0x0

    .local v15, label:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, deviceType:Ljava/lang/String;
    const/4 v9, 0x0

    .line 208
    .local v9, deviceTypeDisplayName:Ljava/lang/String;
    new-instance v4, Lcom/logitech/harmonylink/harmony/Commands;

    invoke-direct {v4}, Lcom/logitech/harmonylink/harmony/Commands;-><init>()V

    .line 209
    .local v4, commands:Lcom/logitech/harmonylink/harmony/Commands;
    const-string v16, "controlGroup"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 210
    .local v7, controlGrouparray:Lorg/json/JSONArray;
    const-string v16, "label"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Device;->setName(Ljava/lang/String;)V

    .line 211
    const-string v16, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Device;->setId(Ljava/lang/String;)V

    .line 212
    const-string v16, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Device;->setDeviceType(Ljava/lang/String;)V

    .line 214
    const-string v16, "label"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 215
    const-string v16, "manufacturer"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Device;->setManufacturer(Ljava/lang/String;)V

    .line 216
    const-string v16, "deviceTypeDisplayName"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 217
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Device;->setDeviceTypeDisplayName(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 220
    .local v2, clength:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_0
    if-ge v13, v2, :cond_1

    .line 221
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 222
    .local v5, controlGroup:Lorg/json/JSONObject;
    const-string v16, "function"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 223
    .local v11, functionArray:Lorg/json/JSONArray;
    const-string v16, "name"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, controlGroupName:Ljava/lang/String;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 225
    .local v10, flength:I
    const/4 v14, 0x0

    .local v14, k:I
    :goto_1
    if-ge v14, v10, :cond_0

    .line 226
    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 227
    .local v12, functionObject:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->buildDeviceCommand(Lorg/json/JSONObject;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v3

    .line 228
    .local v3, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v3, v6}, Lcom/logitech/harmonylink/harmony/Command;->setControlGroupName(Ljava/lang/String;)V

    .line 229
    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->putDevice(Lcom/logitech/harmonylink/harmony/Device;)V

    .line 231
    invoke-virtual {v4, v3}, Lcom/logitech/harmonylink/harmony/Commands;->add(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 225
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 233
    .end local v3           #command:Lcom/logitech/harmonylink/harmony/Command;
    .end local v12           #functionObject:Lorg/json/JSONObject;
    :cond_0
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Device;->setCommands(Lcom/logitech/harmonylink/harmony/Commands;)V

    .line 220
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 237
    .end local v5           #controlGroup:Lorg/json/JSONObject;
    .end local v6           #controlGroupName:Ljava/lang/String;
    .end local v10           #flength:I
    .end local v11           #functionArray:Lorg/json/JSONArray;
    .end local v14           #k:I
    :cond_1
    if-nez v15, :cond_2

    .line 238
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "TV"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 239
    const-string v15, "Television"

    .line 247
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Device;->setLabel(Ljava/lang/String;)V

    .line 249
    return-void

    .line 240
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "STB"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 241
    const-string v15, "Set-top box"

    goto :goto_2

    .line 242
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "AVR"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 243
    const-string v15, "Receiver"

    goto :goto_2

    .line 245
    :cond_5
    const-string v15, "Other"

    goto :goto_2
.end method

.method private parseDevices(Lcom/logitech/harmonylink/harmony/Devices;Lorg/json/JSONArray;)V
    .locals 5
    .parameter "devices"
    .parameter "devicesArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 193
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 194
    .local v2, jsonDevice:Lorg/json/JSONObject;
    new-instance v0, Lcom/logitech/harmonylink/harmony/Device;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/Device;-><init>()V

    .line 195
    .local v0, device:Lcom/logitech/harmonylink/harmony/Device;
    invoke-direct {p0, v0, v2}, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->parseAndSetDevice(Lcom/logitech/harmonylink/harmony/Device;Lorg/json/JSONObject;)V

    .line 197
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Device;->getLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Revue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-virtual {p1, v0}, Lcom/logitech/harmonylink/harmony/Devices;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0           #device:Lcom/logitech/harmonylink/harmony/Device;
    .end local v2           #jsonDevice:Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public parseUserConfig(Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/String;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;Lcom/logitech/harmonylink/harmony/Devices;)V
    .locals 6
    .parameter "dom"
    .parameter "userConfig"
    .parameter "activities"
    .parameter "devices"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 30
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, jObject:Lorg/json/JSONObject;
    const-string v4, "activity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    const-string v4, "activity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    .local v0, activitiesArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 34
    invoke-direct {p0, p3, v0}, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->parseActivities(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;Lorg/json/JSONArray;)V

    .line 38
    .end local v0           #activitiesArray:Lorg/json/JSONArray;
    :cond_0
    const-string v4, "device"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    const-string v4, "device"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 41
    .local v1, deviceArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 42
    invoke-direct {p0, p4, v1}, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->parseDevices(Lcom/logitech/harmonylink/harmony/Devices;Lorg/json/JSONArray;)V

    .line 46
    .end local v1           #deviceArray:Lorg/json/JSONArray;
    :cond_1
    const-string v4, "global"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    const-string v4, "global"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    .local v2, global:Lorg/json/JSONObject;
    const-string v4, "lastUpdated"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    iget-object v4, p0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v5, "lastUpdated"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/harmony/Dom;->setLastUpdated(Ljava/lang/String;)V

    .line 52
    :cond_2
    const-string v4, "timeStampHash"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    iget-object v4, p0, Lcom/logitech/harmonylink/common/JsonUserConfigParser;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const-string v5, "timeStampHash"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/harmony/Dom;->setHash(Ljava/lang/String;)V

    .line 56
    .end local v2           #global:Lorg/json/JSONObject;
    :cond_3
    return-void
.end method
