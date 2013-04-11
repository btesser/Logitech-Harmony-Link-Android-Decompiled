.class public Lcom/logitech/harmonylink/context/DeviceCommandsActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "DeviceCommandsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/DeviceCommandsActivity$ItemSelectionViewDelegate;
    }
.end annotation


# static fields
.field private static final GRID_COL_COUNT:I = 0x4

.field private static final GRID_ROW_COUNT:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCommands:Lcom/logitech/harmonylink/harmony/Commands;

.field private mCommandsContent:Landroid/view/ViewGroup;

.field private mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mCommandsContent:Landroid/view/ViewGroup;

    .line 33
    iput-object v0, p0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    .line 137
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super/range {p0 .. p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->requestWindowFeature(I)Z

    .line 48
    const v4, 0x7f030012

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->setContentView(I)V

    .line 50
    const v4, 0x7f070048

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 52
    .local v16, pageParent:Landroid/view/ViewGroup;
    const v4, 0x7f070046

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageParentViewGroup(Landroid/view/ViewGroup;)V

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageMode(Z)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object v4, v0

    const v5, 0x7f070047

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mCommandsContent:Landroid/view/ViewGroup;

    .line 58
    const v4, 0x7f070048

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/logitech/harmonylink/view/widget/PageIndicator;

    .line 59
    .local v15, pageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;
    const v4, 0x7f030047

    invoke-virtual {v15, v4}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->setPagesIconLayout(I)V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object v4, v0

    invoke-virtual {v4, v15}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageIndicator(Lcom/logitech/harmonylink/view/widget/PageIndicator;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 63
    .local v12, extras:Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 64
    .local v11, deviceId:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 65
    const-string v4, "com.logitech.harmonylink.harmony.device"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 66
    :cond_0
    sget-object v4, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/logitech/harmonylink/harmony/Devices;->getDevice(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v10

    .line 67
    .local v10, device:Lcom/logitech/harmonylink/harmony/Device;
    if-eqz v10, :cond_2

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v10}, Lcom/logitech/harmonylink/harmony/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/logitech/harmonylink/harmony/Device;->getLabelResourceIDbyDeviceType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 72
    .local v18, title:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/logitech/harmonylink/harmony/Device;->getLabel()Ljava/lang/String;

    move-result-object v18

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->setTitle(Ljava/lang/String;)V

    .line 76
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    .local v14, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 81
    .local v17, screenWidth:I
    invoke-virtual {v10}, Lcom/logitech/harmonylink/harmony/Device;->getCommands()Lcom/logitech/harmonylink/harmony/Commands;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    .line 82
    const/4 v5, 0x0

    .line 83
    .local v5, gridPage:Landroid/widget/GridView;
    const/4 v9, 0x0

    .line 85
    .local v9, commandsPage:Lcom/logitech/harmonylink/harmony/Commands;
    const/4 v13, 0x0

    .local v13, index:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Commands;->size()I

    move-result v4

    if-ge v13, v4, :cond_2

    .line 87
    rem-int/lit8 v4, v13, 0x18

    if-nez v4, :cond_1

    .line 88
    new-instance v9, Lcom/logitech/harmonylink/harmony/Commands;

    .end local v9           #commandsPage:Lcom/logitech/harmonylink/harmony/Commands;
    invoke-direct {v9}, Lcom/logitech/harmonylink/harmony/Commands;-><init>()V

    .line 89
    .restart local v9       #commandsPage:Lcom/logitech/harmonylink/harmony/Commands;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mCommandsContent:Landroid/view/ViewGroup;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030013

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mCommandsContent:Landroid/view/ViewGroup;

    move-object v6, v0

    .end local v5           #gridPage:Landroid/widget/GridView;
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    .line 90
    .restart local v5       #gridPage:Landroid/widget/GridView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mCommandsContent:Landroid/view/ViewGroup;

    move-object v4, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    new-instance v3, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;

    const/4 v6, 0x6

    const/4 v7, 0x4

    const v8, 0x7f030015

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IIILjava/util/List;)V

    .line 94
    .local v3, commandsAdapter:Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;
    invoke-virtual {v5, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    new-instance v4, Lcom/logitech/harmonylink/context/view/GridViewListener;

    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/logitech/harmonylink/context/view/GridViewListener;-><init>(Landroid/widget/GridView;Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v5, v4}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPage(ILandroid/view/View;)V

    .line 103
    .end local v3           #commandsAdapter:Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->mCommands:Lcom/logitech/harmonylink/harmony/Commands;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/logitech/harmonylink/harmony/Commands;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/logitech/harmonylink/harmony/Command;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Commands;->add(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 85
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 109
    .end local v5           #gridPage:Landroid/widget/GridView;
    .end local v9           #commandsPage:Lcom/logitech/harmonylink/harmony/Commands;
    .end local v13           #index:I
    .end local v14           #metrics:Landroid/util/DisplayMetrics;
    .end local v17           #screenWidth:I
    .end local v18           #title:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->addObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 114
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 115
    return-void
.end method

.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-ne p1, v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->finish()V

    .line 120
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Command;

    .line 133
    .local v0, command:Lcom/logitech/harmonylink/harmony/Command;
    const/4 v1, 0x0

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 39
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/DeviceCommandsActivity;->canActivityResume()V

    .line 40
    return-void
.end method
