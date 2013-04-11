.class public Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;
.super Landroid/view/View;
.source "WatchGTVView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$ShowWatchGTVviewObserver;
    }
.end annotation


# static fields
.field private static final COMMAND_TAB_TAG:Ljava/lang/String; = "tab_commands"

.field private static final LONG_PRESS_DELAY_MILIS:J = 0x3e8L


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field PEEKABOO_VIEW_ARRAY:[I

.field public mActualWatchGtvView:Landroid/view/ViewGroup;

.field mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

.field mConnectClient:Lcom/logitech/connect/ConnectClient;

.field mCtxWatchGTV:Landroid/content/Context;

.field private mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

.field mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

.field mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

.field private mPrimaryControlInflator:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

.field mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

.field mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;)V
    .locals 1
    .parameter "ctxWatchGTV"
    .parameter "logiActivity"
    .parameter "primaryControlInflator"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    const-class v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->LOG_TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->PEEKABOO_VIEW_ARRAY:[I

    .line 79
    iput-object p3, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mPrimaryControlInflator:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    .line 81
    iput-object p2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    .line 82
    invoke-virtual {p2}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteConnect()Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->inflateGTVView(Landroid/content/Context;Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V

    .line 86
    return-void

    .line 62
    nop

    :array_0
    .array-data 0x4
        0x3ct 0x1t 0x7t 0x7ft
        0x3dt 0x1t 0x7t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Lcom/logitech/harmonylink/ka1x/view/KeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Lcom/logitech/harmonylink/view/widget/CustomTabView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setTabAndPage(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private addControlButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V
    .locals 18
    .parameter "viewCommandButtons"
    .parameter "dom"
    .parameter "harmonyActivity"

    .prologue
    .line 568
    const/4 v12, 0x3

    new-array v7, v12, [Lcom/logitech/harmonylink/harmony/IRMapping;

    const/4 v12, 0x0

    new-instance v13, Lcom/logitech/harmonylink/harmony/IRMapping;

    const v14, 0x7f070163

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "Slow"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "FrameAdvance"

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/IRMapping;-><init>(I[Ljava/lang/String;)V

    aput-object v13, v7, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/logitech/harmonylink/harmony/IRMapping;

    const v14, 0x7f070164

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "Aspect"

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/IRMapping;-><init>(I[Ljava/lang/String;)V

    aput-object v13, v7, v12

    const/4 v12, 0x2

    new-instance v13, Lcom/logitech/harmonylink/harmony/IRMapping;

    const v14, 0x7f070160

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "PrevChannel"

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/IRMapping;-><init>(I[Ljava/lang/String;)V

    aput-object v13, v7, v12

    .line 577
    .local v7, buttonIRMapArray:[Lcom/logitech/harmonylink/harmony/IRMapping;
    move-object v4, v7

    .local v4, arr$:[Lcom/logitech/harmonylink/harmony/IRMapping;
    array-length v9, v4

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v6, v4, v8

    .line 578
    .local v6, buttonIRMap:Lcom/logitech/harmonylink/harmony/IRMapping;
    iget v12, v6, Lcom/logitech/harmonylink/harmony/IRMapping;->mButtonID:I

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 580
    .local v5, button:Landroid/widget/ImageButton;
    iget-object v12, v6, Lcom/logitech/harmonylink/harmony/IRMapping;->mIRNameArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;)V

    .line 577
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 583
    .end local v5           #button:Landroid/widget/ImageButton;
    .end local v6           #buttonIRMap:Lcom/logitech/harmonylink/harmony/IRMapping;
    :cond_0
    const/16 v12, 0xd

    new-array v11, v12, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const/4 v12, 0x0

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070155

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->VOLUME_UP:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070159

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->VOLUME_DOWN:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070156

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->MEDIA_PLAY:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/4 v12, 0x3

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070157

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->MEDIA_PAUSE:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/4 v12, 0x4

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070162

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->MEDIA_STOP:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/4 v12, 0x5

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070161

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->MEDIA_RECORD:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/4 v12, 0x6

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070158

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->CHANNEL_UP:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/4 v12, 0x7

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07015c

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->CHANNEL_DOWN:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/16 v12, 0x8

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07015d

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->MUTE:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/16 v12, 0x9

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07015b

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->MEDIA_FAST_FORWARD:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/16 v12, 0xa

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07015a

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->MEDIA_REWIND:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/16 v12, 0xb

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07015f

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->SKIP_FWD:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    const/16 v12, 0xc

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07015e

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->SKIP_BACK:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v11, v12

    .line 608
    .local v11, mediaKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    move-object v4, v11

    .local v4, arr$:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    array-length v9, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v10, v4, v8

    .line 609
    .local v10, mediaKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    iget v12, v10, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mButtonID:I

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 611
    .restart local v5       #button:Landroid/widget/ImageButton;
    iget-object v12, v10, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;)V

    .line 608
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 613
    .end local v5           #button:Landroid/widget/ImageButton;
    .end local v10           #mediaKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    :cond_1
    return-void
.end method

.method private addDpadButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V
    .locals 10
    .parameter "thostTabs"
    .parameter "dom"
    .parameter "harmonyActivity"

    .prologue
    .line 618
    const/4 v6, 0x2

    new-array v3, v6, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const/4 v6, 0x0

    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f07005a

    sget-object v9, Lcom/logitech/harmonylink/harmony/Command;->PAGE_UP:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v3, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v8, 0x7f07005b

    sget-object v9, Lcom/logitech/harmonylink/harmony/Command;->PAGE_DOWN:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v7, v3, v6

    .line 624
    .local v3, buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    move-object v0, v3

    .local v0, arr$:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 626
    .local v2, buttonKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    iget v6, v2, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mButtonID:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 628
    .local v1, button:Landroid/widget/ImageButton;
    iget-object v6, v2, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {p0, p2, v1, v6}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;)V

    .line 624
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 631
    .end local v1           #button:Landroid/widget/ImageButton;
    .end local v2           #buttonKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    :cond_0
    return-void
.end method

.method private addNumericButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V
    .locals 18
    .parameter "viewNumericButtons"
    .parameter "dom"
    .parameter "harmonyActivity"

    .prologue
    .line 536
    const/16 v12, 0xa

    new-array v8, v12, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const/4 v12, 0x0

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070152

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM0:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070148

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM1:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    const/4 v12, 0x2

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070149

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM2:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    const/4 v12, 0x3

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07014a

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM3:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    const/4 v12, 0x4

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07014b

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM4:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    const/4 v12, 0x5

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07014c

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM5:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    const/4 v12, 0x6

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07014d

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM6:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    const/4 v12, 0x7

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07014e

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM7:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    const/16 v12, 0x8

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f07014f

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM8:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    const/16 v12, 0x9

    new-instance v13, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v14, 0x7f070150

    sget-object v15, Lcom/logitech/harmonylink/harmony/Command;->NUM9:Lcom/logitech/harmonylink/harmony/Command;

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v13, v8, v12

    .line 548
    .local v8, buttonKeycodeMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    const/4 v12, 0x2

    new-array v7, v12, [Lcom/logitech/harmonylink/harmony/IRMapping;

    const/4 v12, 0x0

    new-instance v13, Lcom/logitech/harmonylink/harmony/IRMapping;

    const v14, 0x7f070153

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "NumberEnter"

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/IRMapping;-><init>(I[Ljava/lang/String;)V

    aput-object v13, v7, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/logitech/harmonylink/harmony/IRMapping;

    const v14, 0x7f070151

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "Star"

    aput-object v17, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/logitech/harmonylink/harmony/IRMapping;-><init>(I[Ljava/lang/String;)V

    aput-object v13, v7, v12

    .line 552
    .local v7, buttonIRMapArray:[Lcom/logitech/harmonylink/harmony/IRMapping;
    move-object v4, v8

    .local v4, arr$:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v10, v4, v9

    .line 553
    .local v10, k:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    iget v12, v10, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mButtonID:I

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 555
    .local v5, button:Landroid/widget/ImageButton;
    iget-object v12, v10, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;)V

    .line 552
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 558
    .end local v5           #button:Landroid/widget/ImageButton;
    .end local v10           #k:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    :cond_0
    move-object v4, v7

    .local v4, arr$:[Lcom/logitech/harmonylink/harmony/IRMapping;
    array-length v11, v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_1

    aget-object v6, v4, v9

    .line 559
    .local v6, buttonIRMap:Lcom/logitech/harmonylink/harmony/IRMapping;
    iget v12, v6, Lcom/logitech/harmonylink/harmony/IRMapping;->mButtonID:I

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 561
    .restart local v5       #button:Landroid/widget/ImageButton;
    iget-object v12, v6, Lcom/logitech/harmonylink/harmony/IRMapping;->mIRNameArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;)V

    .line 558
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 563
    .end local v5           #button:Landroid/widget/ImageButton;
    .end local v6           #buttonIRMap:Lcom/logitech/harmonylink/harmony/IRMapping;
    :cond_1
    return-void
.end method

.method private inflateGTVView(Landroid/content/Context;Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V
    .locals 29
    .parameter "ctxWatchGTV"
    .parameter "logiActivity"

    .prologue
    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCtxWatchGTV:Landroid/content/Context;

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 107
    new-instance v25, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$ShowWatchGTVviewObserver;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$ShowWatchGTVviewObserver;-><init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)V

    .line 108
    .local v25, watchgtvObserver:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$ShowWatchGTVviewObserver;
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->addKeyboardViewObserver(Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;)V

    .line 109
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 111
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v26, 0x7f070138

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewStub;

    .line 113
    .local v18, stubWatchGtv:Landroid/view/ViewStub;
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    .line 115
    const v26, 0x7f070165

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    .line 117
    .local v17, stubDirectNav:Landroid/view/ViewStub;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setup()V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    const v27, 0x7f070140

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageParentViewGroup(Landroid/view/ViewGroup;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageMode(Z)V

    .line 126
    new-instance v7, Lcom/logitech/harmonylink/ka1x/view/GestureView;

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/ka1x/view/GestureView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 129
    .local v7, gestureView:Lcom/logitech/harmonylink/ka1x/view/GestureView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setContentView(ILandroid/view/View;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    const v27, 0x7f07013f

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 133
    .local v5, commandTab:Landroid/view/ViewGroup;
    const-string v26, "tab_commands"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 135
    new-instance v19, Lcom/logitech/harmonylink/context/view/TrackpadView;

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    .end local v5           #commandTab:Landroid/view/ViewGroup;
    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/context/view/TrackpadView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 138
    .local v19, trackpadView:Lcom/logitech/harmonylink/context/view/TrackpadView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setContentView(ILandroid/view/View;)V

    .line 140
    new-instance v26, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/View;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setContentView(ILandroid/view/View;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setFocusable(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setFocusableInTouchMode(Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setClickable(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setEnabled(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    new-instance v27, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;-><init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)V

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v6

    .line 169
    .local v6, dom:Lcom/logitech/harmonylink/harmony/Dom;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    const v27, 0x7f070166

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 172
    .local v20, vgrpFrameModes:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mPrimaryControlInflator:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->inflatePrimaryControlView(Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    const v27, 0x7f070143

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 178
    .local v22, vgrpFrameUserButtons:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    const v27, 0x7f070145

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewStub;

    .line 180
    .local v16, stub:Landroid/view/ViewStub;
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->setParentActivity(Lcom/logitech/harmonylink/ui/common/BaseActivity;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPageChangeObserver(Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView$PageChangeObserver;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-object/from16 v26, v0

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->loadItem(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 185
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x7f03005f

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 187
    .local v24, viewWatchGtvUserButtons:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    const v27, 0x7f070142

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 189
    .local v21, vgrpFrameNumericButtons:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v26

    const v27, 0x7f03005e

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 193
    .local v23, viewWatchGtvNumericButtons:Landroid/view/View;
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 194
    .local v11, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 196
    move-object v0, v11

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    move-object v0, v11

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 198
    .local v15, screenWidth:I
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object v12, v0

    fill-array-data v12, :array_0

    .line 201
    .local v12, pageIDArray:[I
    const/4 v9, 0x0

    .local v9, indexPage:I
    :goto_0
    move-object v0, v12

    array-length v0, v0

    move/from16 v26, v0

    move v0, v9

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    aget v27, v12, v9

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 204
    .local v14, pageView:Landroid/view/View;
    if-eqz v14, :cond_0

    .line 205
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move v0, v15

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 207
    invoke-virtual {v14}, Landroid/view/View;->requestLayout()V

    .line 201
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 211
    .end local v14           #pageView:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    const v27, 0x7f070048

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/logitech/harmonylink/view/widget/PageIndicator;

    .line 213
    .local v13, pageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;
    const v26, 0x7f030047

    move-object v0, v13

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->setPagesIconLayout(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageIndicator(Lcom/logitech/harmonylink/view/widget/PageIndicator;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPage(ILandroid/view/View;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPage(ILandroid/view/View;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move v1, v15

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPage(ILandroid/view/View;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 225
    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v8

    .line 227
    .local v8, harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->addDpadButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object v2, v6

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->addControlButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->addNumericButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v26

    if-nez v26, :cond_2

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->hideLastPage()V

    .line 241
    :goto_1
    return-void

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->showLastPage()V

    goto :goto_1

    .line 198
    nop

    :array_0
    .array-data 0x4
        0x42t 0x1t 0x7t 0x7ft
        0x43t 0x1t 0x7t 0x7ft
        0x5dt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private setTabAndPage(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 523
    if-eqz p1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 525
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 526
    if-eqz p2, :cond_0

    .line 527
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public getKeyboardView()Lcom/logitech/harmonylink/ka1x/view/KeyboardView;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    return-object v0
.end method

.method public hideKeyboard(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter "keyboardView"
    .parameter "parentView"

    .prologue
    const/4 v5, 0x0

    .line 642
    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 645
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 647
    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    const v4, 0x7f070167

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 649
    .local v2, keyboardLayout:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 651
    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    const v4, 0x7f070166

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 653
    .local v0, framesLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 655
    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 6

    .prologue
    .line 634
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab_keyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe4cccccccccccdL

    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/logitech/harmonylink/ka1x/util/Display;->getDisplayHeight(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;)V
    .locals 6
    .parameter "dom"
    .parameter "button"
    .parameter "irMapIdArray"

    .prologue
    const/4 v4, 0x0

    .line 375
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 376
    return-void
.end method

.method public setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10
    .parameter "dom"
    .parameter "button"
    .parameter "irMapIdArray"
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 386
    if-eqz p1, :cond_1

    .line 388
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v6

    .line 390
    .local v6, harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-eqz v6, :cond_1

    .line 392
    array-length v9, p3

    .line 394
    .local v9, irMapIdArrayLength:I
    const/4 v7, 0x0

    .local v7, irCommandIndex:I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 396
    aget-object v8, p3, v7

    .line 398
    .local v8, irMapId:Ljava/lang/String;
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v3

    .line 401
    .local v3, command:Lcom/logitech/harmonylink/harmony/Command;
    const/4 v0, 0x1

    sub-int v0, v9, v0

    if-ne v7, v0, :cond_0

    .line 402
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 405
    :cond_0
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$2;-><init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    if-eqz v3, :cond_3

    .line 435
    .end local v3           #command:Lcom/logitech/harmonylink/harmony/Command;
    .end local v6           #harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v7           #irCommandIndex:I
    .end local v8           #irMapId:Ljava/lang/String;
    .end local v9           #irMapIdArrayLength:I
    :cond_1
    return-void

    .line 402
    .restart local v3       #command:Lcom/logitech/harmonylink/harmony/Command;
    .restart local v6       #harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .restart local v7       #irCommandIndex:I
    .restart local v8       #irMapId:Ljava/lang/String;
    .restart local v9       #irMapIdArrayLength:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 394
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;)V
    .locals 6
    .parameter "dom"
    .parameter "button"
    .parameter "command"

    .prologue
    const/4 v4, 0x0

    .line 463
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 464
    return-void
.end method

.method public setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .parameter "dom"
    .parameter "button"
    .parameter "command"
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 471
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$4;-><init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    return-void
.end method

.method public setKeyboardLongPressKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .parameter "dom"
    .parameter "button"
    .parameter "command"
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 496
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$5;-><init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 520
    return-void
.end method

.method public setVoiceSearchButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .parameter "dom"
    .parameter "button"
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 441
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;

    invoke-direct {v0, p0, p3, p4}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$3;-><init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    return-void
.end method

.method public showHideUserDefinedPageView()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->refresh(Lcom/logitech/harmonylink/ui/common/BaseActivity;)V

    .line 251
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    const v2, 0x7f070140

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    .line 253
    .local v0, commandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 254
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->hideLastPage()V

    .line 259
    .end local v0           #commandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;
    :cond_0
    :goto_0
    return-void

    .line 256
    .restart local v0       #commandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;
    :cond_1
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->showLastPage()V

    goto :goto_0
.end method

.method public showKeyboard(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Landroid/view/View;)V
    .locals 6
    .parameter "keyboardView"
    .parameter "parentView"

    .prologue
    const/4 v5, 0x0

    .line 659
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setFocusableInTouchMode(Z)V

    .line 660
    invoke-virtual {p1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->requestFocus()Z

    .line 661
    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 663
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, p1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 665
    const v3, 0x7f070166

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 667
    .local v0, framesLayout:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 668
    const v3, 0x7f070167

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 670
    .local v2, keyboardLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->resetButtons()V

    .line 671
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    return-void
.end method
