.class public Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;
.super Ljava/lang/Object;
.source "LayoutModel.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;


# static fields
.field static final DEBUG_LOADERS:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "UserDefinedPageModel"


# instance fields
.field private mCommandExistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mDesktopItems:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mCommandExistMap:Ljava/util/HashMap;

    return-void
.end method

.method private static addItemToDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;JIIIZ)V
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 400
    iput-wide p2, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    .line 401
    iput p4, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    .line 402
    iput p5, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    .line 403
    iput p6, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    .line 405
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 408
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 410
    if-eqz p7, :cond_1

    sget-object v3, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 413
    .local v1, result:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->id:J

    .line 416
    :cond_0
    return-void

    .line 410
    .end local v1           #result:Landroid/net/Uri;
    .restart local p0
    :cond_1
    sget-object v3, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;JIII)V
    .locals 0
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 346
    iput-wide p2, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    .line 347
    iput p4, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    .line 348
    iput p5, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    .line 349
    iput p6, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    .line 363
    return-void
.end method

.method private static deleteItemFromDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 430
    .local v0, cr:Landroid/content/ContentResolver;
    return-void
.end method

.method private makeItem(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    .locals 2
    .parameter "userDefinedPageView"
    .parameter "dom"

    .prologue
    .line 278
    new-instance v0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    invoke-virtual {p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Landroid/content/Context;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 280
    .local v0, itemInfo:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    return-object v0
.end method

.method public static moveItemInDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;JIII)V
    .locals 0
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 372
    iput-wide p2, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    .line 373
    iput p4, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    .line 374
    iput p5, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    .line 375
    iput p6, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    .line 389
    return-void
.end method

.method private unbind()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mDesktopItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->unbindDrawables(Ljava/util/Collection;)V

    .line 298
    return-void
.end method

.method private unbindDrawables(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, desktopItems:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;>;"
    if-eqz p1, :cond_0

    .line 306
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    goto :goto_0

    .line 311
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addDesktopItem(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mDesktopItems:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->getHashKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-void
.end method

.method public addKeyMappedCommand(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/Commands;)V
    .locals 16
    .parameter "activity"
    .parameter "launcher"
    .parameter "customCommands"

    .prologue
    .line 95
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 97
    .local v14, context:Landroid/content/Context;
    const/4 v15, 0x0

    .local v15, index:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/logitech/harmonylink/harmony/Commands;->size()I

    move-result v4

    if-ge v15, v4, :cond_1

    .line 99
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Commands;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/logitech/harmonylink/harmony/Command;

    .line 101
    .local v13, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v13}, Lcom/logitech/harmonylink/harmony/Command;->getDevice()Lcom/logitech/harmonylink/harmony/Device;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 102
    new-instance v3, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    invoke-virtual {v13}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/logitech/harmonylink/harmony/Command;->getLabel()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v13}, Lcom/logitech/harmonylink/harmony/Command;->getHashKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 104
    .local v3, defButton:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    invoke-virtual/range {p1 .. p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->makeItem(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    move-result-object v12

    check-cast v12, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    .line 105
    .local v12, buttonInfo:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    invoke-virtual {v12, v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setButtonDef(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;)V

    .line 106
    const-wide/16 v4, -0x64

    iput-wide v4, v12, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->container:J

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getCountX()I

    move-result v4

    rem-int v4, v15, v4

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getCountY()I

    move-result v5

    div-int v5, v15, v5

    invoke-virtual {v12, v4, v5}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setCell(II)V

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setScreen(I)V

    .line 109
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->addDesktopItem(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v12}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getScreen()I

    move-result v6

    invoke-virtual {v12}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getCellX()I

    move-result v7

    invoke-virtual {v12}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getCellY()I

    move-result v8

    invoke-virtual {v12}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getSpanX()I

    move-result v9

    invoke-virtual {v12}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getSpanY()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v11}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 97
    .end local v3           #defButton:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    .end local v12           #buttonInfo:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 120
    .end local v13           #command:Lcom/logitech/harmonylink/harmony/Command;
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->commit(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public commit(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 59
    .local v8, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$AllTables;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mDesktopItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    .line 62
    .local v1, item:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    iget-wide v2, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    iget v4, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    iget v5, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    iget v6, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->addItemToDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;JIIIZ)V

    goto :goto_0

    .line 65
    .end local v1           #item:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mDesktopItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public deleteAllItemsFromDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;)V
    .locals 5
    .parameter "context"
    .parameter "cellLayout"

    .prologue
    const/4 v4, 0x0

    .line 440
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mDesktopItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    .line 441
    .local v2, item:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    invoke-virtual {v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->getCell()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 445
    .end local v2           #item:Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 446
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$AllTables;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 448
    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mDesktopItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 449
    return-void
.end method

.method public getCommand(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;
    .locals 1
    .parameter "action"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mCommandExistMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/harmony/Command;

    return-object p0
.end method

.method public loadUserItems(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 56
    .parameter "activity"
    .parameter "launcher"
    .parameter "dom"

    .prologue
    .line 129
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v28

    .line 130
    .local v28, context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 132
    .local v4, contentResolver:Landroid/content/ContentResolver;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mCommandExistMap:Ljava/util/HashMap;

    .line 134
    if-eqz p3, :cond_1

    .line 135
    invoke-virtual/range {p3 .. p3}, Lcom/logitech/harmonylink/harmony/Dom;->getDevices()Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v8

    invoke-virtual {v8}, Lcom/logitech/harmonylink/harmony/Devices;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_0
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/logitech/harmonylink/harmony/Device;

    .line 137
    .local v30, device:Lcom/logitech/harmonylink/harmony/Device;
    invoke-virtual/range {v30 .. v30}, Lcom/logitech/harmonylink/harmony/Device;->getCommands()Lcom/logitech/harmonylink/harmony/Commands;

    move-result-object v25

    .line 138
    .local v25, commands:Lcom/logitech/harmonylink/harmony/Commands;
    invoke-virtual/range {v25 .. v25}, Lcom/logitech/harmonylink/harmony/Commands;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/logitech/harmonylink/harmony/Command;

    .line 139
    .local v24, cmd:Lcom/logitech/harmonylink/harmony/Command;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mCommandExistMap:Ljava/util/HashMap;

    move-object v8, v0

    invoke-virtual/range {v24 .. v24}, Lcom/logitech/harmonylink/harmony/Command;->getHashKey()Ljava/lang/String;

    move-result-object v9

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v24           #cmd:Lcom/logitech/harmonylink/harmony/Command;
    .end local v25           #commands:Lcom/logitech/harmonylink/harmony/Commands;
    .end local v30           #device:Lcom/logitech/harmonylink/harmony/Device;
    .end local v35           #i$:Ljava/util/Iterator;
    :cond_1
    const/16 v43, 0x0

    .line 151
    .local v43, initialized:S
    :try_start_0
    sget-object v5, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$AppSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 155
    .local v16, appSettingsCursor:Landroid/database/Cursor;
    :try_start_1
    const-string v8, "_id"

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 156
    .local v42, idIndex:I
    const-string v8, "initialized"

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 159
    .local v44, initializedIndex:I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 160
    move-object/from16 v0, v16

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v43

    .line 164
    :cond_2
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 176
    .end local v16           #appSettingsCursor:Landroid/database/Cursor;
    .end local v42           #idIndex:I
    .end local v44           #initializedIndex:I
    :goto_1
    if-nez v43, :cond_3

    .line 179
    invoke-virtual/range {p0 .. p2}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->revert(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V

    .line 181
    new-instance v55, Landroid/content/ContentValues;

    invoke-direct/range {v55 .. v55}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v55, values:Landroid/content/ContentValues;
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    .line 184
    .local v29, cr:Landroid/content/ContentResolver;
    const-string v8, "initialized"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    move-object/from16 v0, v55

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 185
    sget-object v8, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$AppSettings;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    move-object/from16 v0, v29

    move-object v1, v8

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 189
    .end local v29           #cr:Landroid/content/ContentResolver;
    .end local v55           #values:Landroid/content/ContentValues;
    :cond_3
    sget-object v5, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 193
    .local v19, c:Landroid/database/Cursor;
    :try_start_3
    const-string v8, "_id"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 194
    .restart local v42       #idIndex:I
    const-string v8, "container"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 195
    .local v27, containerIndex:I
    const-string v8, "itemType"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 196
    .local v47, itemTypeIndex:I
    const-string v8, "screen"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 197
    .local v48, screenIndex:I
    const-string v8, "cellX"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 198
    .local v21, cellXIndex:I
    const-string v8, "cellY"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 199
    .local v23, cellYIndex:I
    const-string v8, "spanX"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 200
    .local v50, spanXIndex:I
    const-string v8, "spanY"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 201
    .local v52, spanYIndex:I
    const-string v8, "uri"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 202
    .local v54, uriIndex:I
    const-string v8, "displayMode"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 204
    .local v31, displayModeIndex:I
    const-string v8, "intent"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 205
    .local v45, intentIndex:I
    const-string v8, "title"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 207
    .local v53, titleIndex:I
    const-string v8, "iconType"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 208
    .local v39, iconTypeIndex:I
    const-string v8, "icon"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 209
    .local v36, iconIndex:I
    const-string v8, "iconPackage"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 210
    .local v37, iconPackageIndex:I
    const-string v8, "iconResource"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 211
    .local v38, iconResourceIndex:I
    const-string v8, "appWidgetId"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 217
    .local v17, appWidgetIdIndex:I
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    if-eqz v8, :cond_5

    .line 219
    :try_start_4
    move-object/from16 v0, v19

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 221
    .local v46, itemType:I
    move-object/from16 v0, v19

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 222
    .local v40, id:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->makeItem(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;

    move-result-object v18

    check-cast v18, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;

    .line 226
    .local v18, buttonInfo:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    move-object/from16 v0, v19

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, title:Ljava/lang/String;
    move-object/from16 v0, v19

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, action:Ljava/lang/String;
    new-instance v5, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v6

    invoke-direct/range {v5 .. v10}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 231
    .local v5, buttonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setButtonDef(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;)V

    .line 233
    move-object/from16 v0, v18

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setId(J)V

    .line 235
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 236
    .local v26, container:I
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide v8, v0

    move-wide v0, v8

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->container:J

    .line 238
    move-object/from16 v0, v19

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setScreen(I)V

    .line 240
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 241
    .local v20, cellX:I
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 243
    .local v22, cellY:I
    move-object/from16 v0, v19

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 244
    .local v49, spanX:I
    move-object/from16 v0, v19

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 246
    .local v51, spanY:I
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setCell(II)V

    .line 247
    move-object/from16 v0, v18

    move/from16 v1, v49

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->setSpan(II)V

    .line 250
    packed-switch v26, :pswitch_data_0

    goto/16 :goto_2

    .line 252
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mCommandExistMap:Ljava/util/HashMap;

    move-object v8, v0

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->addDesktopItem(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v8

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getScreen()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getCellX()I

    move-result v11

    invoke-virtual/range {v18 .. v18}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getCellY()I

    move-result v12

    invoke-virtual/range {v18 .. v18}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getSpanX()I

    move-result v13

    invoke-virtual/range {v18 .. v18}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->getSpanY()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v8 .. v15}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->addInScreen(Landroid/view/View;IIIIIZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 267
    .end local v5           #buttonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    .end local v6           #action:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v18           #buttonInfo:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    .end local v20           #cellX:I
    .end local v22           #cellY:I
    .end local v26           #container:I
    .end local v40           #id:J
    .end local v46           #itemType:I
    .end local v49           #spanX:I
    .end local v51           #spanY:I
    :catch_0
    move-exception v8

    move-object/from16 v32, v8

    .line 268
    .local v32, e:Ljava/lang/Exception;
    :try_start_5
    const-string v8, "UserDefinedPageModel"

    const-string v9, "Desktop items loading interrupted:"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 272
    .end local v17           #appWidgetIdIndex:I
    .end local v21           #cellXIndex:I
    .end local v23           #cellYIndex:I
    .end local v27           #containerIndex:I
    .end local v31           #displayModeIndex:I
    .end local v32           #e:Ljava/lang/Exception;
    .end local v36           #iconIndex:I
    .end local v37           #iconPackageIndex:I
    .end local v38           #iconResourceIndex:I
    .end local v39           #iconTypeIndex:I
    .end local v42           #idIndex:I
    .end local v45           #intentIndex:I
    .end local v47           #itemTypeIndex:I
    .end local v48           #screenIndex:I
    .end local v50           #spanXIndex:I
    .end local v52           #spanYIndex:I
    .end local v53           #titleIndex:I
    .end local v54           #uriIndex:I
    :catchall_0
    move-exception v8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v8

    .line 164
    .end local v19           #c:Landroid/database/Cursor;
    .restart local v16       #appSettingsCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v8

    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 170
    .end local v16           #appSettingsCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v8

    move-object/from16 v33, v8

    .line 171
    .local v33, exSqlQuery:Ljava/lang/Exception;
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    .line 172
    .restart local v29       #cr:Landroid/content/ContentResolver;
    sget-object v8, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$AppSettings;->CONTENT_URI_RECREATE:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v29

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 260
    .end local v29           #cr:Landroid/content/ContentResolver;
    .end local v33           #exSqlQuery:Ljava/lang/Exception;
    .restart local v5       #buttonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    .restart local v6       #action:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    .restart local v17       #appWidgetIdIndex:I
    .restart local v18       #buttonInfo:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    .restart local v19       #c:Landroid/database/Cursor;
    .restart local v20       #cellX:I
    .restart local v21       #cellXIndex:I
    .restart local v22       #cellY:I
    .restart local v23       #cellYIndex:I
    .restart local v26       #container:I
    .restart local v27       #containerIndex:I
    .restart local v31       #displayModeIndex:I
    .restart local v36       #iconIndex:I
    .restart local v37       #iconPackageIndex:I
    .restart local v38       #iconResourceIndex:I
    .restart local v39       #iconTypeIndex:I
    .restart local v40       #id:J
    .restart local v42       #idIndex:I
    .restart local v45       #intentIndex:I
    .restart local v46       #itemType:I
    .restart local v47       #itemTypeIndex:I
    .restart local v48       #screenIndex:I
    .restart local v49       #spanX:I
    .restart local v50       #spanXIndex:I
    .restart local v51       #spanY:I
    .restart local v52       #spanYIndex:I
    .restart local v53       #titleIndex:I
    .restart local v54       #uriIndex:I
    :cond_4
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 272
    .end local v5           #buttonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    .end local v6           #action:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v18           #buttonInfo:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
    .end local v20           #cellX:I
    .end local v22           #cellY:I
    .end local v26           #container:I
    .end local v40           #id:J
    .end local v46           #itemType:I
    .end local v49           #spanX:I
    .end local v51           #spanY:I
    :cond_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 274
    return-void

    .line 250
    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
    .end packed-switch
.end method

.method public removeDesktopItem(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mDesktopItems:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->getHashKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    return-void
.end method

.method public revert(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V
    .locals 2
    .parameter "activity"
    .parameter "launcher"

    .prologue
    .line 83
    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->deleteAllItemsFromDatabase(Landroid/content/Context;Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;)V

    .line 87
    invoke-static {p1, p2, p0}, Lcom/logitech/harmonylink/harmony/KeyMappedCommands;->sendGetKeyMappedCommands(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/IKeyMappedCommandCallBack;)V

    .line 91
    return-void
.end method

.method public rollback(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V
    .locals 2
    .parameter "activity"
    .parameter "launcher"

    .prologue
    .line 68
    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v0

    .line 74
    .local v0, cellLayout:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->removeAllViews()V

    .line 76
    iget-object v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->mDesktopItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 78
    invoke-virtual {p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->loadUserItems(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 79
    return-void
.end method
