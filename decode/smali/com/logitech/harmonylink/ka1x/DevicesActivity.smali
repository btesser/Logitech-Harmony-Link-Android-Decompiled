.class public Lcom/logitech/harmonylink/ka1x/DevicesActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "DevicesActivity.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/ka1x/DevicesActivity$DevicesAdapter;,
        Lcom/logitech/harmonylink/ka1x/DevicesActivity$ActivityAdapter;
    }
.end annotation


# static fields
.field public static final SOURCEDEVICE:Ljava/lang/String; = "fromdevices_ka1x"


# instance fields
.field private mActivityListView:Landroid/widget/ListView;

.field private mDeviceListView:Landroid/widget/ListView;

.field private mDevices:Lcom/logitech/harmonylink/harmony/Devices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mActivityListView:Landroid/widget/ListView;

    .line 34
    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    .line 35
    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/ka1x/DevicesActivity;Ljava/lang/Class;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->openActivityForResult(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/ka1x/DevicesActivity;)Lcom/logitech/harmonylink/harmony/Devices;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->requestWindowFeature(I)Z

    .line 55
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->setContentView(I)V

    .line 57
    const v0, 0x7f0700a3

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mActivityListView:Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mActivityListView:Landroid/widget/ListView;

    new-instance v1, Lcom/logitech/harmonylink/ka1x/DevicesActivity$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity$1;-><init>(Lcom/logitech/harmonylink/ka1x/DevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    .line 68
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    new-instance v1, Lcom/logitech/harmonylink/ka1x/DevicesActivity$2;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity$2;-><init>(Lcom/logitech/harmonylink/ka1x/DevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    sget-object v0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    new-instance v1, Lcom/logitech/harmonylink/ka1x/DevicesActivity$3;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity$3;-><init>(Lcom/logitech/harmonylink/ka1x/DevicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addOneShotServiceStartObserver(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 94
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 95
    return-void
.end method

.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    .line 102
    .local v3, dom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 105
    .local v0, activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    new-instance v1, Lcom/logitech/harmonylink/ka1x/DevicesActivity$ActivityAdapter;

    const v4, 0x7f030001

    invoke-direct {v1, p0, p0, v4, v0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity$ActivityAdapter;-><init>(Lcom/logitech/harmonylink/ka1x/DevicesActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 106
    .local v1, activityAdapter:Landroid/widget/ArrayAdapter;
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mActivityListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    .line 109
    new-instance v2, Lcom/logitech/harmonylink/ka1x/DevicesActivity$DevicesAdapter;

    const v4, 0x7f030014

    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-direct {v2, p0, v4, v5}, Lcom/logitech/harmonylink/ka1x/DevicesActivity$DevicesAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 110
    .local v2, devicesAdapter:Lcom/logitech/harmonylink/ka1x/DevicesActivity$DevicesAdapter;
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v4, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Devices;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 113
    const v4, 0x7f07004c

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .end local v0           #activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    .end local v1           #activityAdapter:Landroid/widget/ArrayAdapter;
    .end local v2           #devicesAdapter:Lcom/logitech/harmonylink/ka1x/DevicesActivity$DevicesAdapter;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v0       #activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    .restart local v1       #activityAdapter:Landroid/widget/ArrayAdapter;
    .restart local v2       #devicesAdapter:Lcom/logitech/harmonylink/ka1x/DevicesActivity$DevicesAdapter;
    :cond_1
    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->retry()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 184
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->finish()V

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 42
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->canActivityResume()V

    .line 44
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mActivityListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 45
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->onDomUpdated(Ljava/lang/Class;)V

    .line 47
    return-void
.end method
