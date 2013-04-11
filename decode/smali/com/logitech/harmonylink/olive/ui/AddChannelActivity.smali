.class public Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "AddChannelActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field didSelectAdd:Landroid/view/View$OnClickListener;

.field didSelectSearch:Landroid/view/View$OnClickListener;

.field private isEnteredChannelName:Z

.field private isEnteredChannelNumber:Z

.field private mAddButton:Landroid/widget/Button;

.field private mChannelImageView:Landroid/widget/ImageView;

.field private mEditChannelName:Landroid/widget/EditText;

.field private mEditChannelNumber:Landroid/widget/EditText;

.field private mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

.field private mIconPath:Ljava/lang/String;

.field private mLastRow:Landroid/view/ViewGroup;

.field private mViewAnimator:Landroid/widget/ViewAnimator;

.field nameTextWatcher:Landroid/text/TextWatcher;

.field numberTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 124
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$1;-><init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->nameTextWatcher:Landroid/text/TextWatcher;

    .line 154
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$2;-><init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->numberTextWatcher:Landroid/text/TextWatcher;

    .line 210
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;-><init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->didSelectAdd:Landroid/view/View$OnClickListener;

    .line 245
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;-><init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->didSelectSearch:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->isEnteredChannelName:Z

    return v0
.end method

.method static synthetic access$002(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->isEnteredChannelName:Z

    return p1
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->isEnteredChannelNumber:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    return-object v0
.end method

.method static synthetic access$102(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->isEnteredChannelNumber:Z

    return p1
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->enableButtons(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mIconPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mIconPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->addViewToAnimator(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/ViewAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->showView(I)V

    return-void
.end method

.method private addViewToAnimator(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, p1}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method private enableButtons(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mLastRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mLastRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 195
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 200
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    .line 207
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 204
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private removeViewAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, p1}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 81
    return-void
.end method

.method private showView(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public didSelectBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "bitmap"
    .parameter "iconPath"

    .prologue
    const/4 v1, 0x1

    .line 264
    iput-object p2, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mIconPath:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->removeViewAt(I)V

    .line 266
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->showView(I)V

    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mChannelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->requestWindowFeature(I)Z

    .line 49
    new-instance v1, Landroid/widget/ViewAnimator;

    invoke-direct {v1, p0}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    .line 50
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, mainView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->addViewToAnimator(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->setContentView(Landroid/view/View;)V

    .line 53
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->showView(I)V

    .line 54
    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelName:Landroid/widget/EditText;

    .line 56
    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelNumber:Landroid/widget/EditText;

    .line 58
    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mChannelImageView:Landroid/widget/ImageView;

    .line 60
    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mAddButton:Landroid/widget/Button;

    .line 62
    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mLastRow:Landroid/view/ViewGroup;

    .line 64
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->nameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->numberTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mAddButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->didSelectAdd:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mLastRow:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->didSelectSearch:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->enableButtons(Z)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->clearObjects()V

    .line 91
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->removeAllViews()V

    .line 95
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    .line 97
    :cond_1
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 103
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    sub-int v0, v1, v2

    .line 106
    .local v0, lastindex:I
    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->removeViewAt(I)V

    .line 107
    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->finish()V

    :goto_0
    move v1, v2

    .line 115
    .end local v0           #lastindex:I
    :goto_1
    return v1

    .line 110
    .restart local v0       #lastindex:I
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->stopSearch()V

    .line 111
    sub-int v1, v0, v2

    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->showView(I)V

    goto :goto_0

    .line 115
    .end local v0           #lastindex:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onStop()V

    .line 122
    return-void
.end method
