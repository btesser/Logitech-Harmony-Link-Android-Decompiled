.class public Lcom/logitech/harmonylink/model/Shortcuts;
.super Lcom/logitech/harmonylink/model/ContentType;
.source "Shortcuts.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# static fields
.field public static final HOME:Ljava/lang/String; = "GTVHome"

.field public static final KA_DVR:Ljava/lang/String; = "DVR"

.field public static final LIVE_TV:Ljava/lang/String; = "GTVLive"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final RECORDED_TV:Ljava/lang/String; = "RecordedTV"

.field public static final SEARCH:Ljava/lang/String; = "GTVSearch"

.field public static final TIVO:Ljava/lang/String; = "TiVo"

.field public static final TV_GUIDE:Ljava/lang/String; = "Guide"


# instance fields
.field private activityCommands:Lcom/logitech/harmonylink/harmony/Commands;

.field private mIsFromAddMore:Z

.field private mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

.field private mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/logitech/harmonylink/model/Shortcuts;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/model/Shortcuts;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/model/ContentType;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public static getIconForButton(Ljava/lang/String;)I
    .locals 2
    .parameter "buttonId"

    .prologue
    const v1, 0x7f0200a5

    .line 146
    const-string v0, "GTVLive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const v0, 0x7f020164

    .line 161
    :goto_0
    return v0

    .line 148
    :cond_0
    const-string v0, "Guide"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const v0, 0x7f0200be

    goto :goto_0

    .line 150
    :cond_1
    const-string v0, "GTVHome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const v0, 0x7f0200c2

    goto :goto_0

    .line 152
    :cond_2
    const-string v0, "GTVSearch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    const v0, 0x7f02012f

    goto :goto_0

    .line 154
    :cond_3
    const-string v0, "TiVo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    const v0, 0x7f02015c

    goto :goto_0

    .line 156
    :cond_4
    const-string v0, "RecordedTV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 157
    goto :goto_0

    .line 158
    :cond_5
    const-string v0, "DVR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShortLabelForButton(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "buttonId"
    .parameter "context"

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "GTVLive"

    .line 188
    :goto_0
    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const-string v0, "Guide"

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const-string v0, "GTVHome"

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    const-string v0, "GTVSearch"

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    const-string v0, "TiVo"

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    const-string v0, "RecordedTV"

    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    const-string v0, "DVR"

    goto :goto_0

    .line 188
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 74
    .local v0, harmonyActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    iget-object v1, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/model/Shortcuts;->setShortcutContents(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)V

    .line 76
    return-void
.end method

.method public retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;Z)V
    .locals 1
    .parameter "connectClient"
    .parameter "oneTouchManager"
    .parameter "isFromAddMore"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/logitech/harmonylink/model/Shortcuts;->retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V

    .line 54
    return-void
.end method

.method public retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V
    .locals 2
    .parameter "connectClient"
    .parameter "oneTouchManager"
    .parameter "isFromAddMore"
    .parameter "bodyContent"

    .prologue
    .line 61
    iput-object p2, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    .line 62
    iput-boolean p3, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mIsFromAddMore:Z

    .line 63
    iget-object v1, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 65
    .local v0, harmonyActivities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/model/Shortcuts;->setShortcutContents(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setShortcutContents(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)V
    .locals 9
    .parameter "mActivities"

    .prologue
    const/4 v8, 0x1

    .line 80
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->contents:Ljava/util/ArrayList;

    .line 81
    iget-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->getDefaultActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v2

    .line 84
    .local v2, defaultGTVActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-eqz v2, :cond_3

    .line 86
    new-instance v6, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    invoke-direct {v6, v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;-><init>(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    iput-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    .line 88
    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getCommands()Lcom/logitech/harmonylink/harmony/Commands;

    move-result-object v6

    iput-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->activityCommands:Lcom/logitech/harmonylink/harmony/Commands;

    .line 89
    iget-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->activityCommands:Lcom/logitech/harmonylink/harmony/Commands;

    if-eqz v6, :cond_3

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    const/4 v1, 0x0

    .line 93
    .local v1, buttonLabel:Ljava/lang/String;
    iget-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->activityCommands:Lcom/logitech/harmonylink/harmony/Commands;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Commands;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/harmony/Command;

    .line 94
    .local v4, newCmd:Lcom/logitech/harmonylink/harmony/Command;
    sget-object v6, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    sget-object v6, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    check-cast v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 99
    .restart local v0       #buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getID()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v6, "GTVLive"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Guide"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "GTVHome"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "GTVSearch"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "TiVo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "RecordedTV"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "DVR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    :cond_1
    new-instance v5, Lcom/logitech/harmonylink/model/OneTouchContent;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "shortcuts"

    invoke-direct {v5, v6, v7}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v5, oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-static {v1}, Lcom/logitech/harmonylink/model/Shortcuts;->getIconForButton(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;->setResourceId(I)V

    .line 114
    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;->setLauncherParameter(Ljava/lang/String;)V

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/logitech/harmonylink/model/Shortcuts;->getIconForButton(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;->setHash(Ljava/lang/String;)V

    .line 118
    iget-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 123
    .end local v4           #newCmd:Lcom/logitech/harmonylink/harmony/Command;
    .end local v5           #oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_2
    iget-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->contents:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 124
    iget-boolean v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mIsFromAddMore:Z

    if-eqz v6, :cond_4

    .line 125
    iget-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    iget-object v7, p0, Lcom/logitech/harmonylink/model/Shortcuts;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    .line 143
    .end local v0           #buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    .end local v1           #buttonLabel:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    return-void

    .line 127
    .restart local v0       #buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    .restart local v1       #buttonLabel:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/model/Shortcuts;->setPopulated(Z)V

    .line 128
    iget-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V

    goto :goto_1

    .line 131
    :cond_5
    iget-boolean v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mIsFromAddMore:Z

    if-eqz v6, :cond_6

    .line 132
    iget-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyLiveFolderObservers(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 134
    :cond_6
    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/model/Shortcuts;->setPopulated(Z)V

    .line 135
    iget-object v6, p0, Lcom/logitech/harmonylink/model/Shortcuts;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mergeItems()V

    goto :goto_1
.end method
