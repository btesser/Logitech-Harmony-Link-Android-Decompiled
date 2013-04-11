.class public Lcom/logitech/harmonylink/context/SettingsActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;
    }
.end annotation


# instance fields
.field mSettingsList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SettingsActivity;->unPair()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/SettingsActivity;->requestWindowFeature(I)Z

    .line 32
    const v2, 0x7f030054

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/SettingsActivity;->setContentView(I)V

    .line 34
    const v2, 0x7f0700f2

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/logitech/harmonylink/context/SettingsActivity;->mSettingsList:Landroid/widget/ListView;

    .line 36
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, settingsListData:[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 39
    .local v0, settingsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/logitech/harmonylink/context/SettingsActivity;->mSettingsList:Landroid/widget/ListView;

    new-instance v3, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;

    const v4, 0x7f030053

    invoke-direct {v3, p0, p0, v4, v0}, Lcom/logitech/harmonylink/context/SettingsActivity$SettingsAdapter;-><init>(Lcom/logitech/harmonylink/context/SettingsActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    iget-object v2, p0, Lcom/logitech/harmonylink/context/SettingsActivity;->mSettingsList:Landroid/widget/ListView;

    new-instance v3, Lcom/logitech/harmonylink/context/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/SettingsActivity$1;-><init>(Lcom/logitech/harmonylink/context/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
