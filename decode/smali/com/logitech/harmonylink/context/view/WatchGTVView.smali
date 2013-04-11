.class public Lcom/logitech/harmonylink/context/view/WatchGTVView;
.super Lcom/logitech/harmonylink/context/view/BaseHarmonyView;
.source "WatchGTVView.java"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/WatchGtvActivity;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)V
    .locals 1
    .parameter "ctxWatchGTV"
    .parameter "watchGtvActivity"
    .parameter "primaryControlInflator"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)V

    .line 35
    const-class v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->LOG_TAG:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->inflateWatchGtvView(Landroid/content/Context;Lcom/logitech/harmonylink/context/WatchGtvActivity;)V

    .line 54
    return-void
.end method


# virtual methods
.method public hideKeyboard(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter "keyboardView"
    .parameter "parentView"

    .prologue
    const/4 v5, 0x0

    .line 225
    if-nez p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 231
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 233
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    const v4, 0x7f070167

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 235
    .local v2, keyboardLayout:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    const v4, 0x7f070166

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 239
    .local v0, framesLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method inflateWatchGtvView(Landroid/content/Context;Lcom/logitech/harmonylink/context/WatchGtvActivity;)V
    .locals 31
    .parameter "ctxWatchGTV"
    .parameter "watchGtvActivity"

    .prologue
    .line 58
    invoke-super/range {p0 .. p2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->inflateView(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V

    .line 60
    const v28, 0x7f070138

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewStub;

    .line 63
    .local v19, stubWatchGtv:Landroid/view/ViewStub;
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    .line 64
    const v28, 0x7f0700cd

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 66
    .local v20, title:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v28, 0x7f070165

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewStub;

    .line 69
    .local v18, stubDirectNav:Landroid/view/ViewStub;
    const v28, 0x7f03005b

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 70
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setup()V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    const v29, 0x7f070140

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageParentViewGroup(Landroid/view/ViewGroup;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageMode(Z)V

    .line 79
    new-instance v28, Lcom/logitech/harmonylink/context/view/GestureView;

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/context/view/GestureView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mGestureView:Lcom/logitech/harmonylink/context/view/GestureView;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mGestureView:Lcom/logitech/harmonylink/context/view/GestureView;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setContentView(ILandroid/view/View;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object v0, v5

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, hubId:Ljava/lang/String;
    const-string v28, "82"

    move-object/from16 v0, v28

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    const v29, 0x7f07013f

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 89
    .local v5, commandTab:Landroid/view/ViewGroup;
    const-string v28, "tab_commands"

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 90
    new-instance v21, Lcom/logitech/harmonylink/context/view/TrackpadView;

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    .end local v5           #commandTab:Landroid/view/ViewGroup;
    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/context/view/TrackpadView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 93
    .local v21, trackpadView:Lcom/logitech/harmonylink/context/view/TrackpadView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setContentView(ILandroid/view/View;)V

    .line 95
    new-instance v28, Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/context/view/KeyboardView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/WatchGtvActivity;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/View;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

    .line 100
    new-instance v27, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$ShowWatchGTVviewObserver;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$ShowWatchGTVviewObserver;-><init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;)V

    .line 101
    .local v27, watchgtvObserver:Lcom/logitech/harmonylink/context/view/BaseHarmonyView$ShowWatchGTVviewObserver;
    if-eqz v27, :cond_0

    .line 102
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->addKeyboardViewObserver(Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;)V

    .line 105
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    const/16 v29, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setContentView(ILandroid/view/View;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setFocusable(Z)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setFocusableInTouchMode(Z)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setClickable(Z)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setEnabled(Z)V

    .line 113
    .end local v21           #trackpadView:Lcom/logitech/harmonylink/context/view/TrackpadView;
    .end local v27           #watchgtvObserver:Lcom/logitech/harmonylink/context/view/BaseHarmonyView$ShowWatchGTVviewObserver;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    new-instance v29, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;-><init>(Lcom/logitech/harmonylink/context/view/WatchGTVView;)V

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v6

    .line 142
    .local v6, dom:Lcom/logitech/harmonylink/harmony/Dom;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    const v29, 0x7f070166

    invoke-virtual/range {v28 .. v29}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 145
    .local v22, vgrpFrameModes:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mPrimaryControlInflator:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->inflatePrimaryControlView(Landroid/view/ViewGroup;Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Landroid/view/ViewGroup;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    const v29, 0x7f070143

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    .line 150
    .local v24, vgrpFrameUserButtons:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v28

    const v29, 0x7f03005f

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 153
    .local v26, viewWatchGtvUserButtons:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    const v29, 0x7f070142

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 155
    .local v23, vgrpFrameNumericButtons:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v28

    const v29, 0x7f03005e

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 159
    .local v25, viewWatchGtvNumericButtons:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->getDumpCommands()Ljava/util/ArrayList;

    move-result-object v7

    .line 161
    .local v7, dumpCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/harmony/Command;>;"
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 162
    .local v11, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p2 .. p2}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 165
    move-object v0, v11

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 167
    .local v17, screenWidth:I
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object v12, v0

    fill-array-data v12, :array_0

    .line 169
    .local v12, pageIDArray:[I
    const/4 v10, 0x0

    .local v10, indexPage:I
    :goto_0
    move-object v0, v12

    array-length v0, v0

    move/from16 v28, v0

    move v0, v10

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    aget v29, v12, v10

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 172
    .local v14, pageView:Landroid/view/View;
    if-eqz v14, :cond_2

    .line 173
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move/from16 v0, v17

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    invoke-virtual {v14}, Landroid/view/View;->requestLayout()V

    .line 169
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 179
    .end local v14           #pageView:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    const v29, 0x7f070048

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/logitech/harmonylink/view/widget/PageIndicator;

    .line 181
    .local v13, pageIndicator:Lcom/logitech/harmonylink/view/widget/PageIndicator;
    const v28, 0x7f030047

    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PageIndicator;->setPagesIconLayout(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageIndicator(Lcom/logitech/harmonylink/view/widget/PageIndicator;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPage(ILandroid/view/View;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->addPage(ILandroid/view/View;)V

    .line 188
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->addDumpCommands(Ljava/util/ArrayList;I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCommandScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 192
    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivity()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v8

    .line 194
    .local v8, harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->addDpadButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->addControlButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->addNumericButtonHandlers(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mCtxWatchGTV:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v15

    .line 206
    .local v15, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v28, "screen"

    const/16 v29, 0x0

    move-object v0, v15

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 207
    .local v16, screen:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 208
    const-string v28, "keyboard"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-object/from16 v28, v0

    const/16 v29, 0x3

    invoke-virtual/range {v28 .. v29}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 213
    :cond_4
    return-void

    .line 167
    :array_0
    .array-data 0x4
        0x42t 0x1t 0x7t 0x7ft
        0x43t 0x1t 0x7t 0x7ft
    .end array-data
.end method

.method public isKeyboardView()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->isInKeyboardView:Z

    return v0
.end method

.method public isKeyboardVisible()Z
    .locals 6

    .prologue
    .line 269
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab_keyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe4cccccccccccdL

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->getContext()Landroid/content/Context;

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

.method public showKeyboard(Lcom/logitech/harmonylink/context/view/KeyboardView;Landroid/view/View;)V
    .locals 6
    .parameter "keyboardView"
    .parameter "parentView"

    .prologue
    const/4 v5, 0x0

    .line 244
    if-nez p1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 247
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setFocusableInTouchMode(Z)V

    .line 248
    invoke-virtual {p1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->requestFocus()Z

    .line 249
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 251
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, p1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 253
    const v3, 0x7f070166

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 255
    .local v0, framesLayout:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    const v3, 0x7f070167

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 258
    .local v2, keyboardLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->resetButtons()V

    .line 259
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
