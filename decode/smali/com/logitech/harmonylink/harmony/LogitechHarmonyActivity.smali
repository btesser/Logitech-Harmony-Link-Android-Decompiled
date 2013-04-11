.class public Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
.super Ljava/lang/Object;
.source "LogitechHarmonyActivity.java"


# static fields
.field public static final CUSTOM:Ljava/lang/String; = "VirtualGeneric"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final FULL_SETUP:Ljava/lang/String; = "Full"

.field public static final GOOGLE_TV:Ljava/lang/String; = "WatchGTV"

.field public static final LISTEN_TO_MUSIC:Ljava/lang/String; = "VirtualCdMulti"

.field public static final LOG_TAG:Ljava/lang/String; = null

.field public static final PLAY_GAME:Ljava/lang/String; = "VirtualGameConsole"

.field public static final WATCH_GOOGLE_TV:Ljava/lang/String; = "WatchGoogleTVLogitech"

.field public static final WATCH_GTV:Ljava/lang/String; = "WatchGTV"

.field public static final WATCH_MOVIE:Ljava/lang/String; = "VirtualDvd"

.field public static final WATCH_TV:Ljava/lang/String; = "VirtualTelevisionN"


# instance fields
.field private mActivityType:Ljava/lang/String;

.field private mCommands:Lcom/logitech/harmonylink/harmony/Commands;

.field private mFixitValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Fixit;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mIsDefaultActivity:Z

.field private mIsPartiallySetup:Z

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getActivityType(I)Ljava/lang/String;
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 126
    packed-switch p0, :pswitch_data_0

    .line 138
    :pswitch_0
    const-string v0, "VirtualGeneric"

    :goto_0
    return-object v0

    .line 128
    :pswitch_1
    const-string v0, "WatchGoogleTVLogitech"

    goto :goto_0

    .line 130
    :pswitch_2
    const-string v0, "VirtualTelevisionN"

    goto :goto_0

    .line 132
    :pswitch_3
    const-string v0, "VirtualDvd"

    goto :goto_0

    .line 134
    :pswitch_4
    const-string v0, "VirtualCdMulti"

    goto :goto_0

    .line 136
    :pswitch_5
    const-string v0, "VirtualGameConsole"

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x7f0200d4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getIconResourceIDbyActivityType(Ljava/lang/String;)I
    .locals 1
    .parameter "activityType"

    .prologue
    .line 108
    if-eqz p0, :cond_4

    .line 109
    const-string v0, "VirtualTelevisionN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const v0, 0x7f0200dd

    .line 122
    :goto_0
    return v0

    .line 111
    :cond_0
    const-string v0, "VirtualDvd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const v0, 0x7f0200de

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "VirtualCdMulti"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const v0, 0x7f0200d4

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "VirtualGameConsole"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    const v0, 0x7f0200d6

    goto :goto_0

    .line 117
    :cond_3
    const-string v0, "VirtualGeneric"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    const v0, 0x7f0200c7

    goto :goto_0

    .line 122
    :cond_4
    const v0, 0x7f0200dc

    goto :goto_0
.end method


# virtual methods
.method public getActivityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mActivityType:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 3
    .parameter "commandId"

    .prologue
    .line 96
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Commands;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Command;

    .line 97
    .local v0, c:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 101
    .end local v0           #c:Lcom/logitech/harmonylink/harmony/Command;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCommands()Lcom/logitech/harmonylink/harmony/Commands;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    return-object v0
.end method

.method public getFixitValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Fixit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mFixitValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultActivity()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mIsDefaultActivity:Z

    return v0
.end method

.method public isPartiallySetup()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mIsPartiallySetup:Z

    return v0
.end method

.method public setActivityType(Ljava/lang/String;)V
    .locals 0
    .parameter "activityType"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mActivityType:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCommands(Lcom/logitech/harmonylink/harmony/Commands;)V
    .locals 0
    .parameter "commands"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    .line 44
    return-void
.end method

.method public setFixitValues(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Fixit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, fixitValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Fixit;>;"
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mFixitValues:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setIsDefaultActivity(Z)V
    .locals 0
    .parameter "isDefaultActivity"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mIsDefaultActivity:Z

    .line 80
    return-void
.end method

.method public setIsPartiallySetup(Z)V
    .locals 0
    .parameter "isPartiallySetup"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mIsPartiallySetup:Z

    .line 88
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->mName:Ljava/lang/String;

    return-object v0
.end method
