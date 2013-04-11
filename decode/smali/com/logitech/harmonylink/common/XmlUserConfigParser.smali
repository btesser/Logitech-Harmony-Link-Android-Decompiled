.class public Lcom/logitech/harmonylink/common/XmlUserConfigParser;
.super Ljava/lang/Object;
.source "XmlUserConfigParser.java"

# interfaces
.implements Lcom/logitech/harmonylink/common/IUserConfigParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildCommand(Lorg/xmlpull/v1/XmlPullParser;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 7
    .parameter "parser"

    .prologue
    const/4 v6, 0x0

    .line 174
    const/4 v1, 0x0

    .local v1, cmd:Ljava/lang/String;
    const/4 v2, 0x0

    .line 175
    .local v2, commandName:Ljava/lang/String;
    new-instance v0, Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/Command;-><init>()V

    .line 176
    .local v0, c:Lcom/logitech/harmonylink/harmony/Command;
    const-string v5, "name"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, name:Ljava/lang/String;
    const-string v5, "label"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/logitech/harmonylink/harmony/Command;->setCommandLabel(Ljava/lang/String;)V

    .line 178
    const-string v5, "rawCommandId"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/logitech/harmonylink/harmony/Command;->setRawCommandId(Ljava/lang/String;)V

    .line 180
    const-string v5, "controlGroupName"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, controlGroupName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/harmony/Command;->setControlGroupName(Ljava/lang/String;)V

    .line 183
    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/logitech/harmonylink/harmony/Command;->setControlGroupName(Ljava/lang/String;)V

    .line 187
    :cond_0
    if-eqz v3, :cond_2

    const-string v5, "NormalizedCommands"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    invoke-static {v4}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->getNormalizedCommandFromOpenApiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v0, v2}, Lcom/logitech/harmonylink/harmony/Command;->setCommandName(Ljava/lang/String;)V

    .line 191
    invoke-static {v2}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->getHardcodedCommandNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;->setCmdId(Ljava/lang/String;)V

    .line 194
    if-nez v1, :cond_1

    .line 195
    invoke-virtual {v0, v2}, Lcom/logitech/harmonylink/harmony/Command;->setCmdId(Ljava/lang/String;)V

    .line 197
    :cond_1
    invoke-virtual {v0, v4}, Lcom/logitech/harmonylink/harmony/Command;->setNormalizedId(Ljava/lang/String;)V

    .line 200
    :cond_2
    if-eqz v4, :cond_3

    .line 201
    invoke-virtual {v0, v4}, Lcom/logitech/harmonylink/harmony/Command;->setCommandName(Ljava/lang/String;)V

    .line 202
    :cond_3
    if-nez v1, :cond_4

    .line 203
    invoke-virtual {v0, v4}, Lcom/logitech/harmonylink/harmony/Command;->setCmdId(Ljava/lang/String;)V

    .line 205
    :cond_4
    return-object v0
.end method

.method private parseActivities(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "activities"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 50
    .local v1, parserDepth:I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 52
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, name:Ljava/lang/String;
    const-string v2, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->parseActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0, p2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->skipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 58
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parseActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "activities"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 62
    new-instance v2, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-direct {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;-><init>()V

    .line 63
    .local v2, harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    new-instance v0, Lcom/logitech/harmonylink/harmony/Commands;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/Commands;-><init>()V

    .line 65
    .local v0, commands:Lcom/logitech/harmonylink/harmony/Commands;
    const-string v4, "name"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setName(Ljava/lang/String;)V

    .line 66
    const-string v4, "id"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setId(Ljava/lang/String;)V

    .line 68
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 69
    .local v1, depth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 70
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 71
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, name:Ljava/lang/String;
    const-string v4, "commands"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    invoke-direct {p0, v2, v0, p2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->parseCommands(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;Lcom/logitech/harmonylink/harmony/Commands;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0, p2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->skipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 79
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->setCommands(Lcom/logitech/harmonylink/harmony/Commands;)V

    .line 80
    invoke-virtual {p1, v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method private parseCommand(Lcom/logitech/harmonylink/harmony/Commands;Lcom/logitech/harmonylink/harmony/Device;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .parameter "commands"
    .parameter "device"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p3}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->buildCommand(Lorg/xmlpull/v1/XmlPullParser;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    .line 169
    .local v0, c:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v0, p2}, Lcom/logitech/harmonylink/harmony/Command;->putDevice(Lcom/logitech/harmonylink/harmony/Device;)V

    .line 170
    invoke-virtual {p1, v0}, Lcom/logitech/harmonylink/harmony/Commands;->add(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 171
    return-void
.end method

.method private parseCommand(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;Lcom/logitech/harmonylink/harmony/Commands;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .parameter "harmonyActivity"
    .parameter "commands"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p3}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->buildCommand(Lorg/xmlpull/v1/XmlPullParser;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v0

    .line 100
    .local v0, c:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/harmony/Command;->putActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 101
    invoke-virtual {p2, v0}, Lcom/logitech/harmonylink/harmony/Commands;->add(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 102
    return-void
.end method

.method private parseCommands(Lcom/logitech/harmonylink/harmony/Commands;Lcom/logitech/harmonylink/harmony/Device;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "commands"
    .parameter "device"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 155
    .local v0, depth:I
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 157
    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 158
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, name:Ljava/lang/String;
    const-string v2, "command"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->parseCommand(Lcom/logitech/harmonylink/harmony/Commands;Lcom/logitech/harmonylink/harmony/Device;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0, p3}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->skipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 165
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private parseCommands(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;Lcom/logitech/harmonylink/harmony/Commands;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "harmonyActivity"
    .parameter "commands"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 86
    .local v0, depth:I
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 87
    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 88
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, name:Ljava/lang/String;
    const-string v2, "command"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->parseCommand(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;Lcom/logitech/harmonylink/harmony/Commands;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-direct {p0, p3}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->skipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 95
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private parseDevice(Lcom/logitech/harmonylink/harmony/Devices;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "devices"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 117
    new-instance v2, Lcom/logitech/harmonylink/harmony/Device;

    invoke-direct {v2}, Lcom/logitech/harmonylink/harmony/Device;-><init>()V

    .line 118
    .local v2, device:Lcom/logitech/harmonylink/harmony/Device;
    new-instance v0, Lcom/logitech/harmonylink/harmony/Commands;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/Commands;-><init>()V

    .line 120
    .local v0, commands:Lcom/logitech/harmonylink/harmony/Commands;
    const-string v6, "deviceType"

    invoke-interface {p2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, deviceType:Ljava/lang/String;
    const-string v6, "label"

    invoke-interface {p2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, label:Ljava/lang/String;
    const-string v6, "id"

    invoke-interface {p2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/logitech/harmonylink/harmony/Device;->setId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/Device;->setDeviceType(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v4}, Lcom/logitech/harmonylink/harmony/Device;->setLabel(Ljava/lang/String;)V

    .line 128
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 129
    .local v1, depth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-eq v6, v1, :cond_3

    .line 130
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 131
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, name:Ljava/lang/String;
    const-string v6, "commands"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    invoke-direct {p0, v0, v2, p2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->parseCommands(Lcom/logitech/harmonylink/harmony/Commands;Lcom/logitech/harmonylink/harmony/Device;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-direct {p0, p2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->skipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 138
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    .line 139
    const-string v6, "TV"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 140
    const-string v4, "TV"

    .line 148
    :cond_4
    :goto_1
    invoke-virtual {v2, v4}, Lcom/logitech/harmonylink/harmony/Device;->setLabel(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, v0}, Lcom/logitech/harmonylink/harmony/Device;->setCommands(Lcom/logitech/harmonylink/harmony/Commands;)V

    .line 150
    invoke-virtual {p1, v2}, Lcom/logitech/harmonylink/harmony/Devices;->add(Ljava/lang/Object;)Z

    .line 151
    return-void

    .line 141
    :cond_5
    const-string v6, "STB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 142
    const-string v4, "Set-top box"

    goto :goto_1

    .line 143
    :cond_6
    const-string v6, "AVR"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 144
    const-string v4, "Receiver"

    goto :goto_1

    .line 146
    :cond_7
    const-string v4, "Other"

    goto :goto_1
.end method

.method private parseDevices(Lcom/logitech/harmonylink/harmony/Devices;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "devices"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 107
    .local v1, parserDepth:I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 108
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, name:Ljava/lang/String;
    const-string v2, "device"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->parseDevice(Lcom/logitech/harmonylink/harmony/Devices;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0, p2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->skipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 114
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private skipTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 210
    .local v0, depth:I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 212
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
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 25
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 26
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 28
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 30
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, name:Ljava/lang/String;
    const-string v4, "dom"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 32
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Unknown Dom format received from server"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 33
    :cond_0
    const/4 v4, 0x0

    const-string v5, "hash"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/logitech/harmonylink/harmony/Dom;->setHash(Ljava/lang/String;)V

    .line 35
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 36
    .local v3, parserDepth:I
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 37
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v4, "activities"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    invoke-direct {p0, p3, v2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->parseActivities(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v4, "devices"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    invoke-direct {p0, p4, v2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->parseDevices(Lcom/logitech/harmonylink/harmony/Devices;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-direct {p0, v2}, Lcom/logitech/harmonylink/common/XmlUserConfigParser;->skipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 46
    :cond_4
    return-void
.end method
