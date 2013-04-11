.class public Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;
.super Ljava/lang/Object;
.source "CommonNormalizedCommands.java"


# static fields
.field public static final A:Ljava/lang/String; = "A"

.field public static final B:Ljava/lang/String; = "B"

.field public static final C:Ljava/lang/String; = "C"

.field public static final CANCEL:Ljava/lang/String; = "Cancel"

.field public static final CHANNEL_DOWN:Ljava/lang/String; = "ChannelDown"

.field public static final CHANNEL_UP:Ljava/lang/String; = "ChannelUp"

.field public static final D:Ljava/lang/String; = "D"

.field public static final DIRECTION_DOWN:Ljava/lang/String; = "DirectionDown"

.field public static final DIRECTION_LEFT:Ljava/lang/String; = "DirectionLeft"

.field public static final DIRECTION_RIGHT:Ljava/lang/String; = "DirectionRight"

.field public static final DIRECTION_UP:Ljava/lang/String; = "DirectionUp"

.field public static final DVR:Ljava/lang/String; = "DVR"

.field public static final ESCAPE:Ljava/lang/String; = "Esc"

.field public static final FAST_FORWARD:Ljava/lang/String; = "FastForward"

.field public static final GUIDE:Ljava/lang/String; = "Guide"

.field public static final INFO:Ljava/lang/String; = "Info"

.field public static final INPUT_AVR:Ljava/lang/String; = "InputAVR"

.field public static final INPUT_STB:Ljava/lang/String; = "InputSTB"

.field public static final INPUT_TV:Ljava/lang/String; = "InputTV"

.field public static final LIVE_TV:Ljava/lang/String; = "LiveTV"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MENU:Ljava/lang/String; = "Menu"

.field public static final NUMBER_0:Ljava/lang/String; = "Number0"

.field public static final NUMBER_1:Ljava/lang/String; = "Number1"

.field public static final NUMBER_2:Ljava/lang/String; = "Number2"

.field public static final NUMBER_3:Ljava/lang/String; = "Number3"

.field public static final NUMBER_4:Ljava/lang/String; = "Number4"

.field public static final NUMBER_5:Ljava/lang/String; = "Number5"

.field public static final NUMBER_6:Ljava/lang/String; = "Number6"

.field public static final NUMBER_7:Ljava/lang/String; = "Number7"

.field public static final NUMBER_8:Ljava/lang/String; = "Number8"

.field public static final NUMBER_9:Ljava/lang/String; = "Number9"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final PAUSE:Ljava/lang/String; = "Pause"

.field public static final PLAY:Ljava/lang/String; = "Play"

.field public static final POWER_AVR:Ljava/lang/String; = "PowerAVR"

.field public static final POWER_STB:Ljava/lang/String; = "PowerSTB"

.field public static final POWER_TV:Ljava/lang/String; = "PowerTV"

.field public static final RECORD:Ljava/lang/String; = "Record"

.field public static final REWIND:Ljava/lang/String; = "Rewind"

.field public static final SETTINGS:Ljava/lang/String; = "Settings"

.field public static final SKIP_BACK:Ljava/lang/String; = "SkipBack"

.field public static final SKIP_FORWARD:Ljava/lang/String; = "SkipForward"

.field public static final STOP:Ljava/lang/String; = "Stop"

.field public static final VOLUME_DOWN:Ljava/lang/String; = "VolumeDown"

.field public static final VOLUME_MUTE:Ljava/lang/String; = "VolumeMute"

.field public static final VOLUME_UP:Ljava/lang/String; = "VolumeUp"

.field private static sChannelGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sColorNormalizedCommandNames:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNumberGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPowerNormalizedCommandNames:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sVolumeGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->LOG_TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$1;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$1;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sVolumeGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    .line 84
    new-instance v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$2;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$2;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sChannelGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    .line 92
    new-instance v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$3;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$3;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sPowerNormalizedCommandNames:Ljava/util/LinkedHashMap;

    .line 98
    new-instance v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$4;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$4;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sColorNormalizedCommandNames:Ljava/util/LinkedHashMap;

    .line 108
    new-instance v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$5;

    invoke-direct {v0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$5;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sNumberGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static getChannelGroupedNormalizedCommandNames()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sChannelGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getChannelGroupedNormalizedCommandNamesMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sChannelGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static getHardcodedCommandNameKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "normalizedCommandName"

    .prologue
    const/4 v1, 0x0

    .line 262
    if-nez p0, :cond_0

    move-object v0, v1

    .line 277
    .end local p0
    :goto_0
    return-object v0

    .line 265
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->isPower(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sPowerNormalizedCommandNames:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 267
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->isNumberGroupMember(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sNumberGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 269
    .restart local p0
    :cond_2
    invoke-static {p0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->isChannelGroupMember(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sChannelGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 271
    .restart local p0
    :cond_3
    invoke-static {p0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->isVolumeGroupMember(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sVolumeGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 273
    .restart local p0
    :cond_4
    invoke-static {p0}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->isColorGroupMember(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sColorNormalizedCommandNames:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_5
    move-object v0, v1

    .line 277
    goto :goto_0
.end method

.method public static getNormalizedCommandFromOpenApiString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x"

    .prologue
    .line 170
    const-string v0, "VOLUME_UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "VolumeUp"

    .line 259
    :goto_0
    return-object v0

    .line 172
    :cond_0
    const-string v0, "VOLUME_DOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "VolumeDown"

    goto :goto_0

    .line 174
    :cond_1
    const-string v0, "VOLUME_MUTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string v0, "VolumeMute"

    goto :goto_0

    .line 176
    :cond_2
    const-string v0, "PLAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    const-string v0, "Play"

    goto :goto_0

    .line 178
    :cond_3
    const-string v0, "PAUSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    const-string v0, "Pause"

    goto :goto_0

    .line 180
    :cond_4
    const-string v0, "STOP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    const-string v0, "Stop"

    goto :goto_0

    .line 182
    :cond_5
    const-string v0, "SKIP_FORWARD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 183
    const-string v0, "SkipForward"

    goto :goto_0

    .line 184
    :cond_6
    const-string v0, "SKIP_BACK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    const-string v0, "SkipBack"

    goto :goto_0

    .line 186
    :cond_7
    const-string v0, "FAST_FORWARD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    const-string v0, "FastForward"

    goto :goto_0

    .line 188
    :cond_8
    const-string v0, "REWIND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    const-string v0, "Rewind"

    goto :goto_0

    .line 190
    :cond_9
    const-string v0, "CHANNEL_UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    const-string v0, "ChannelUp"

    goto :goto_0

    .line 192
    :cond_a
    const-string v0, "CHANNEL_DOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 193
    const-string v0, "ChannelDown"

    goto :goto_0

    .line 194
    :cond_b
    const-string v0, "ESC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 195
    const-string v0, "Esc"

    goto/16 :goto_0

    .line 196
    :cond_c
    const-string v0, "NUM_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 197
    const-string v0, "Number0"

    goto/16 :goto_0

    .line 198
    :cond_d
    const-string v0, "NUM_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 199
    const-string v0, "Number1"

    goto/16 :goto_0

    .line 200
    :cond_e
    const-string v0, "NUM_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 201
    const-string v0, "Number2"

    goto/16 :goto_0

    .line 202
    :cond_f
    const-string v0, "NUM_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 203
    const-string v0, "Number3"

    goto/16 :goto_0

    .line 204
    :cond_10
    const-string v0, "NUM_4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 205
    const-string v0, "Number4"

    goto/16 :goto_0

    .line 206
    :cond_11
    const-string v0, "NUM_5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 207
    const-string v0, "Number5"

    goto/16 :goto_0

    .line 208
    :cond_12
    const-string v0, "NUM_6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 209
    const-string v0, "Number6"

    goto/16 :goto_0

    .line 210
    :cond_13
    const-string v0, "NUM_7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 211
    const-string v0, "Number7"

    goto/16 :goto_0

    .line 212
    :cond_14
    const-string v0, "NUM_8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 213
    const-string v0, "Number8"

    goto/16 :goto_0

    .line 214
    :cond_15
    const-string v0, "NUM_9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 215
    const-string v0, "Number9"

    goto/16 :goto_0

    .line 216
    :cond_16
    const-string v0, "MENU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 217
    const-string v0, "Menu"

    goto/16 :goto_0

    .line 218
    :cond_17
    const-string v0, "INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 219
    const-string v0, "Info"

    goto/16 :goto_0

    .line 220
    :cond_18
    const-string v0, "A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 221
    const-string v0, "A"

    goto/16 :goto_0

    .line 222
    :cond_19
    const-string v0, "B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 223
    const-string v0, "B"

    goto/16 :goto_0

    .line 224
    :cond_1a
    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 225
    const-string v0, "C"

    goto/16 :goto_0

    .line 226
    :cond_1b
    const-string v0, "D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 227
    const-string v0, "D"

    goto/16 :goto_0

    .line 228
    :cond_1c
    const-string v0, "GUIDE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 229
    const-string v0, "Guide"

    goto/16 :goto_0

    .line 230
    :cond_1d
    const-string v0, "DVR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 231
    const-string v0, "DVR"

    goto/16 :goto_0

    .line 232
    :cond_1e
    const-string v0, "LIVETV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 233
    const-string v0, "LiveTV"

    goto/16 :goto_0

    .line 234
    :cond_1f
    const-string v0, "SELECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 235
    const-string v0, "OK"

    goto/16 :goto_0

    .line 236
    :cond_20
    const-string v0, "UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 237
    const-string v0, "DirectionUp"

    goto/16 :goto_0

    .line 238
    :cond_21
    const-string v0, "DOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 239
    const-string v0, "DirectionDown"

    goto/16 :goto_0

    .line 240
    :cond_22
    const-string v0, "LEFT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 241
    const-string v0, "DirectionLeft"

    goto/16 :goto_0

    .line 242
    :cond_23
    const-string v0, "RIGHT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 243
    const-string v0, "DirectionRight"

    goto/16 :goto_0

    .line 244
    :cond_24
    const-string v0, "RECORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 245
    const-string v0, "Record"

    goto/16 :goto_0

    .line 246
    :cond_25
    const-string v0, "POWER_TV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 247
    const-string v0, "PowerTV"

    goto/16 :goto_0

    .line 248
    :cond_26
    const-string v0, "POWER_AVR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 249
    const-string v0, "PowerAVR"

    goto/16 :goto_0

    .line 250
    :cond_27
    const-string v0, "POWER_STB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 251
    const-string v0, "PowerSTB"

    goto/16 :goto_0

    .line 252
    :cond_28
    const-string v0, "INPUT_TV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 253
    const-string v0, "InputTV"

    goto/16 :goto_0

    .line 254
    :cond_29
    const-string v0, "INPUT_AVR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 255
    const-string v0, "InputAVR"

    goto/16 :goto_0

    .line 256
    :cond_2a
    const-string v0, "INPUT_STB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 257
    const-string v0, "InputSTB"

    goto/16 :goto_0

    .line 259
    :cond_2b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getNumberGroupedNormalizedCommandNames()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sNumberGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getNumberGroupedNormalizedCommandNamesMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sNumberGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static getVolumeGroupedNormalizedCommandNames()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sVolumeGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getVolumeGroupedNormalizedCommandNamesMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sVolumeGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static isChannelGroupMember(Ljava/lang/String;)Z
    .locals 1
    .parameter "normalizedCommandName"

    .prologue
    .line 154
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sChannelGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isColorGroupMember(Ljava/lang/String;)Z
    .locals 1
    .parameter "normalizedCommandName"

    .prologue
    .line 161
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sColorNormalizedCommandNames:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNumberGroupMember(Ljava/lang/String;)Z
    .locals 1
    .parameter "normalizedCommandName"

    .prologue
    .line 158
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sNumberGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPower(Ljava/lang/String;)Z
    .locals 1
    .parameter "normalizedCommandName"

    .prologue
    .line 165
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sPowerNormalizedCommandNames:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVolumeGroupMember(Ljava/lang/String;)Z
    .locals 1
    .parameter "normalizedCommandName"

    .prologue
    .line 150
    sget-object v0, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;->sVolumeGroupedNormalizedCommandNamesMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
