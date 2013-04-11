.class public Lcom/logitech/harmonylink/context/DevicesActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "DevicesActivity.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mDeviceListView:Landroid/widget/ListView;

.field private mDevices:Lcom/logitech/harmonylink/harmony/Devices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    .line 38
    iput-object v0, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->LOG_TAG:Ljava/lang/String;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/DevicesActivity;)Lcom/logitech/harmonylink/harmony/Devices;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/DevicesActivity;->requestWindowFeature(I)Z

    .line 47
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/DevicesActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/DevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    new-instance v1, Lcom/logitech/harmonylink/context/DevicesActivity$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/DevicesActivity$1;-><init>(Lcom/logitech/harmonylink/context/DevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 96
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DevicesActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 97
    return-void
.end method

.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DevicesActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    .line 69
    .local v1, dom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DevicesActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    .line 71
    new-instance v0, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;

    const v2, 0x7f030014

    iget-object v3, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-direct {v0, p0, v2, v3}, Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 73
    .local v0, devicesAdapter:Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;
    iget-object v2, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v2, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Devices;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 76
    const v2, 0x7f07004c

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/DevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .end local v0           #devicesAdapter:Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v0       #devicesAdapter:Lcom/logitech/harmonylink/context/DevicesActivity$DevicesAdapter;
    :cond_1
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->retry()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DevicesActivity;->canActivityResume()V

    .line 89
    iget-object v0, p0, Lcom/logitech/harmonylink/context/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/DevicesActivity;->onDomUpdated(Ljava/lang/Class;)V

    .line 91
    return-void
.end method
