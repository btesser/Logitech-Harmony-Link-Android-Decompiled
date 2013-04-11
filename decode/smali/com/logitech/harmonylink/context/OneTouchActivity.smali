.class public Lcom/logitech/harmonylink/context/OneTouchActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "OneTouchActivity.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;,
        Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;
    }
.end annotation


# static fields
.field private static final INTERNAL_SERVER_ERROR:Ljava/lang/String; = "500"

.field public static final NOTIFY_GRID:Ljava/lang/String; = "notify gridview"

.field public static final REMOVE_ICON_PATH:Ljava/lang/String; = "remove icon path"

.field public static final SOURCEONETOUCH:Ljava/lang/String; = "fromonetouch"

.field public static mScreenWidth:I

.field public static mTrashView:Landroid/widget/ImageView;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field conn:Landroid/content/ServiceConnection;

.field private mEditNDoneButton:Landroid/widget/Button;

.field private mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

.field private mOneTouchContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation
.end field

.field private mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

.field private mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

.field private mOneTouchReciever:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;

.field private mRevueUuid:Ljava/lang/String;

.field private mServiceInterface:Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;

.field private mSpinny:Landroid/widget/ProgressBar;

.field private mTitleBar:Landroid/widget/TextView;

.field private numberOfOneTouchItems:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 77
    const-class v0, Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->LOG_TAG:Ljava/lang/String;

    .line 362
    new-instance v0, Lcom/logitech/harmonylink/context/OneTouchActivity$4;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/OneTouchActivity$4;-><init>(Lcom/logitech/harmonylink/context/OneTouchActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->conn:Landroid/content/ServiceConnection;

    .line 625
    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/OneTouchActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/context/OneTouchActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/context/OneTouchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mServiceInterface:Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;

    return-object v0
.end method

.method static synthetic access$702(Lcom/logitech/harmonylink/context/OneTouchActivity;Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;)Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mServiceInterface:Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;

    return-object p1
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/harmony/OneTouchManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/context/OneTouchActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->deleteOneTouchContent(I)V

    return-void
.end method

.method private deleteOneTouchContent(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 204
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, alertbox:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 207
    const-string v1, "OK"

    new-instance v2, Lcom/logitech/harmonylink/context/OneTouchActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/logitech/harmonylink/context/OneTouchActivity$3;-><init>(Lcom/logitech/harmonylink/context/OneTouchActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    return-void
.end method

.method private deleteUnwantedIDs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, aLauncherParamsFromGTVDevice:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, aLauncherParamsFromDatabase:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 448
    .local v0, element:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mRevueUuid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "activities"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "shortcuts"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 451
    .local v2, whereArgs:[Ljava/lang/String;
    const-string v3, "revue_uuid = ? AND (category = ? OR category = ?) AND launcher_parameter = ?"

    invoke-static {p0, v3, v2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    .line 460
    .end local v0           #element:Ljava/lang/String;
    .end local v2           #whereArgs:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private fetchNewLauncherParams()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    sget-object v6, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v1

    .line 515
    .local v1, activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v5, launcherParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 519
    .local v0, a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    .end local v0           #a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_0
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->getDefaultActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getCommands()Lcom/logitech/harmonylink/harmony/Commands;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Commands;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/harmony/Command;

    .line 524
    .local v3, cmd:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, buttonLabel:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GTVLive"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Guide"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "GTVHome"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "GTVSearch"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "TiVo"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "RecordedTV"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "DVR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 532
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 536
    .end local v2           #buttonLabel:Ljava/lang/String;
    .end local v3           #cmd:Lcom/logitech/harmonylink/harmony/Command;
    :cond_3
    return-object v5
.end method

.method private getContents()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mSpinny:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    const-string v2, "ConnectClient"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 235
    const-string v2, "serverIdentity"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, serverIdentity:Ljava/lang/String;
    sget-object v2, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setHarmonyLinkID(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->retrieveContents(Ljava/lang/String;)V

    .line 240
    .end local v1           #serverIdentity:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private insertItemsInDB(Ljava/lang/String;Ljava/lang/String;ILcom/logitech/harmonylink/model/OneTouchContent;)V
    .locals 4
    .parameter "aCategory"
    .parameter "aLauncherParam"
    .parameter "aResourceId"
    .parameter "aContent"

    .prologue
    .line 499
    invoke-virtual {p4, p3}, Lcom/logitech/harmonylink/model/OneTouchContent;->setResourceId(I)V

    .line 500
    invoke-virtual {p4, p2}, Lcom/logitech/harmonylink/model/OneTouchContent;->setLauncherParameter(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->setHash(Ljava/lang/String;)V

    .line 502
    sget-object v0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    sget-object v1, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->numberOfOneTouchItems:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->numberOfOneTouchItems:I

    invoke-static {v0, v1, p4, v2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->insert(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/harmonylink/model/OneTouchContent;I)Z

    .line 505
    return-void
.end method

.method private retrieveContents(Ljava/lang/String;)V
    .locals 3
    .parameter "uuId"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->addOneTouchContentObserver(Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;)V

    .line 245
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    const-string v2, "Revue 2.0"

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveOneTouchContents(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private storePairedFlag()V
    .locals 4

    .prologue
    .line 252
    sget-object v2, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-static {v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v1

    .line 253
    .local v1, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "alredyPairedRevueBoxes"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, alreadyPaired:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    sget-object v3, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->isPreviouslyPairedBox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :goto_0
    const-string v2, "alredyPairedRevueBoxes"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void

    .line 259
    :cond_1
    sget-object v2, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateDatabase(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, aLauncherParamsFromDatabase:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, aLauncherParamsFromGTVDevice:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v7, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/logitech/harmonylink/dao/OneTouchDao;->getTotalOneTouchItems(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->numberOfOneTouchItems:I

    .line 474
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 475
    .local v2, element:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 478
    :try_start_0
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 479
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "String is numeric"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v7

    invoke-virtual {v7}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->find(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v0

    .line 481
    .local v0, activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, activityName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getIconResourceIDbyActivityType(Ljava/lang/String;)I

    move-result v6

    .line 483
    .local v6, resourceId:I
    new-instance v5, Lcom/logitech/harmonylink/model/OneTouchContent;

    const-string v7, "activities"

    invoke-direct {v5, v1, v7}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .local v5, oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    const-string v7, "activities"

    invoke-direct {p0, v7, v2, v6, v5}, Lcom/logitech/harmonylink/context/OneTouchActivity;->insertItemsInDB(Ljava/lang/String;Ljava/lang/String;ILcom/logitech/harmonylink/model/OneTouchContent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    .end local v0           #activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v1           #activityName:Ljava/lang/String;
    .end local v5           #oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v6           #resourceId:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 487
    .local v3, ex:Ljava/lang/NumberFormatException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "String has no numeric"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    invoke-static {v2}, Lcom/logitech/harmonylink/model/Shortcuts;->getIconForButton(Ljava/lang/String;)I

    move-result v6

    .line 489
    .restart local v6       #resourceId:I
    new-instance v5, Lcom/logitech/harmonylink/model/OneTouchContent;

    const-string v7, "shortcuts"

    invoke-direct {v5, v2, v7}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .restart local v5       #oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    const-string v7, "shortcuts"

    invoke-direct {p0, v7, v2, v6, v5}, Lcom/logitech/harmonylink/context/OneTouchActivity;->insertItemsInDB(Ljava/lang/String;Ljava/lang/String;ILcom/logitech/harmonylink/model/OneTouchContent;)V

    goto :goto_0

    .line 495
    .end local v2           #element:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    .end local v5           #oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v6           #resourceId:I
    :cond_1
    return-void
.end method


# virtual methods
.method public isContentToHaveIds()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public onContentAvailable(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, oneTouchContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->storePairedFlag()V

    .line 269
    iput-object p1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    .line 271
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    :cond_0
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 279
    .local v0, sharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    sget-object v1, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->isPreviouslyPairedBox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->enableVisibility()V

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyGridAdapter(Ljava/util/ArrayList;)V

    .line 298
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->destroy()V

    .line 299
    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->enableVisibility()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->requestWindowFeature(I)Z

    .line 108
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->canActivityResume()V

    .line 110
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v0, dsp:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/logitech/harmonylink/context/OneTouchActivity;->mScreenWidth:I

    .line 115
    const v1, 0x7f030045

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->setContentView(I)V

    .line 117
    const v1, 0x7f0700cc

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    .line 118
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mSpinny:Landroid/widget/ProgressBar;

    .line 119
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mSpinny:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sput-object v1, Lcom/logitech/harmonylink/context/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;

    .line 122
    sget-object v1, Lcom/logitech/harmonylink/context/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    const v1, 0x7f0700d0

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    .line 125
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    sget-object v2, Lcom/logitech/harmonylink/context/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setTrashItem(Landroid/widget/ImageView;)V

    .line 126
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    sget v2, Lcom/logitech/harmonylink/context/OneTouchActivity;->mScreenWidth:I

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setWidth(I)V

    .line 128
    new-instance v1, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-direct {v1, v2, p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;-><init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Lcom/logitech/harmonylink/ui/common/BaseActivity;)V

    iput-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    .line 129
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mSpinny:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v3}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->setButtons(Landroid/widget/Button;Landroid/widget/ProgressBar;)V

    .line 131
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-static {v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getOneTouchManager(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/OneTouchManager;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    .line 133
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->setContentTypes(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/logitech/harmonylink/harmony/Dom;->addObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 138
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    new-instance v2, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;-><init>(Lcom/logitech/harmonylink/context/OneTouchActivity;Lcom/logitech/harmonylink/context/OneTouchActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1, v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVerticalScrollBarEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    new-instance v2, Lcom/logitech/harmonylink/context/OneTouchActivity$1;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/OneTouchActivity$1;-><init>(Lcom/logitech/harmonylink/context/OneTouchActivity;)V

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 165
    const v1, 0x7f0700cd

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;

    .line 167
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/logitech/harmonylink/context/OneTouchActivity$2;

    invoke-direct {v2, p0}, Lcom/logitech/harmonylink/context/OneTouchActivity$2;-><init>(Lcom/logitech/harmonylink/context/OneTouchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getContents()V

    .line 200
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->stopDiscoveryProbe()V

    .line 201
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->destroy()V

    .line 381
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->removeOneTouchContentObserver(Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;)V

    .line 382
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 384
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    .line 387
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 388
    return-void
.end method

.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 402
    .local v1, launcherParamsFromGTVDevice:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 408
    .local v0, launcherParamsFromDB:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 409
    .local v2, sharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    sget-object v3, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->isPreviouslyPairedBox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    sget-object v4, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    sget-object v5, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v6

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveOneTouchContents(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V

    .line 432
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->fetchNewLauncherParams()Ljava/util/ArrayList;

    move-result-object v1

    .line 420
    sget-object v3, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/logitech/harmonylink/dao/OneTouchDao;->fetchLauncherParamsFromDb(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 423
    invoke-direct {p0, v1, v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->deleteUnwantedIDs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 424
    invoke-direct {p0, v0, v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->updateDatabase(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 428
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mRevueUuid:Ljava/lang/String;

    const-string v6, "Revue 2.0"

    invoke-virtual {v3, v4, v5, v6}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    .line 431
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    iget-object v4, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyGridAdapter(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 304
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    move v0, v2

    .line 315
    :goto_0
    return v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->finish()V

    move v0, v2

    .line 313
    goto :goto_0

    .line 315
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchReciever:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchReciever:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mServiceInterface:Lcom/logitech/harmonylink/service/ContentCompareService$IGetAndCompareItems;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 328
    :cond_1
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onPause()V

    .line 329
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 333
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 335
    sget-object v2, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mRevueUuid:Ljava/lang/String;

    .line 337
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v1

    .line 338
    .local v1, sharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    sget-object v2, Lcom/logitech/harmonylink/context/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->isPreviouslyPairedBox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "notify gridview"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v2, "remove icon path"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchReciever:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;

    if-nez v2, :cond_0

    .line 349
    new-instance v2, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;-><init>(Lcom/logitech/harmonylink/context/OneTouchActivity;Lcom/logitech/harmonylink/context/OneTouchActivity$1;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchReciever:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchReciever:Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/logitech/harmonylink/service/ContentCompareService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity;->conn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/logitech/harmonylink/context/OneTouchActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 360
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method
