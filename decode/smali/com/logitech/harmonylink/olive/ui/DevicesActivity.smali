.class public Lcom/logitech/harmonylink/olive/ui/DevicesActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "DevicesActivity.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mDeviceListView:Landroid/widget/ListView;

.field private mDevices:Lcom/logitech/harmonylink/harmony/Devices;

.field private mDevicesAdapter:Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;

.field private mFooter:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    .line 38
    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->LOG_TAG:Ljava/lang/String;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/olive/ui/DevicesActivity;)Lcom/logitech/harmonylink/harmony/Devices;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    return-object v0
.end method

.method private setDevicesAdapter()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    .line 89
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;

    const v1, 0x7f030014

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-direct {v0, p0, v1, v2}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDevicesAdapter:Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;

    .line 91
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDevicesAdapter:Lcom/logitech/harmonylink/olive/ui/DevicesActivity$DevicesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->requestWindowFeature(I)Z

    .line 49
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    .line 53
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    new-instance v1, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity$1;-><init>(Lcom/logitech/harmonylink/olive/ui/DevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mFooter:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 109
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 110
    return-void
.end method

.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    .line 75
    .local v0, dom:Lcom/logitech/harmonylink/harmony/Dom;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->setDevicesAdapter()V

    .line 78
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Devices;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 79
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->retry()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->canActivityResume()V

    .line 98
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDeviceListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 99
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->setDevicesAdapter()V

    .line 100
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Devices;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_0
    return-void
.end method
