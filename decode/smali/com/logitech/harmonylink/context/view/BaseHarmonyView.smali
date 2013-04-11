.class public Lcom/logitech/harmonylink/context/view/BaseHarmonyView;
.super Landroid/view/View;
.source "BaseHarmonyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/view/BaseHarmonyView$ShowWatchGTVviewObserver;
    }
.end annotation


# static fields
.field static final COMMAND_TAB_TAG:Ljava/lang/String; = "tab_commands"

.field private static final LONG_PRESS_DELAY_MILIS:J = 0x3e8L


# instance fields
.field protected final DPAD_COMMANDS_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final LOG_TAG:Ljava/lang/String;

.field protected final NUMERIC_COMMANDS_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final NUMERIC_DIGITS_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field PEEKABOO_VIEW_ARRAY:[I

.field protected final SLIDER_COMMAND_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final TRANSPORT_COMMANDS_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isInKeyboardView:Z

.field public mActualWatchGtvView:Landroid/view/ViewGroup;

.field protected mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field protected mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

.field protected mConnectClient:Lcom/logitech/connect/ConnectClient;

.field protected mCtxWatchGTV:Landroid/content/Context;

.field protected mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

.field protected mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field protected mGestureView:Lcom/logitech/harmonylink/context/view/GestureView;

.field protected mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

.field protected mLastColumnCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

.field protected mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

.field protected mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

.field protected mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)V
    .locals 2
    .parameter "ctxWatchGTV"
    .parameter "logiActivity"
    .parameter "primaryControlInflator"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    const-class v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->LOG_TAG:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->SLIDER_COMMAND_IDS:Ljava/util/List;

    .line 76
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->TRANSPORT_COMMANDS_IDS:Ljava/util/List;

    .line 78
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->DPAD_COMMANDS_IDS:Ljava/util/List;

    .line 81
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->NUMERIC_DIGITS_IDS:Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->NUMERIC_COMMANDS_IDS:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLastColumnCommands:Ljava/util/List;

    .line 102
    iput-object p3, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    .line 103
    if-eqz p2, :cond_0

    .line 104
    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    .line 106
    :cond_0
    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteConnect()Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    .line 109
    return-void
.end method


# virtual methods
.method public DisableWatchGTVView()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    const/high16 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 130
    return-void
.end method

.method addControlButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 32
    .parameter "viewCommandButtons"
    .parameter "dom"

    .prologue
    .line 549
    const-string v29, "PrevChannel"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v21

    .line 550
    .local v21, prevChannel:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "Slow"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v25

    .line 552
    .local v25, slow:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "Aspect"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v5

    .line 554
    .local v5, aspect:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "VolumeUp"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v28

    .line 555
    .local v28, volumeup:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "VolumeDown"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v27

    .line 556
    .local v27, volumedown:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "Play"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v20

    .line 557
    .local v20, play:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "Pause"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v19

    .line 558
    .local v19, pause:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "Stop"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v26

    .line 559
    .local v26, stop:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "Record"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v23

    .line 560
    .local v23, record:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "ChannelUp"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v9

    .line 561
    .local v9, channelup:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "ChannelDown"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v8

    .line 562
    .local v8, channeldown:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "Mute"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v17

    .line 563
    .local v17, mute:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "FastForward"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v11

    .line 564
    .local v11, fastforward:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "Rewind"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v24

    .line 565
    .local v24, rewind:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "SkipBackward"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v22

    .line 566
    .local v22, previouschapter:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "SkipForward"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v18

    .line 567
    .local v18, nextchapter:Lcom/logitech/harmonylink/harmony/Command;
    const-string v29, "Eject"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v10

    .line 569
    .local v10, eject:Lcom/logitech/harmonylink/harmony/Command;
    const/16 v29, 0x11

    move/from16 v0, v29

    new-array v0, v0, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    move-object/from16 v16, v0

    const/16 v29, 0x0

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070155

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x1

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070159

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x2

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070156

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x3

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070157

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x4

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070162

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x5

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070161

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x6

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070158

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x7

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f07015c

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x8

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f07015d

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x9

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f07015b

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0xa

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f07015a

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0xb

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f07015f

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0xc

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f07015e

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0xd

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070163

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0xe

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070160

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0xf

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070164

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    const/16 v29, 0x10

    new-instance v30, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v31, 0x7f070177

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v30, v16, v29

    .line 589
    .local v16, mediaKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    move-object/from16 v4, v16

    .local v4, arr$:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    array-length v14, v4

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v14, :cond_5

    aget-object v15, v4, v12

    .line 590
    .local v15, mediaKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    move-object v0, v15

    iget v0, v0, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mButtonID:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 593
    .local v7, button:Landroid/view/View;
    if-eqz v7, :cond_2

    .line 594
    invoke-virtual {v15}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->getCommand()Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v29

    if-nez v29, :cond_4

    .line 595
    move-object v0, v7

    instance-of v0, v0, Landroid/widget/ImageButton;

    move/from16 v29, v0

    if-eqz v29, :cond_3

    .line 596
    move-object v0, v7

    check-cast v0, Landroid/widget/ImageButton;

    move-object v13, v0

    .line 597
    .local v13, imgButton:Landroid/widget/ImageButton;
    invoke-virtual {v13}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 598
    invoke-virtual {v13}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    const/16 v30, 0x32

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 605
    .end local v13           #imgButton:Landroid/widget/ImageButton;
    :cond_0
    :goto_1
    const/16 v29, 0x0

    move-object v0, v7

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 606
    const/16 v29, 0x0

    move-object v0, v7

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 607
    const/16 v29, 0x0

    move-object v0, v7

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 617
    :cond_1
    :goto_2
    move-object v0, v15

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v7

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;)V

    .line 589
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 600
    :cond_3
    move-object v0, v7

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 601
    move-object v0, v7

    check-cast v0, Landroid/widget/Button;

    move-object v6, v0

    .line 602
    .local v6, btn:Landroid/widget/Button;
    const v29, -0x777778

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 609
    .end local v6           #btn:Landroid/widget/Button;
    :cond_4
    move-object v0, v7

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 610
    move-object v0, v7

    check-cast v0, Landroid/widget/Button;

    move-object v6, v0

    .line 611
    .restart local v6       #btn:Landroid/widget/Button;
    const/16 v29, -0x1

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 621
    .end local v6           #btn:Landroid/widget/Button;
    .end local v7           #button:Landroid/view/View;
    .end local v15           #mediaKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    :cond_5
    return-void
.end method

.method addDpadButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 11
    .parameter "thostTabs"
    .parameter "dom"

    .prologue
    .line 625
    const-string v8, "PageUp"

    invoke-virtual {p2, v8}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v7

    .line 626
    .local v7, pageup:Lcom/logitech/harmonylink/harmony/Command;
    const-string v8, "PageDown"

    invoke-virtual {p2, v8}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v6

    .line 627
    .local v6, pagedown:Lcom/logitech/harmonylink/harmony/Command;
    const/4 v8, 0x2

    new-array v3, v8, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const/4 v8, 0x0

    new-instance v9, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v10, 0x7f07005a

    invoke-direct {v9, v10, v7}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v9, v3, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v10, 0x7f07005b

    invoke-direct {v9, v10, v6}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v9, v3, v8

    .line 639
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

    .line 641
    .local v2, buttonKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    iget v8, v2, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mButtonID:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 642
    .local v1, button:Landroid/widget/ImageButton;
    iget-object v8, v2, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {p0, p2, v1, v8}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;)V

    .line 639
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 645
    .end local v1           #button:Landroid/widget/ImageButton;
    .end local v2           #buttonKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    :cond_0
    return-void
.end method

.method addDumpCommands(Ljava/util/ArrayList;I)V
    .locals 13
    .parameter
    .parameter "screenWidth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, dumpCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    const v2, 0x7f070141

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 253
    .local v10, parentLayout:Landroid/widget/RelativeLayout;
    const/4 v2, 0x0

    .line 254
    .local v2, gridPage:Landroid/widget/GridView;
    const/4 v6, 0x0

    .line 255
    .local v6, commandsPage:Lcom/logitech/harmonylink/harmony/Commands;
    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    .line 256
    .local v11, r:Ljava/util/Random;
    const/4 v8, 0x0

    .local v8, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 258
    rem-int/lit8 v1, v8, 0x10

    if-nez v1, :cond_1

    .line 259
    new-instance v6, Lcom/logitech/harmonylink/harmony/Commands;

    .end local v6           #commandsPage:Lcom/logitech/harmonylink/harmony/Commands;
    invoke-direct {v6}, Lcom/logitech/harmonylink/harmony/Commands;-><init>()V

    .line 260
    .restart local v6       #commandsPage:Lcom/logitech/harmonylink/harmony/Commands;
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .end local v2           #gridPage:Landroid/widget/GridView;
    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 262
    .restart local v2       #gridPage:Landroid/widget/GridView;
    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mCtxWatchGTV:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 263
    .local v7, childLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 264
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {v9, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 267
    .local v9, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 268
    .local v12, v:Landroid/view/View;
    if-eqz v12, :cond_0

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v9, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    :cond_0
    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 273
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v10, v7, v1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v0, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x4

    const/4 v4, 0x4

    const v5, 0x7f030015

    invoke-direct/range {v0 .. v6}, Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IIILjava/util/List;)V

    .line 278
    .local v0, commandsAdapter:Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    new-instance v1, Lcom/logitech/harmonylink/context/view/GridViewListener;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {v1, v2, v3}, Lcom/logitech/harmonylink/context/view/GridViewListener;-><init>(Landroid/widget/GridView;Lcom/logitech/harmonylink/harmony/Dom;)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    invoke-virtual {v1, p2, v7}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPage(ILandroid/view/View;)V

    .line 285
    .end local v0           #commandsAdapter:Lcom/logitech/harmonylink/view/widget/GridCommandsAdapter;
    .end local v7           #childLayout:Landroid/widget/RelativeLayout;
    .end local v9           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12           #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v6, v0}, Lcom/logitech/harmonylink/harmony/Commands;->add(Lcom/logitech/harmonylink/harmony/Command;)Z

    .line 256
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 287
    :cond_2
    return-void
.end method

.method addNumericButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 28
    .parameter "viewNumericButtons"
    .parameter "dom"

    .prologue
    .line 509
    const-string v22, "Number0"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v21

    .line 510
    .local v21, zero:Lcom/logitech/harmonylink/harmony/Command;
    const-string v22, "Number1"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v16

    .line 511
    .local v16, one:Lcom/logitech/harmonylink/harmony/Command;
    const-string v22, "Number2"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v20

    .line 512
    .local v20, two:Lcom/logitech/harmonylink/harmony/Command;
    const-string v22, "Number3"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v19

    .line 513
    .local v19, three:Lcom/logitech/harmonylink/harmony/Command;
    const-string v22, "Number4"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v11

    .line 514
    .local v11, four:Lcom/logitech/harmonylink/harmony/Command;
    const-string v22, "Number5"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v10

    .line 515
    .local v10, five:Lcom/logitech/harmonylink/harmony/Command;
    const-string v22, "Number6"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v18

    .line 516
    .local v18, six:Lcom/logitech/harmonylink/harmony/Command;
    const-string v22, "Number7"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v17

    .line 517
    .local v17, seven:Lcom/logitech/harmonylink/harmony/Command;
    const-string v22, "Number8"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v9

    .line 518
    .local v9, eight:Lcom/logitech/harmonylink/harmony/Command;
    const-string v22, "Number9"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v15

    .line 519
    .local v15, nine:Lcom/logitech/harmonylink/harmony/Command;
    const/16 v22, 0xa

    move/from16 v0, v22

    new-array v0, v0, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    move-object v8, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f070152

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    const/16 v22, 0x1

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f070148

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    const/16 v22, 0x2

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f070149

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    const/16 v22, 0x3

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f07014a

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    const/16 v22, 0x4

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f07014b

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    const/16 v22, 0x5

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f07014c

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    const/16 v22, 0x6

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f07014d

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    const/16 v22, 0x7

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f07014e

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    const/16 v22, 0x8

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f07014f

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    const/16 v22, 0x9

    new-instance v23, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v24, 0x7f070150

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v23, v8, v22

    .line 531
    .local v8, buttonKeycodeMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/logitech/harmonylink/harmony/IRMapping;

    move-object v7, v0

    const/16 v22, 0x0

    new-instance v23, Lcom/logitech/harmonylink/harmony/IRMapping;

    const v24, 0x7f070153

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "NumberEnter"

    aput-object v27, v25, v26

    invoke-direct/range {v23 .. v25}, Lcom/logitech/harmonylink/harmony/IRMapping;-><init>(I[Ljava/lang/String;)V

    aput-object v23, v7, v22

    const/16 v22, 0x1

    new-instance v23, Lcom/logitech/harmonylink/harmony/IRMapping;

    const v24, 0x7f070151

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "Star"

    aput-object v27, v25, v26

    invoke-direct/range {v23 .. v25}, Lcom/logitech/harmonylink/harmony/IRMapping;-><init>(I[Ljava/lang/String;)V

    aput-object v23, v7, v22

    .line 535
    .local v7, buttonIRMapArray:[Lcom/logitech/harmonylink/harmony/IRMapping;
    move-object v4, v8

    .local v4, arr$:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    array-length v14, v4

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v14, :cond_0

    aget-object v13, v4, v12

    .line 536
    .local v13, k:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    move-object v0, v13

    iget v0, v0, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mButtonID:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 537
    .local v5, button:Landroid/widget/ImageButton;
    move-object v0, v13

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;)V

    .line 535
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 540
    .end local v5           #button:Landroid/widget/ImageButton;
    .end local v13           #k:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    :cond_0
    move-object v4, v7

    .local v4, arr$:[Lcom/logitech/harmonylink/harmony/IRMapping;
    array-length v14, v4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_1

    aget-object v6, v4, v12

    .line 541
    .local v6, buttonIRMap:Lcom/logitech/harmonylink/harmony/IRMapping;
    move-object v0, v6

    iget v0, v0, Lcom/logitech/harmonylink/harmony/IRMapping;->mButtonID:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 543
    .restart local v5       #button:Landroid/widget/ImageButton;
    move-object v0, v6

    iget-object v0, v0, Lcom/logitech/harmonylink/harmony/IRMapping;->mIRNameArray:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;)V

    .line 540
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 545
    .end local v5           #button:Landroid/widget/ImageButton;
    .end local v6           #buttonIRMap:Lcom/logitech/harmonylink/harmony/IRMapping;
    :cond_1
    return-void
.end method

.method addTextViewButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 13
    .parameter "paraentView"
    .parameter "dom"

    .prologue
    const/4 v12, 0x1

    .line 649
    const-string v9, "Eject"

    invoke-virtual {p2, v9}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v4

    .line 650
    .local v4, eject:Lcom/logitech/harmonylink/harmony/Command;
    const-string v9, "Shuffle"

    invoke-virtual {p2, v9}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v8

    .line 651
    .local v8, shuffle:Lcom/logitech/harmonylink/harmony/Command;
    const-string v9, "Repeat"

    invoke-virtual {p2, v9}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v7

    .line 653
    .local v7, repeat:Lcom/logitech/harmonylink/harmony/Command;
    const/4 v9, 0x3

    new-array v3, v9, [Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const/4 v9, 0x0

    new-instance v10, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v11, 0x7f070175

    invoke-direct {v10, v11, v4}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v10, v3, v9

    new-instance v9, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v10, 0x7f070174

    invoke-direct {v9, v10, v8}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v9, v3, v12

    const/4 v9, 0x2

    new-instance v10, Lcom/logitech/harmonylink/harmony/KeycodeMapping;

    const v11, 0x7f070173

    invoke-direct {v10, v11, v7}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;-><init>(ILcom/logitech/harmonylink/harmony/Command;)V

    aput-object v10, v3, v9

    .line 658
    .local v3, buttonKeyMapArray:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    move-object v0, v3

    .local v0, arr$:[Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 660
    .local v2, buttonKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    iget v9, v2, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mButtonID:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 661
    .local v1, button:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->getCommand()Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 662
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setClickable(Z)V

    .line 663
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    :cond_0
    iget-object v9, v2, Lcom/logitech/harmonylink/harmony/KeycodeMapping;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {p0, p2, v1, v9}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;)V

    .line 658
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 668
    .end local v1           #button:Landroid/widget/TextView;
    .end local v2           #buttonKeyMap:Lcom/logitech/harmonylink/harmony/KeycodeMapping;
    :cond_1
    return-void
.end method

.method addlastRowCommands(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 8
    .parameter
    .parameter "movieUserButtons"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, lastrowCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 167
    const/4 v5, 0x4

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 169
    .local v1, buttonids:[I
    const v5, 0x7f0700a7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 170
    .local v4, lastRow:Landroid/widget/LinearLayout;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 172
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/harmony/Command;

    .line 174
    .local v2, command:Lcom/logitech/harmonylink/harmony/Command;
    aget v5, v1, v3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    .local v0, button:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/Command;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 178
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 179
    new-instance v5, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;

    invoke-direct {v5, p0, v2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$1;-><init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/harmony/Command;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v0           #button:Landroid/widget/TextView;
    .end local v2           #command:Lcom/logitech/harmonylink/harmony/Command;
    :cond_0
    return-void

    .line 167
    nop

    :array_0
    .array-data 0x4
        0xa8t 0x0t 0x7t 0x7ft
        0xa9t 0x0t 0x7t 0x7ft
        0xaat 0x0t 0x7t 0x7ft
        0xabt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public getDirectNavigationTabs()Lcom/logitech/harmonylink/view/widget/CustomTabView;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    return-object v0
.end method

.method public getDumpCommands()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/harmony/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, dumpCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getLastColoumnCommands()Ljava/util/List;

    .line 155
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getCommands()Lcom/logitech/harmonylink/harmony/Commands;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Commands;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Command;

    .line 156
    .local v0, command:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Command;->getCommandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->isDumpScreenCommand(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v0           #command:Lcom/logitech/harmonylink/harmony/Command;
    :cond_1
    return-object v1
.end method

.method public getGestureView()Lcom/logitech/harmonylink/context/view/GestureView;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mGestureView:Lcom/logitech/harmonylink/context/view/GestureView;

    return-object v0
.end method

.method public getKeyboardView()Lcom/logitech/harmonylink/context/view/KeyboardView;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

    return-object v0
.end method

.method getLastColoumnCommands()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, currentActivityLabel:Ljava/lang/String;
    const-string v1, "VirtualDvd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLastColumnCommands:Ljava/util/List;

    .line 247
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLastColumnCommands:Ljava/util/List;

    return-object v1

    .line 233
    :cond_1
    const-string v1, "VirtualGameConsole"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLastColumnCommands:Ljava/util/List;

    goto :goto_0

    .line 236
    :cond_2
    const-string v1, "VirtualCdMulti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLastColumnCommands:Ljava/util/List;

    goto :goto_0

    .line 239
    :cond_3
    const-string v1, "VirtualTelevisionN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLastColumnCommands:Ljava/util/List;

    goto :goto_0

    .line 242
    :cond_4
    const-string v1, "WatchGTV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "VirtualGeneric"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLastColumnCommands:Ljava/util/List;

    goto :goto_0
.end method

.method public hideKeyboard(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "keyboardView"
    .parameter "parentView"

    .prologue
    .line 678
    return-void
.end method

.method protected inflateView(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V
    .locals 1
    .parameter "ctxWatchGTV"
    .parameter "logiActivity"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mCtxWatchGTV:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 123
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 124
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 126
    return-void
.end method

.method public isDumpScreenCommand(Ljava/lang/String;)Z
    .locals 2
    .parameter "commandId"

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->NUMERIC_COMMANDS_IDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->SLIDER_COMMAND_IDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->TRANSPORT_COMMANDS_IDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->DPAD_COMMANDS_IDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->NUMERIC_DIGITS_IDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 219
    goto :goto_0

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLastColumnCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 222
    goto :goto_0

    .line 224
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isKeyboardView()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->isInKeyboardView:Z

    return v0
.end method

.method public isKeyboardVisible()Z
    .locals 6

    .prologue
    .line 671
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab_keyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe4cccccccccccdL

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->getDisplayHeight(Landroid/content/Context;)I

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
    .line 133
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setIRButton(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .parameter "dom"
    .parameter "button"
    .parameter "irString"

    .prologue
    const/4 v4, 0x0

    .line 372
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setIRButton(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 373
    return-void
.end method

.method public setIRButton(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7
    .parameter "dom"
    .parameter "button"
    .parameter "irString"
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 378
    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v6

    .line 382
    .local v6, harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-eqz v6, :cond_0

    .line 383
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v3

    .line 384
    .local v3, command:Lcom/logitech/harmonylink/harmony/Command;
    new-instance v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$3;-><init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    .end local v3           #command:Lcom/logitech/harmonylink/harmony/Command;
    .end local v6           #harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_0
    return-void
.end method

.method public setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;)V
    .locals 6
    .parameter "dom"
    .parameter "button"
    .parameter "irMapIdArray"

    .prologue
    const/4 v4, 0x0

    .line 321
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 322
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
    .line 331
    if-eqz p1, :cond_1

    .line 333
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v6

    .line 335
    .local v6, harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-eqz v6, :cond_1

    .line 337
    array-length v9, p3

    .line 339
    .local v9, irMapIdArrayLength:I
    const/4 v7, 0x0

    .local v7, irCommandIndex:I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 341
    aget-object v8, p3, v7

    .line 343
    .local v8, irMapId:Ljava/lang/String;
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/logitech/harmonylink/harmony/Dom;->getCommandForActivity(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/Command;

    move-result-object v3

    .line 346
    .local v3, command:Lcom/logitech/harmonylink/harmony/Command;
    const/4 v0, 0x1

    sub-int v0, v9, v0

    if-ne v7, v0, :cond_0

    .line 347
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 350
    :cond_0
    new-instance v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$2;-><init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    if-eqz v3, :cond_3

    .line 369
    .end local v3           #command:Lcom/logitech/harmonylink/harmony/Command;
    .end local v6           #harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v7           #irCommandIndex:I
    .end local v8           #irMapId:Ljava/lang/String;
    .end local v9           #irMapIdArrayLength:I
    :cond_1
    return-void

    .line 347
    .restart local v3       #command:Lcom/logitech/harmonylink/harmony/Command;
    .restart local v6       #harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .restart local v7       #irCommandIndex:I
    .restart local v8       #irMapId:Ljava/lang/String;
    .restart local v9       #irMapIdArrayLength:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 339
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

    .line 421
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 422
    return-void
.end method

.method public setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7
    .parameter "dom"
    .parameter "button"
    .parameter "command"
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 428
    new-instance v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$5;-><init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/harmony/Command;Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
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
    .line 470
    new-instance v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$6;-><init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 494
    return-void
.end method

.method setTabAndPage(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 499
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 500
    if-eqz p2, :cond_0

    .line 501
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    .line 505
    :cond_0
    return-void
.end method

.method public setVoiceSearchButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .parameter "dom"
    .parameter "button"
    .parameter "tabNumber"
    .parameter "pageNumber"

    .prologue
    .line 401
    new-instance v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$4;

    invoke-direct {v0, p0, p3, p4}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$4;-><init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    return-void
.end method

.method public showHideUserDefinedPageView()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->refresh(Lcom/logitech/harmonylink/ui/common/BaseActivity;)V

    .line 140
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    const v2, 0x7f070140

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    .line 142
    .local v0, commandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getCurrentScreenView()Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->hideLastPage()V

    .line 148
    .end local v0           #commandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;
    :cond_0
    :goto_0
    return-void

    .line 145
    .restart local v0       #commandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;
    :cond_1
    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->showLastPage()V

    goto :goto_0
.end method

.method public showKeyboard(Lcom/logitech/harmonylink/context/view/KeyboardView;Landroid/view/View;)V
    .locals 0
    .parameter "keyboardView"
    .parameter "parentView"

    .prologue
    .line 682
    return-void
.end method
