.class public Lcom/logitech/harmonylink/ka1x/view/KeyboardView;
.super Landroid/widget/LinearLayout;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/ka1x/view/KeyboardView$MySliderObserver;
    }
.end annotation


# static fields
.field protected static IS_ALT_PRESSED:Z = false

.field protected static IS_FN_PRESSED:Z = false

.field public static final KEYBOARD_TAB_TAG:Ljava/lang/String; = "tab_keyboard"


# instance fields
.field protected final ALT_SELECTED:I

.field protected final FN_SELECTED:I

.field protected final NONE_SELECTED:I

.field mActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

.field private mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mConsiderSizeChange:Z

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mFocusState:Z

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mImageSearch:Landroid/widget/ToggleButton;

.field private mImageViewAltView:Landroid/widget/ToggleButton;

.field private mImageViewEsc:Landroid/widget/ToggleButton;

.field private mImageViewFnView:Landroid/widget/ToggleButton;

.field private mImageViewTab:Landroid/widget/ToggleButton;

.field private mIsSizeChangeBySlider:Z

.field mLastX:F

.field mLastY:F

.field mParentView:Landroid/view/View;

.field mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

.field final res:Landroid/content/res/Resources;

.field private sb:Ljava/lang/StringBuilder;

.field txtView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_ALT_PRESSED:Z

    .line 52
    sput-boolean v0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_FN_PRESSED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "logiActivity"
    .parameter "application"
    .parameter "parentView"

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->ALT_SELECTED:I

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->FN_SELECTED:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->NONE_SELECTED:I

    .line 53
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->res:Landroid/content/res/Resources;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    .line 71
    iput-object p2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    .line 72
    const-string v0, "tab_keyboard"

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setFocusable(Z)V

    .line 74
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setFocusableInTouchMode(Z)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setClickable(Z)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setEnabled(Z)V

    .line 78
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setMinimumHeight(I)V

    .line 79
    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setMinimumWidth(I)V

    .line 81
    iput-object p3, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 82
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 83
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteConnect()Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    .line 84
    iput-object p4, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mParentView:Landroid/view/View;

    .line 86
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 87
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 89
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->addView(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->initializeButtons()V

    .line 95
    invoke-direct {p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->handleRevueButtons()V

    .line 96
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$1;-><init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)V

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    new-instance v1, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$MySliderObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$MySliderObserver;-><init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Lcom/logitech/harmonylink/ka1x/view/KeyboardView$1;)V

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->addPeekABooSliderObserver(Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;)V

    .line 106
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$2;-><init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)V

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->clearText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;IZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setBitState(IZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic access$502(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mConsiderSizeChange:Z

    return p1
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;ILandroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setDrawable(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$902(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mIsSizeChangeBySlider:Z

    return p1
.end method

.method private clearText()Z
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    .line 232
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method private handleRevueButtonClick(Landroid/widget/ToggleButton;)V
    .locals 3
    .parameter "keyboardExtnButton"

    .prologue
    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v0, buttonCommandMapping:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/widget/ToggleButton;Lcom/logitech/harmonylink/harmony/Command;>;"
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    sget-object v2, Lcom/logitech/harmonylink/harmony/Command;->ESC:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    sget-object v2, Lcom/logitech/harmonylink/harmony/Command;->TAB:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    sget-object v2, Lcom/logitech/harmonylink/harmony/Command;->SEARCH:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_2
    new-instance v1, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$4;

    invoke-direct {v1, p0, v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$4;-><init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Ljava/util/HashMap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    return-void
.end method

.method private handleRevueButtons()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->handleRevueButtonClick(Landroid/widget/ToggleButton;)V

    .line 376
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->handleRevueButtonClick(Landroid/widget/ToggleButton;)V

    .line 377
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->handleRevueButtonClick(Landroid/widget/ToggleButton;)V

    .line 378
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->handleRevueToogleButtonClick(Landroid/widget/ToggleButton;)V

    .line 379
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->handleRevueToogleButtonClick(Landroid/widget/ToggleButton;)V

    .line 382
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mParentView:Landroid/view/View;

    const v2, 0x7f07016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 384
    .local v0, imageViewMicroPhone:Landroid/widget/ToggleButton;
    if-eqz v0, :cond_0

    .line 385
    new-instance v1, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$3;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$3;-><init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :cond_0
    return-void
.end method

.method private handleRevueToogleButtonClick(Landroid/widget/ToggleButton;)V
    .locals 1
    .parameter "keyboardExtnToogleButton"

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 431
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$5;-><init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    :cond_0
    return-void
.end method

.method private initializeButtons()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f070168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    .line 449
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f070169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    .line 450
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f07016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    .line 451
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f07016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    .line 452
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f07016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    .line 453
    return-void
.end method

.method private setBitState(IZZ)I
    .locals 9
    .parameter "currentInt"
    .parameter "alt_state"
    .parameter "fn_state"

    .prologue
    const/16 v8, 0x31

    const/16 v7, 0x30

    const/16 v6, 0x1e

    const/16 v5, 0x1c

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, binaryRepresentation:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "00000000000000000000000000000000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, buf2:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, buf:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    .line 257
    invoke-virtual {v1, v6, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 262
    :goto_0
    if-eqz p3, :cond_1

    .line 263
    invoke-virtual {v1, v5, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 266
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 259
    :cond_0
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1
.end method

.method private setDrawable(ILandroid/view/View;)Z
    .locals 3
    .parameter "buttonSelected"
    .parameter "mParentView"

    .prologue
    const/4 v2, 0x0

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, altViewState:Z
    const/4 v1, 0x0

    .line 514
    .local v1, fnViewState:Z
    packed-switch p1, :pswitch_data_0

    .line 532
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    .line 535
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 537
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 516
    :pswitch_1
    sput-boolean v2, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_ALT_PRESSED:Z

    .line 517
    sput-boolean v2, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_FN_PRESSED:Z

    .line 518
    const/4 v0, 0x0

    .line 519
    const/4 v1, 0x0

    .line 520
    goto :goto_0

    .line 522
    :pswitch_2
    sput-boolean v2, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_ALT_PRESSED:Z

    .line 523
    const/4 v0, 0x0

    .line 524
    const/4 v1, 0x1

    .line 525
    goto :goto_0

    .line 527
    :pswitch_3
    sput-boolean v2, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->IS_FN_PRESSED:Z

    .line 528
    const/4 v0, 0x1

    .line 529
    const/4 v1, 0x0

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .parameter "tag"

    .prologue
    .line 471
    return-object p0
.end method

.method public installTouchDelegate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x190

    const/16 v3, 0x320

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    .local v1, rectRoot:Landroid/graphics/Rect;
    new-instance v0, Landroid/view/TouchDelegate;

    invoke-direct {v0, v1, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 278
    .local v0, delegate:Landroid/view/TouchDelegate;
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 279
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mFocusState:Z

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mConsiderSizeChange:Z

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 228
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 485
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 494
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->writeMouseclick()Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mConsiderSizeChange:Z

    if-eqz v0, :cond_0

    if-ge p4, p2, :cond_0

    .line 196
    iget-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mIsSizeChangeBySlider:Z

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->notifyKeyboardViewObservers()V

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mFocusState:Z

    if-eqz v0, :cond_1

    if-lt p4, p2, :cond_1

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mConsiderSizeChange:Z

    .line 205
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 206
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mLastX:F

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mLastY:F

    .line 288
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->installTouchDelegate()V

    .line 304
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 305
    return v4

    .line 292
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mLastX:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 293
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mLastY:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 295
    .local v1, y:I
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    invoke-virtual {v2, v0, v1}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->writeMouse(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mLastX:F

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mLastY:F

    .line 300
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->uninstallTouchDelegate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "gainFocus"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 212
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 214
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->txtView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public resetButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 457
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 458
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 459
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 460
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 461
    return-void
.end method

.method public uninstallTouchDelegate()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 271
    return-void
.end method
