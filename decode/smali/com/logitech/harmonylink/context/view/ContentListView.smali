.class public Lcom/logitech/harmonylink/context/view/ContentListView;
.super Ljava/lang/Object;
.source "ContentListView.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;,
        Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private imageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

.field private mBookmarkIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectClient:Lcom/logitech/connect/ConnectClient;

.field private mContentAdapter:Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingTitle:Landroid/widget/TextView;

.field private mOneTouchContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation
.end field

.field private mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

.field private mParentView:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRevueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/logitech/harmonylink/harmony/OneTouchManager;)V
    .locals 7
    .parameter "connectClient"
    .parameter "revueId"
    .parameter "title"
    .parameter "context"
    .parameter "aoneTouch"

    .prologue
    const v5, 0x7f06003a

    const/4 v6, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;

    .line 58
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->LOG_TAG:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    .line 69
    iput-object p5, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    .line 70
    iput-object p4, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mRevueId:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    .line 73
    new-instance v3, Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-direct {v3, p4}, Lcom/logitech/harmonylink/model/ImageReceiver;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->imageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

    .line 74
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->imageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/ImageReceiver;->start()V

    .line 75
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    const v4, 0x7f03000c

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    .line 77
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    const v4, 0x7f07003d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 79
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    const v4, 0x7f07002d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mLoadingTitle:Landroid/widget/TextView;

    .line 80
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/logitech/harmonylink/context/view/ContentListView;->setProgressEnable(I)V

    .line 82
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    const v4, 0x7f07003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    .local v1, onetouchListView:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    const v4, 0x7f07003f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 87
    .local v2, titleTextView:Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    const v4, 0x7f070040

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mListView:Landroid/widget/ListView;

    .line 94
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    const v4, 0x7f070041

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    .local v0, defaultTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    const v4, 0x7f060037

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v0           #defaultTextView:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/logitech/harmonylink/context/view/ContentListView$1;

    invoke-direct {v4, p0, p2}, Lcom/logitech/harmonylink/context/view/ContentListView$1;-><init>(Lcom/logitech/harmonylink/context/view/ContentListView;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v3, p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->addLiveFolderContentObserver(Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;)V

    .line 151
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    const v4, 0x7f060038

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    new-instance v4, Lcom/logitech/harmonylink/model/Bookmarks;

    invoke-direct {v4}, Lcom/logitech/harmonylink/model/Bookmarks;-><init>()V

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3, v4, v6, v5}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveOneTouchContents(Lcom/logitech/harmonylink/model/ContentType;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;)V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    const v4, 0x7f06003b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    new-instance v4, Lcom/logitech/harmonylink/model/Applications;

    invoke-direct {v4}, Lcom/logitech/harmonylink/model/Applications;-><init>()V

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3, v4, v6, v5}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveOneTouchContents(Lcom/logitech/harmonylink/model/ContentType;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    new-instance v4, Lcom/logitech/harmonylink/model/HarmonyActivityContents;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/logitech/harmonylink/model/HarmonyActivityContents;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3, v4, v6, v5}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveOneTouchContents(Lcom/logitech/harmonylink/model/ContentType;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;)V

    goto :goto_0

    .line 162
    :cond_4
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    const v4, 0x7f060039

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    new-instance v4, Lcom/logitech/harmonylink/model/Shortcuts;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/logitech/harmonylink/model/Shortcuts;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v3, v4, v6, v5}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveOneTouchContents(Lcom/logitech/harmonylink/model/ContentType;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/view/ContentListView;)Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContentAdapter:Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/context/view/ContentListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/logitech/harmonylink/context/view/ContentListView;)Lcom/logitech/harmonylink/model/ImageReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->imageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/logitech/harmonylink/context/view/ContentListView;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mRevueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/context/view/ContentListView;)Lcom/logitech/connect/ConnectClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/context/view/ContentListView;)Lcom/logitech/harmonylink/harmony/OneTouchManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setProgressEnable(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    return-void
.end method


# virtual methods
.method public clearObjects()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    :cond_0
    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;

    .line 307
    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContentAdapter:Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;

    .line 309
    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mListView:Landroid/widget/ListView;

    .line 310
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->removeLiveFolderContentObserver(Lcom/logitech/harmonylink/harmony/ILiveFolderContentObserver;)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 316
    :cond_2
    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;

    .line 317
    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    .line 318
    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    .line 320
    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    .line 321
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public onLiveFolderContentAvailable(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, oneTouchContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    if-eqz p1, :cond_3

    .line 326
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;

    .line 328
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    if-eqz v6, :cond_2

    .line 329
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getOneTouchContents()Ljava/util/ArrayList;

    move-result-object v0

    .line 332
    .local v0, aonetouchcontents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 334
    .local v3, newItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 336
    .local v5, prevoisItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 339
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;->setIsPresent(Z)V

    .line 340
    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getPosition()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;->setPosition(I)V

    goto :goto_0

    .line 349
    .end local v0           #aonetouchcontents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #newItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v5           #prevoisItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_2
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/logitech/harmonylink/context/view/ContentListView;->setProgressEnable(I)V

    .line 351
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mParentView:Landroid/view/View;

    const v7, 0x7f07003e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 353
    .local v4, onetouchListView:Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    new-instance v6, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;

    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;

    const v8, 0x7f030033

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;-><init>(Lcom/logitech/harmonylink/context/view/ContentListView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v6, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContentAdapter:Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;

    .line 357
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView;->mContentAdapter:Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    .end local v4           #onetouchListView:Landroid/widget/LinearLayout;
    :cond_3
    return-void
.end method
