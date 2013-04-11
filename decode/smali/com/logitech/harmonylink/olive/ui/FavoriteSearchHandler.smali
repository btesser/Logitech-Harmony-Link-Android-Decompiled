.class public Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
.super Ljava/lang/Object;
.source "FavoriteSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;,
        Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;,
        Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final NUM_OF_COULMNS:I

.field didSelectEmptyViewImage:Landroid/view/View$OnClickListener;

.field didSelectSearch:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/FavoriteChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelName:Ljava/lang/String;

.field private mDiscoveryServiceUrl:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mEmptyView:Landroid/view/ViewGroup;

.field private mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

.field mFavoriteSearchtask:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;

.field private mGridView:Landroid/widget/GridView;

.field private mMainView:Landroid/view/View;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchSpinny:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V
    .locals 2
    .parameter "act"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->NUM_OF_COULMNS:I

    .line 64
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mDiscoveryServiceUrl:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$3;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$3;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->didSelectSearch:Landroid/view/View$OnClickListener;

    .line 503
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$4;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$4;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->didSelectEmptyViewImage:Landroid/view/View$OnClickListener;

    .line 67
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mActivity:Landroid/app/Activity;

    .line 68
    const v0, 0x7f030021

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mMainView:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mMainView:Landroid/view/View;

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;

    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mMainView:Landroid/view/View;

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEditText:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mMainView:Landroid/view/View;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mSearchSpinny:Landroid/widget/ProgressBar;

    .line 72
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mMainView:Landroid/view/View;

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mSearchButton:Landroid/widget/ImageButton;

    .line 73
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->didSelectSearch:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 90
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$2;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$2;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mDiscoveryServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mSearchSpinny:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEmptyView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mSearchButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->inflateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private inflateView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 313
    const v2, 0x7f030022

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;

    invoke-direct {v0, v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;)V

    .line 315
    .local v0, vh:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;
    const v2, 0x7f07007d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    #setter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v0, p0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->access$702(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 317
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 318
    return-object v1
.end method


# virtual methods
.method public clearObjects()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->clearBitmaps()V

    .line 330
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_2

    .line 333
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;

    .line 335
    :cond_2
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public notifyDataChange()V
    .locals 5

    .prologue
    .line 451
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 453
    :cond_0
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEmptyView:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 454
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mMainView:Landroid/view/View;

    const v4, 0x7f07007b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 456
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEmptyView:Landroid/view/ViewGroup;

    .line 457
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEmptyView:Landroid/view/ViewGroup;

    const v4, 0x7f070029

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 459
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->didSelectEmptyViewImage:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    .end local v0           #iv:Landroid/widget/ImageView;
    .end local v1           #stub:Landroid/view/ViewStub;
    :cond_1
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mMainView:Landroid/view/View;

    const v4, 0x7f070028

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 462
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 463
    const v3, 0x7f0600d3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 467
    :goto_0
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEmptyView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 476
    .end local v2           #tv:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 465
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f0600d1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 471
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_3
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-nez v3, :cond_4

    .line 472
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    :cond_4
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "discoveryServiceUrl"
    .parameter "channelname"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mDiscoveryServiceUrl:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 487
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->notifyDataChange()V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iput-object p2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelName:Ljava/lang/String;

    .line 497
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 498
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteSearchtask:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;

    .line 499
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteSearchtask:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public stopSearch()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteSearchtask:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteSearchtask:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->cancel(Z)Z

    .line 522
    :cond_0
    return-void
.end method
