.class public Lcom/logitech/harmonylink/context/view/NonGtvView;
.super Lcom/logitech/harmonylink/context/view/BaseHarmonyView;
.source "NonGtvView.java"


# static fields
.field private static final COMMAND_TAB_TAG:Ljava/lang/String; = "tab_commands"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)V
    .locals 0
    .parameter "context"
    .parameter "basicHarmonyActivity"
    .parameter "primaryControlInflator"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)V

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/logitech/harmonylink/context/view/NonGtvView;->inflateBasicHarmonyView(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V

    .line 35
    return-void
.end method

.method private getLastRow(Landroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter "viewWatchGtvUserButtons"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, dumpCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    const v5, 0x7f070171

    const/4 v4, 0x0

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, lastColumn:Landroid/widget/LinearLayout;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v2, lastRowCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, currentActivityLabel:Ljava/lang/String;
    const-string v3, "VirtualDvd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    const v3, 0x7f070170

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #lastColumn:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 199
    .restart local v1       #lastColumn:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getLastRowCommands(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 235
    :cond_0
    :goto_0
    return-object v2

    .line 202
    :cond_1
    const-string v3, "VirtualGameConsole"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    const v3, 0x7f070176

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #lastColumn:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 206
    .restart local v1       #lastColumn:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getLastRowCommands(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 210
    :cond_2
    const-string v3, "VirtualCdMulti"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    const v3, 0x7f070172

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #lastColumn:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 214
    .restart local v1       #lastColumn:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getLastRowCommands(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 217
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {p0, p1, v3}, Lcom/logitech/harmonylink/context/view/NonGtvView;->addTextViewButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    goto :goto_0

    .line 218
    :cond_3
    const-string v3, "VirtualTelevisionN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #lastColumn:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 222
    .restart local v1       #lastColumn:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getLastRowCommands(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 227
    :cond_4
    const-string v3, "VirtualGeneric"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #lastColumn:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 230
    .restart local v1       #lastColumn:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getLastRowCommands(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_0
.end method


# virtual methods
.method addDpadButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter "thostTabs"
    .parameter "dom"

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->addDpadButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 187
    return-void
.end method

.method getLastRowCommands(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .parameter "preDefined"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, dumbCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    const/4 v10, 0x4

    .line 240
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v7, lastRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v6, v0, v5

    .line 243
    .local v6, item:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_2

    .line 256
    .end local v6           #item:Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 257
    .local v2, childCount:I
    if-ge v2, v10, :cond_6

    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, i:I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v10, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 261
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/Command;

    .line 262
    .local v1, c:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 263
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 266
    goto :goto_1

    .line 246
    .end local v1           #c:Lcom/logitech/harmonylink/harmony/Command;
    .end local v2           #childCount:I
    .end local v3           #i:I
    .restart local v6       #item:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5           #i$:I
    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/harmony/Command;

    .line 247
    .restart local v1       #c:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_5

    .line 242
    .end local v1           #c:Lcom/logitech/harmonylink/harmony/Command;
    :cond_4
    add-int/lit8 v4, v5, 0x1

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 250
    .end local v5           #i$:I
    .restart local v1       #c:Lcom/logitech/harmonylink/harmony/Command;
    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Command;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v10, :cond_3

    .line 251
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 269
    .end local v1           #c:Lcom/logitech/harmonylink/harmony/Command;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #item:Ljava/lang/String;
    .restart local v2       #childCount:I
    .restart local v5       #i$:I
    :cond_6
    return-object v7
.end method

.method inflateBasicHarmonyView(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V
    .locals 30
    .parameter "ctxWatchGTV"
    .parameter "basicHarmonyActivity"

    .prologue
    .line 40
    invoke-super/range {p0 .. p2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->inflateView(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V

    .line 42
    const v27, 0x7f070138

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewStub;

    .line 44
    .local v20, stubWatchGtv:Landroid/view/ViewStub;
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/NonGtvView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    .line 45
    const v27, 0x7f0700cd

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 47
    .local v21, title:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    const v27, 0x7f070165

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewStub;

    .line 53
    .local v19, stubDirectNav:Landroid/view/ViewStub;
    const v27, 0x7f030063

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 54
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setup()V

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    const v28, 0x7f070140

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageParentViewGroup(Landroid/view/ViewGroup;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageMode(Z)V

    .line 63
    new-instance v27, Lcom/logitech/harmonylink/context/view/GestureView;

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/context/view/GestureView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/NonGtvView;->mGestureView:Lcom/logitech/harmonylink/context/view/GestureView;

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mGestureView:Lcom/logitech/harmonylink/context/view/GestureView;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setContentView(ILandroid/view/View;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    const v28, 0x7f07013f

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 71
    .local v6, commandTab:Landroid/view/ViewGroup;
    const-string v27, "tab_commands"

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    new-instance v28, Lcom/logitech/harmonylink/context/view/NonGtvView$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/context/view/NonGtvView$1;-><init>(Lcom/logitech/harmonylink/context/view/NonGtvView;)V

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v7

    .line 94
    .local v7, dom:Lcom/logitech/harmonylink/harmony/Dom;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    const v28, 0x7f070166

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 97
    .local v22, vgrpFrameModes:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->inflatePrimaryControlView(Landroid/view/ViewGroup;Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Landroid/view/ViewGroup;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    const v28, 0x7f070143

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    .line 102
    .local v24, vgrpFrameUserButtons:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f030062

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 106
    .local v26, viewWatchGtvUserButtons:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    const v28, 0x7f070142

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 108
    .local v23, vgrpFrameNumericButtons:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f03005e

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 111
    .local v25, viewWatchGtvNumericButtons:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getDumpCommands()Ljava/util/ArrayList;

    move-result-object v8

    .line 113
    .local v8, dumpCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/NonGtvView;->getLastRow(Landroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 116
    .local v11, lastRowCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/harmony/Command;

    .line 117
    .local v5, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v5           #command:Lcom/logitech/harmonylink/harmony/Command;
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/NonGtvView;->addlastRowCommands(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 122
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 123
    .local v12, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 126
    move-object v0, v12

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move-object v0, v12

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 128
    .local v18, screenWidth:I
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object v13, v0

    fill-array-data v13, :array_0

    .line 130
    .local v13, pageIDArray:[I
    const/4 v10, 0x0

    .local v10, indexPage:I
    :goto_1
    move-object v0, v13

    array-length v0, v0

    move/from16 v27, v0

    move v0, v10

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    aget v28, v13, v10

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 133
    .local v15, pageView:Landroid/view/View;
    if-eqz v15, :cond_2

    .line 134
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    move/from16 v0, v18

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    invoke-virtual {v15}, Landroid/view/View;->requestLayout()V

    .line 130
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 140
    .end local v15           #pageView:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    const v28, 0x7f070048

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/logitech/harmonylink/view/widget/PageIndicator;

    .line 142
    .local v14, pageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;
    const v27, 0x7f030047

    move-object v0, v14

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->setPagesIconLayout(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageIndicator(Lcom/logitech/harmonylink/view/widget/PageIndicator;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPage(ILandroid/view/View;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPage(ILandroid/view/View;)V

    .line 148
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/NonGtvView;->addDumpCommands(Ljava/util/ArrayList;I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/NonGtvView;->addDpadButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/NonGtvView;->addControlButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/NonGtvView;->addNumericButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mCtxWatchGTV:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v16

    .line 162
    .local v16, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v27, "screen"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 163
    .local v17, screen:Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 165
    const-string v27, "keyboard"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v27

    const-string v28, "WatchGTV"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/NonGtvView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 172
    :cond_4
    return-void

    .line 128
    nop

    :array_0
    .array-data 0x4
        0x42t 0x1t 0x7t 0x7ft
        0x43t 0x1t 0x7t 0x7ft
    .end array-data
.end method
