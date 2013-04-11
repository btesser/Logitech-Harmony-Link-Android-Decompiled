.class public Lcom/logitech/harmonylink/devtest/HomeActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# instance fields
.field mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mListView:Landroid/widget/ListView;

    .line 24
    iput-object v0, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/devtest/HomeActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/devtest/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mListView:Landroid/widget/ListView;

    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 32
    sget-object v0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->addObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/devtest/HomeActivity;->onDomUpdated(Ljava/lang/Class;)V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 45
    sget-object v0, Lcom/logitech/harmonylink/devtest/HomeActivity;->sTopActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->disconnect()V

    .line 48
    :cond_0
    sget-object v0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 49
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
    .line 62
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 63
    .local v0, activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 64
    .local v1, activityAdapter:Landroid/widget/ArrayAdapter;
    iget-object v2, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v2, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Dom;->getIsSetupNeeded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/logitech/harmonylink/devtest/HomeActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v2

    iget-object v3, p0, Lcom/logitech/harmonylink/devtest/HomeActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/Dom;->startLogitechActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 68
    const-class v2, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/devtest/HomeActivity;->openActivityForResult(Ljava/lang/Class;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 56
    .local v0, activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/devtest/HomeActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/harmony/Dom;->startLogitechActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 58
    const-class v1, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/devtest/HomeActivity;->openActivityForResult(Ljava/lang/Class;)V

    .line 59
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onStop()V

    .line 40
    return-void
.end method
