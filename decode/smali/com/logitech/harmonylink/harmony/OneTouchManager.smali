.class public Lcom/logitech/harmonylink/harmony/OneTouchManager;
.super Ljava/lang/Object;
.source "OneTouchManager.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;


# instance fields
.field private mContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mHarmonyLinkUID:Ljava/lang/String;

.field private mLiveFolderContentObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOneTouchContentObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter "dom"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 62
    return-void
.end method

.method public static getOneTouchManager(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/OneTouchManager;
    .locals 1
    .parameter "dom"

    .prologue
    .line 55
    sget-object v0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->sOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;-><init>(Lcom/logitech/harmonylink/harmony/Dom;)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->sOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    .line 58
    :cond_0
    sget-object v0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->sOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    return-object v0
.end method

.method private isObseleteWatchTVActivity(Ljava/lang/String;)Z
    .locals 4
    .parameter "defaultWatchTVActivityId"

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 399
    .local v0, currentHarmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirtualTelevisionN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WatchGTV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    :cond_1
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const/4 v2, 0x0

    .line 406
    .end local v0           #currentHarmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private notifyOneTouchObservers(Z)V
    .locals 6
    .parameter "updateRequired"

    .prologue
    .line 191
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;

    .line 195
    .local v2, observer:Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;
    invoke-interface {v2}, Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;->isContentToHaveIds()Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;->onContentAvailable(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 200
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    iget-object v5, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-static {v3, v4, v5}, Lcom/logitech/harmonylink/dao/OneTouchDao;->bulkInsert(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 206
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    iget-object v5, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    .line 218
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 219
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;

    .line 224
    .restart local v2       #observer:Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;
    invoke-interface {v2}, Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;->isContentToHaveIds()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;->onContentAvailable(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 208
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 209
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/logitech/harmonylink/harmony/OneTouchManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Exception while inserting the One Touch items to table."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 228
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    return-void
.end method


# virtual methods
.method public addLiveFolderContentObserver(Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mLiveFolderContentObservers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mLiveFolderContentObservers:Ljava/util/ArrayList;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mLiveFolderContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mLiveFolderContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    return-void
.end method

.method public addOneTouchContentObserver(Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/ContentType;

    .line 156
    .local v0, contentType:Lcom/logitech/harmonylink/model/ContentType;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/ContentType;->destroy()V

    goto :goto_0

    .line 160
    .end local v0           #contentType:Lcom/logitech/harmonylink/model/ContentType;
    :cond_0
    return-void
.end method

.method public getContentTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/ContentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultActivity(Landroid/content/Context;Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .locals 11
    .parameter "context"
    .parameter "harmonyLinkUID"

    .prologue
    const/4 v10, 0x0

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, defaultWatchTVActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContext:Landroid/content/Context;

    .line 339
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    .line 340
    iget-object v8, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v6

    .line 341
    .local v6, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const/4 v2, 0x0

    .line 342
    .local v2, defaultWatchTvActivityId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 343
    .local v7, storeIt:Z
    const-string v8, "defaultWatchTVActivityId"

    invoke-virtual {v6, v8, v10}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, defaultWatchTvActivityIds:Ljava/lang/String;
    const/4 v5, 0x0

    .line 345
    .local v5, nvPairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    if-eqz v3, :cond_0

    .line 347
    invoke-static {v3}, Lcom/logitech/connect/client/transport/NameValuePairs;->obtainValueKeyPairs(Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v5

    .line 348
    iget-object v8, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/logitech/connect/client/transport/NameValuePairs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #defaultWatchTvActivityId:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 350
    .restart local v2       #defaultWatchTvActivityId:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 351
    invoke-direct {p0, v2}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->isObseleteWatchTVActivity(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 352
    const/4 v2, 0x0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v8

    invoke-virtual {v8}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 357
    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v8

    invoke-virtual {v8}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v8

    invoke-virtual {v8}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 358
    .local v0, currentHarmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-nez v2, :cond_3

    .line 359
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "VirtualTelevisionN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WatchGTV"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 361
    :cond_2
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v2

    .line 363
    const/4 v7, 0x1

    .line 367
    :cond_3
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 368
    move-object v1, v0

    .line 374
    .end local v0           #currentHarmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    if-eqz v7, :cond_6

    .line 375
    if-nez v3, :cond_5

    .line 376
    new-instance v5, Lcom/logitech/connect/client/transport/NameValuePairs;

    .end local v5           #nvPairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    invoke-direct {v5}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>()V

    .line 379
    .restart local v5       #nvPairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    :cond_5
    iget-object v8, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 380
    iget-object v8, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    invoke-virtual {v5, v8, v2}, Lcom/logitech/connect/client/transport/NameValuePairs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v8, "defaultWatchTVActivityId"

    invoke-virtual {v5}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_6
    if-eqz v1, :cond_7

    move-object v8, v1

    .line 388
    :goto_0
    return-object v8

    :cond_7
    move-object v8, v10

    goto :goto_0
.end method

.method public getDom()Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method public getOneTouchContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOneTouchContentsSize()I
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, size:I
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 255
    :cond_0
    return v0
.end method

.method public mergeItems()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 173
    const/4 v1, 0x1

    .line 174
    .local v1, hasRetrievedAllContents:Z
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/ContentType;

    .line 175
    .local v0, contentType:Lcom/logitech/harmonylink/model/ContentType;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/ContentType;->isPopulated()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    move v1, v5

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_1

    .line 179
    .end local v0           #contentType:Lcom/logitech/harmonylink/model/ContentType;
    :cond_1
    if-eqz v1, :cond_4

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    .line 181
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/ContentType;

    .line 182
    .restart local v0       #contentType:Lcom/logitech/harmonylink/model/ContentType;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/ContentType;->getContents()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/ContentType;->getContents()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 186
    .end local v0           #contentType:Lcom/logitech/harmonylink/model/ContentType;
    :cond_3
    invoke-direct {p0, v5}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyOneTouchObservers(Z)V

    .line 188
    :cond_4
    return-void
.end method

.method public notifyLiveFolderObservers(Ljava/util/ArrayList;)V
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
    .line 232
    .local p1, addMoreContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mLiveFolderContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;

    .line 233
    .local v1, observer:Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;
    invoke-interface {v1, p1}, Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;->onLiveFolderContentAvailable(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 236
    .end local v1           #observer:Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;
    :cond_0
    return-void
.end method

.method public refreshOneTouchContents(Ljava/lang/String;Lcom/logitech/connect/ConnectClient;)V
    .locals 2
    .parameter "revueId"
    .parameter "connectClient"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveOneTouchContents(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public removeLiveFolderContentObserver(Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mLiveFolderContentObservers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mLiveFolderContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOneTouchContentObserver(Lcom/logitech/harmonylink/harmony/IOneTouchContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public retrieveContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .parameter "kaBoxId"
    .parameter "hubId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {p1, v0, p2, p3}, Lcom/logitech/harmonylink/dao/OneTouchDao;->retrieveContents(Landroid/content/Context;Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    .line 143
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public retrieveOneTouchContents(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "harmonyLinkUID"
    .parameter "connectClient"
    .parameter "hubId"

    .prologue
    const/4 v5, 0x0

    .line 112
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 115
    .local v2, sharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->isPreviouslyPairedBox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 121
    :cond_0
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v4, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mHarmonyLinkUID:Ljava/lang/String;

    invoke-static {p1, v3, v4, p4}, Lcom/logitech/harmonylink/dao/OneTouchDao;->retrieveContents(Landroid/content/Context;Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    .line 123
    invoke-direct {p0, v5}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->notifyOneTouchObservers(Z)V

    .line 129
    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/ContentType;

    .line 126
    .local v0, contentType:Lcom/logitech/harmonylink/model/ContentType;
    invoke-virtual {v0, p3, p0, v5}, Lcom/logitech/harmonylink/model/ContentType;->retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;Z)V

    goto :goto_0
.end method

.method public retrieveOneTouchContents(Lcom/logitech/harmonylink/model/ContentType;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;)V
    .locals 1
    .parameter "contentType"
    .parameter "bodyContent"
    .parameter "connectClient"

    .prologue
    .line 148
    const-string v0, "activities"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shortcuts"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p3, p0, v0, p2}, Lcom/logitech/harmonylink/model/ContentType;->retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V

    .line 151
    :cond_1
    return-void
.end method

.method public setContentTypes(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    .line 102
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    new-instance v1, Lcom/logitech/harmonylink/model/HarmonyActivityContents;

    invoke-direct {v1, p1}, Lcom/logitech/harmonylink/model/HarmonyActivityContents;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContentTypes:Ljava/util/ArrayList;

    new-instance v1, Lcom/logitech/harmonylink/model/Shortcuts;

    invoke-direct {v1, p1}, Lcom/logitech/harmonylink/model/Shortcuts;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public setOneTouchContents(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 247
    .local p1, oneTouchContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    .line 248
    return-void
.end method

.method public updateImageHash(Lcom/logitech/harmonylink/model/OneTouchContent;Lcom/logitech/harmonylink/model/OneTouchContent;)V
    .locals 6
    .parameter "oneTouchItem"
    .parameter "compareItem"

    .prologue
    .line 308
    invoke-virtual {p1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, imageHash:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getIconPath()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, iconPath:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v0, i:Landroid/content/Intent;
    const-string v3, "remove icon path"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v3, "icon path"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getRowId()I

    move-result v4

    invoke-virtual {p2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/logitech/harmonylink/dao/OneTouchDao;->updateImageHash(Landroid/content/Context;ILjava/lang/String;)Z

    .line 323
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #iconPath:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateOneTouchContents(Ljava/util/ArrayList;)V
    .locals 12
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
    .local p1, liveFolderContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 267
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 268
    .local v6, toRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    iget-object v8, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 269
    .local v5, oneTouchItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bookmarks"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v8

    const-string v9, "applications"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 275
    :cond_1
    invoke-virtual {v5, v10}, Lcom/logitech/harmonylink/model/OneTouchContent;->setIsPresent(Z)V

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, flag:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 278
    .local v0, compareItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 280
    invoke-virtual {v5, v11}, Lcom/logitech/harmonylink/model/OneTouchContent;->setIsPresent(Z)V

    .line 282
    invoke-virtual {p0, v5, v0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->updateImageHash(Lcom/logitech/harmonylink/model/OneTouchContent;Lcom/logitech/harmonylink/model/OneTouchContent;)V

    .line 283
    const/4 v1, 0x1

    .line 287
    .end local v0           #compareItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_3
    if-nez v1, :cond_0

    .line 288
    new-array v7, v11, [Ljava/lang/String;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getRowId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 289
    .local v7, values:[Ljava/lang/String;
    iget-object v8, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mContext:Landroid/content/Context;

    const-string v9, "_id = ?"

    invoke-static {v8, v9, v7}, Lcom/logitech/harmonylink/dao/OneTouchDao;->delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 291
    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, hash:Ljava/lang/String;
    invoke-static {v2}, Lcom/logitech/harmonylink/util/BitmapUtil;->deleteBitmap(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    .end local v1           #flag:Z
    .end local v2           #hash:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #oneTouchItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v7           #values:[Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/logitech/harmonylink/harmony/OneTouchManager;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 298
    return-void
.end method
