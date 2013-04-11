.class public Lcom/logitech/harmonylink/olive/ui/SettingsActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/olive/ui/SettingsActivity$OnAutoLockCheckedListener;,
        Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field mCheckBox:Landroid/widget/CheckBox;

.field mPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

.field mSettingsList:Landroid/widget/ListView;

.field mState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 35
    const-class v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->LOG_TAG:Ljava/lang/String;

    .line 137
    return-void
.end method

.method static synthetic access$000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/olive/ui/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->unPair()V

    return-void
.end method

.method static synthetic access$200()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$300()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$400()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$500()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$600()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$700()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->requestWindowFeature(I)Z

    .line 41
    const v2, 0x7f030054

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    .line 43
    const v2, 0x7f0700f2

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mSettingsList:Landroid/widget/ListView;

    .line 45
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, settingsListData:[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, settingsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mSettingsList:Landroid/widget/ListView;

    new-instance v3, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;

    const v4, 0x7f030053

    invoke-direct {v3, p0, p0, v4, v0}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$SettingsAdapter;-><init>(Lcom/logitech/harmonylink/olive/ui/SettingsActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->mSettingsList:Landroid/widget/ListView;

    new-instance v3, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$1;-><init>(Lcom/logitech/harmonylink/olive/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
