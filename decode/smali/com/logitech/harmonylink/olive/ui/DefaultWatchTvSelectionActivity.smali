.class public Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "DefaultWatchTvSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field didSelectItem:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAdapter:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultSelectedWatchTVActivity:I

.field private mHeaderView:Landroid/widget/TextView;

.field private mIsUserExplicitChange:Z

.field private mListView:Landroid/widget/ListView;

.field private mLogitechHarmonyActivityId:Ljava/lang/String;

.field private mParentView:Landroid/view/View;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 31
    const-class v0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->LOG_TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mIsUserExplicitChange:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mLogitechHarmonyActivityId:Ljava/lang/String;

    .line 182
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$1;-><init>(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->didSelectItem:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mIsUserExplicitChange:Z

    return v0
.end method

.method static synthetic access$202(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mIsUserExplicitChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$402(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mDefaultSelectedWatchTVActivity:I

    return p1
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mLogitechHarmonyActivityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->notifyDataChange()V

    return-void
.end method

.method private notifyDataChange()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mAdapter:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mAdapter:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->notifyDataSetChanged()V

    .line 197
    :cond_0
    return-void
.end method

.method private storeDefaultWatchTVPreference()V
    .locals 6

    .prologue
    .line 92
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    iget v5, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mDefaultSelectedWatchTVActivity:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 93
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v3

    .line 94
    .local v3, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v4, "defaultWatchTVActivityId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, defaultWatchTVActivityIds:Ljava/lang/String;
    const/4 v1, 0x0

    .line 96
    .local v1, nvPairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, oliveGuid:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 98
    new-instance v1, Lcom/logitech/connect/client/transport/NameValuePairs;

    .end local v1           #nvPairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    invoke-direct {v1}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>()V

    .line 99
    .restart local v1       #nvPairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    if-eqz v2, :cond_0

    .line 100
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    iget v5, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mDefaultSelectedWatchTVActivity:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/logitech/connect/client/transport/NameValuePairs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    :goto_0
    const-string v4, "defaultWatchTVActivityId"

    invoke-virtual {v1}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v0           #defaultWatchTVActivityIds:Ljava/lang/String;
    .end local v1           #nvPairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    .end local v2           #oliveGuid:Ljava/lang/String;
    .end local v3           #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_1
    return-void

    .line 103
    .restart local v0       #defaultWatchTVActivityIds:Ljava/lang/String;
    .restart local v1       #nvPairs:Lcom/logitech/connect/client/transport/NameValuePairs;
    .restart local v2       #oliveGuid:Ljava/lang/String;
    .restart local v3       #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    .restart local p0
    :cond_2
    invoke-static {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->obtainValueKeyPairs(Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    move-result-object v1

    .line 104
    if-eqz v2, :cond_0

    .line 105
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    iget v5, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mDefaultSelectedWatchTVActivity:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/logitech/connect/client/transport/NameValuePairs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    .line 50
    .local v1, dom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v2

    const-string v3, "VirtualTelevisionN"

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->getActivitiesByType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    .line 51
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 52
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v2

    const-string v3, "WatchGTV"

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->getActivitiesByType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    .line 58
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 59
    :cond_1
    const v2, 0x7f03003e

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->setContentView(I)V

    .line 84
    :goto_1
    return-void

    .line 54
    :cond_2
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v2

    const-string v3, "WatchGTV"

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->getActivitiesByType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v3

    const-string v4, "WatchGTV"

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->getActivitiesByType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 62
    :cond_3
    const v2, 0x7f03000d

    invoke-static {p0, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mParentView:Landroid/view/View;

    .line 63
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mParentView:Landroid/view/View;

    const v3, 0x7f070042

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mListView:Landroid/widget/ListView;

    .line 65
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mHeaderView:Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mHeaderView:Landroid/widget/TextView;

    const v3, 0x7f0600ce

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mHeaderView:Landroid/widget/TextView;

    const/16 v3, 0x1e

    const/16 v4, 0x32

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 70
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->didSelectItem:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    new-instance v2, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;

    invoke-direct {v2, p0, v6}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;-><init>(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$1;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mAdapter:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;

    .line 72
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mAdapter:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v2

    invoke-static {v2}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getOneTouchManager(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/OneTouchManager;

    move-result-object v2

    sget-object v3, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDefaultActivity(Landroid/content/Context;Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v0

    .line 78
    .local v0, defaultWatchTvActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-eqz v0, :cond_4

    .line 79
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mLogitechHarmonyActivityId:Ljava/lang/String;

    .line 81
    :cond_4
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->notifyDataChange()V

    .line 82
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 203
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->storeDefaultWatchTVPreference()V

    .line 204
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mListView:Landroid/widget/ListView;

    .line 205
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mAdapter:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;

    .line 206
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mParentView:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    :cond_0
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;

    .line 211
    return-void
.end method
