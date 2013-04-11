.class public Lcom/logitech/harmonylink/context/view/KeyboardView;
.super Landroid/widget/LinearLayout;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/view/KeyboardView$MyVoiceSearchObserver;,
        Lcom/logitech/harmonylink/context/view/KeyboardView$MySliderObserver;
    }
.end annotation


# static fields
.field protected static IS_ALT_PRESSED:Z = false

.field protected static IS_FN_PRESSED:Z = false

.field public static final KEYBOARD_TAB_TAG:Ljava/lang/String; = "tab_keyboard"

.field static final LOG_TAG:Ljava/lang/String;

.field public static findMe:Ljava/lang/String;


# instance fields
.field protected final ALT_SELECTED:I

.field protected final FN_SELECTED:I

.field protected final NONE_SELECTED:I

.field mActivity:Lcom/logitech/harmonylink/context/WatchGtvActivity;

.field private mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mImageSearch:Landroid/widget/ToggleButton;

.field private mImageViewAltView:Landroid/widget/ToggleButton;

.field private mImageViewEsc:Landroid/widget/ToggleButton;

.field private mImageViewFnView:Landroid/widget/ToggleButton;

.field private mImageViewTab:Landroid/widget/ToggleButton;

.field mLastX:F

.field mLastY:F

.field mParentView:Landroid/view/View;

.field mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

.field final res:Landroid/content/res/Resources;

.field private sb:Ljava/lang/StringBuilder;

.field txtView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v0, "findMe"

    sput-object v0, Lcom/logitech/harmonylink/context/view/KeyboardView;->findMe:Ljava/lang/String;

    .line 47
    sput-boolean v1, Lcom/logitech/harmonylink/context/view/KeyboardView;->IS_ALT_PRESSED:Z

    .line 48
    sput-boolean v1, Lcom/logitech/harmonylink/context/view/KeyboardView;->IS_FN_PRESSED:Z

    .line 50
    const-class v0, Lcom/logitech/harmonylink/context/view/KeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/view/KeyboardView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/logitech/harmonylink/context/WatchGtvActivity;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/View;)V
    .locals 6
    .parameter "context"
    .parameter "watchGtvActivity"
    .parameter "application"
    .parameter "parentView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v1, 0x4

    iput v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->ALT_SELECTED:I

    .line 45
    const/4 v1, 0x5

    iput v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->FN_SELECTED:I

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->NONE_SELECTED:I

    .line 49
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->res:Landroid/content/res/Resources;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    .line 68
    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/context/WatchGtvActivity;

    .line 69
    const-string v1, "tab_keyboard"

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setFocusableInTouchMode(Z)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setClickable(Z)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setEnabled(Z)V

    .line 75
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setMinimumHeight(I)V

    .line 76
    const/16 v1, 0x140

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setMinimumWidth(I)V

    .line 78
    iput-object p3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 79
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 80
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteConnect()Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    .line 81
    iput-object p4, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mParentView:Landroid/view/View;

    .line 83
    new-instance v0, Lcom/logitech/harmonylink/context/view/KeyboardView$MyVoiceSearchObserver;

    invoke-direct {v0, p0, v5}, Lcom/logitech/harmonylink/context/view/KeyboardView$MyVoiceSearchObserver;-><init>(Lcom/logitech/harmonylink/context/view/KeyboardView;Lcom/logitech/harmonylink/context/view/KeyboardView$1;)V

    .line 84
    .local v0, mMyVoiceSearchObserver:Lcom/logitech/harmonylink/context/view/KeyboardView$MyVoiceSearchObserver;
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->createVoiceSearchObserver(Lcom/logitech/harmonylink/softkeyboard/IVoiceSearchObserver;)V

    .line 86
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 87
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 89
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    sget-object v2, Lcom/logitech/harmonylink/context/view/KeyboardView;->findMe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->addView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->initializeButtons()V

    .line 96
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->handleRevueButtons()V

    .line 97
    new-instance v1, Lcom/logitech/harmonylink/context/view/KeyboardView$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/view/KeyboardView$1;-><init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 105
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/context/WatchGtvActivity;

    new-instance v2, Lcom/logitech/harmonylink/context/view/KeyboardView$MySliderObserver;

    invoke-direct {v2, p0, v5}, Lcom/logitech/harmonylink/context/view/KeyboardView$MySliderObserver;-><init>(Lcom/logitech/harmonylink/context/view/KeyboardView;Lcom/logitech/harmonylink/context/view/KeyboardView$1;)V

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->addPeekABooSliderObserver(Lcom/logitech/harmonylink/context/view/IPeekABooSliderObserver;)V

    .line 107
    new-instance v1, Lcom/logitech/harmonylink/context/view/KeyboardView$2;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/view/KeyboardView$2;-><init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 220
    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/view/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->clearText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/context/view/KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->reDrawRevueToogleButtons()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/context/view/KeyboardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->triggerVoiceSearch()V

    return-void
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/context/view/KeyboardView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/context/view/KeyboardView;->sendToRevue(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/context/view/KeyboardView;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/logitech/harmonylink/context/view/KeyboardView;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/context/view/KeyboardView;IZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setBitState(IZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/context/view/KeyboardView;)Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/context/view/KeyboardView;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/context/view/KeyboardView;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private clearText()Z
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    .line 244
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method private handleRevueButtonClick(Landroid/widget/ToggleButton;)V
    .locals 3
    .parameter "keyboardExtnButton"

    .prologue
    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v0, buttonCommandMapping:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/widget/ToggleButton;Lcom/logitech/harmonylink/harmony/Command;>;"
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    sget-object v2, Lcom/logitech/harmonylink/harmony/Command;->ESC:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    sget-object v2, Lcom/logitech/harmonylink/harmony/Command;->TAB:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    .line 426
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    sget-object v2, Lcom/logitech/harmonylink/harmony/Command;->SEARCH:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_2
    new-instance v1, Lcom/logitech/harmonylink/context/view/KeyboardView$4;

    invoke-direct {v1, p0, v0}, Lcom/logitech/harmonylink/context/view/KeyboardView$4;-><init>(Lcom/logitech/harmonylink/context/view/KeyboardView;Ljava/util/HashMap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    return-void
.end method

.method private handleRevueButtons()V
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->handleRevueButtonClick(Landroid/widget/ToggleButton;)V

    .line 388
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->handleRevueButtonClick(Landroid/widget/ToggleButton;)V

    .line 389
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->handleRevueButtonClick(Landroid/widget/ToggleButton;)V

    .line 390
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->handleRevueToogleButtonClick(Landroid/widget/ToggleButton;)V

    .line 391
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/context/view/KeyboardView;->handleRevueToogleButtonClick(Landroid/widget/ToggleButton;)V

    .line 394
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mParentView:Landroid/view/View;

    const v2, 0x7f07016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 396
    .local v0, imageViewMicroPhone:Landroid/widget/ToggleButton;
    if-eqz v0, :cond_0

    .line 397
    new-instance v1, Lcom/logitech/harmonylink/context/view/KeyboardView$3;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/view/KeyboardView$3;-><init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    :cond_0
    return-void
.end method

.method private handleRevueToogleButtonClick(Landroid/widget/ToggleButton;)V
    .locals 1
    .parameter "keyboardExtnToogleButton"

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 443
    new-instance v0, Lcom/logitech/harmonylink/context/view/KeyboardView$5;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/view/KeyboardView$5;-><init>(Lcom/logitech/harmonylink/context/view/KeyboardView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    :cond_0
    return-void
.end method

.method private initializeButtons()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f070168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    .line 460
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f070169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    .line 461
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f07016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    .line 462
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f07016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    .line 463
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mParentView:Landroid/view/View;

    const v1, 0x7f07016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    .line 464
    return-void
.end method

.method private reDrawRevueToogleButtons()Z
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isAltPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 523
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getKeyboard()Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/softkeyboard/RevueKeyboard;->isFunctionPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method private sendToRevue(II)V
    .locals 3
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyCommunicator()Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/logitech/harmonylink/softkeyboard/HarmonyCommunicator;->sendRequestToRevue(Lcom/logitech/harmonylink/HarmonyRemoteApplication;IIZ)Z

    .line 574
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

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, binaryRepresentation:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "00000000000000000000000000000000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, buf2:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, buf:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    .line 269
    invoke-virtual {v1, v6, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 274
    :goto_0
    if-eqz p3, :cond_1

    .line 275
    invoke-virtual {v1, v5, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 278
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 271
    :cond_0
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {v1, v5, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1
.end method

.method private triggerVoiceSearch()V
    .locals 6

    .prologue
    .line 582
    const v0, 0x5f5e0fe

    .line 584
    .local v0, Requestcode:I
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "free_form"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/context/WatchGtvActivity;

    invoke-virtual {v3, v2, v0}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 591
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .parameter "tag"

    .prologue
    .line 482
    return-object p0
.end method

.method public installTouchDelegate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x190

    const/16 v3, 0x320

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 289
    .local v1, rectRoot:Landroid/graphics/Rect;
    new-instance v0, Landroid/view/TouchDelegate;

    invoke-direct {v0, v1, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 290
    .local v0, delegate:Landroid/view/TouchDelegate;
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 291
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 486
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
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 240
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 496
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 505
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->writeMouseclick()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mLastX:F

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mLastY:F

    .line 300
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->installTouchDelegate()V

    .line 316
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 317
    return v4

    .line 304
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mLastX:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 305
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mLastY:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 307
    .local v1, y:I
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mRemoteConnect:Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;

    invoke-virtual {v2, v0, v1}, Lcom/logitech/harmonylink/context/HarmonyRemoteConnection;->writeMouse(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mLastX:F

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mLastY:F

    .line 312
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->uninstallTouchDelegate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "gainFocus"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 226
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mActivity:Lcom/logitech/harmonylink/context/WatchGtvActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/WatchGtvActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 228
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->txtView:Landroid/widget/TextView;

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

    .line 467
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewEsc:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 468
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewTab:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 469
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageSearch:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 470
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewAltView:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 471
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/KeyboardView;->mImageViewFnView:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 472
    return-void
.end method

.method public uninstallTouchDelegate()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/view/KeyboardView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 283
    return-void
.end method
