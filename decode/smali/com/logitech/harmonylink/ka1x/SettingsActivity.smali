.class public Lcom/logitech/harmonylink/ka1x/SettingsActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;
    }
.end annotation


# instance fields
.field mSettingList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/ka1x/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->unPair()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->requestWindowFeature(I)Z

    .line 33
    const v2, 0x7f030054

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->setContentView(I)V

    .line 34
    const v2, 0x7f0700f2

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->mSettingList:Landroid/widget/ListView;

    .line 36
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, mSettingListData:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, settingList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->mSettingList:Landroid/widget/ListView;

    new-instance v3, Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;

    const v4, 0x7f030053

    invoke-direct {v3, p0, p0, v4, v1}, Lcom/logitech/harmonylink/ka1x/SettingsActivity$SettingsAdapter;-><init>(Lcom/logitech/harmonylink/ka1x/SettingsActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->mSettingList:Landroid/widget/ListView;

    new-instance v3, Lcom/logitech/harmonylink/ka1x/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/ka1x/SettingsActivity$1;-><init>(Lcom/logitech/harmonylink/ka1x/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    return-void
.end method
