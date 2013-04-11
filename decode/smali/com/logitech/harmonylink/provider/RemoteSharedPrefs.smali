.class public Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
.super Ljava/lang/Object;
.source "RemoteSharedPrefs.java"


# static fields
.field public static final ALREADY_PAIRED:Ljava/lang/String; = "alredyPairedRevueBoxes"

.field public static final FIRSTTIME_ACT:Ljava/lang/String; = "firstTimeActivityStart"

.field public static final GESTURE_FINISHED:Ljava/lang/String; = "gestureTutFinished"

.field public static final HELP_SHADE_DISPLAYED:Ljava/lang/String; = "helpShadeDisplayed"

.field public static final HELP_SHADE_FINISHED:Ljava/lang/String; = "helpShadeFinished"

.field public static final HELP_SHADE_VISIBLE:Ljava/lang/String; = "visibleHelpShade"

.field public static final IP:Ljava/lang/String; = "ip"

.field public static final ISGRIDVIEW_VISIBLE:Ljava/lang/String; = "isGridViewVisible"

.field public static final ITEM:Ljava/lang/String; = "item"

.field public static KEY_NOT_EXIST:J = 0x0L

.field public static final NOT_SETUP:Ljava/lang/String; = "notsetupwarning"

.field public static final OLIVE_EMAIL:Ljava/lang/String; = "connectedOliveEmail"

.field public static final OLIVE_HELP_SHADE_FINISHED:Ljava/lang/String; = "oliveHelpShadeFinished"

.field private static final PREFS_NAME:Ljava/lang/String; = "harmonypreferences"

.field public static final SCREEN:Ljava/lang/String; = "screen"

.field public static final TIME_APP_INSTALL:Ljava/lang/String; = "timewhenappinstalled"

.field public static final TIME_LAST_USED:Ljava/lang/String; = "lasttimeuseropentheapp"

.field public static final VIEW:Ljava/lang/String; = "view"

.field public static final X_SCALE:Ljava/lang/String; = "xscale"

.field public static final Y_SCALE:Ljava/lang/String; = "yscale"

.field public static sRemoteSharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

.field private static sSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->KEY_NOT_EXIST:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    .locals 2
    .parameter "c"

    .prologue
    .line 41
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sRemoteSharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    invoke-direct {v0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sRemoteSharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    .line 44
    :cond_0
    const-string v0, "harmonypreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    .line 45
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sRemoteSharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    return-object v0
.end method


# virtual methods
.method public clearPrefs()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    :cond_0
    return-void
.end method

.method public getBooleanWithName(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "name"
    .parameter "defaultvalue"

    .prologue
    .line 73
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIntWithName(Ljava/lang/String;I)I
    .locals 1
    .parameter "name"
    .parameter "defaultvalue"

    .prologue
    .line 69
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    .line 124
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    sget-wide v1, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->KEY_NOT_EXIST:J

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "defaultvalue"

    .prologue
    .line 65
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPreviouslyPairedBox(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "revue_uuid"

    .prologue
    .line 103
    invoke-static {p1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 104
    .local v2, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "alredyPairedRevueBoxes"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, alreadyPaired:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v3, stk:Ljava/util/StringTokenizer;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    if-lez v4, :cond_1

    .line 109
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, currentRevue_uuid:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const/4 v4, 0x1

    .line 117
    .end local v1           #currentRevue_uuid:Ljava/lang/String;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 57
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 53
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 61
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 49
    sget-object v0, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method public removeValueWitkKey(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 83
    sget-object v1, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method
