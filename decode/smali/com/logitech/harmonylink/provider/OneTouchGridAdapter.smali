.class public Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "OneTouchGridAdapter.java"

# interfaces
.implements Lcom/logitech/harmonylink/context/view/IDragObserver;
.implements Lcom/logitech/harmonylink/context/view/IDropObserver;
.implements Lcom/logitech/harmonylink/context/view/IDeleteObserver;
.implements Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final KEY_ICON_PATH:Ljava/lang/String; = "icon path"

.field private static mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public static screenHeight:I

.field public static screenWidth:I

.field public static spacing:I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAddMoreView:Landroid/view/View;

.field private mAddmorebutton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEditNDoneButton:Landroid/widget/Button;

.field private mIsAtleastOneItemEdited:Z

.field private mListOfIconPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfImagesDownloaded:I

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

.field private mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

.field private mSpinny:Landroid/widget/ProgressBar;

.field private mTotalIconsToGet:I


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Lcom/logitech/harmonylink/ui/common/BaseActivity;)V
    .locals 3
    .parameter "oneTouchGridview"
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    const-class v0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->LOG_TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mListOfIconPaths:Ljava/util/ArrayList;

    .line 70
    iput-object p2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    .line 74
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 75
    invoke-virtual {p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->pixelsToDip(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->screenWidth:I

    .line 79
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->pixelsToDip(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->screenHeight:I

    .line 81
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->pixelsToDip(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->spacing:I

    .line 90
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setDragObserver(Lcom/logitech/harmonylink/context/view/IDragObserver;)V

    .line 91
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setDropObserver(Lcom/logitech/harmonylink/context/view/IDropObserver;)V

    .line 92
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setDeleteObserver(Lcom/logitech/harmonylink/context/view/IDeleteObserver;)V

    .line 93
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mAddMoreView:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mAddMoreView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    return-void
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    return v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mTotalIconsToGet:I

    return v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private inflateView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 179
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030046

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 180
    .local v2, view:Landroid/view/View;
    new-instance v1, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;

    invoke-direct {v1, v5}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;-><init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;)V

    .line 181
    .local v1, vh:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;
    const v3, 0x7f070028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    #setter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v1, p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$002(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 182
    const v3, 0x7f07007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    #setter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v1, p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$102(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 183
    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v3, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0x1e0

    if-le v3, v4, :cond_0

    .line 186
    sget v3, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->screenHeight:I

    sget v4, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->spacing:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 192
    :goto_0
    sget-object v3, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 193
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    return-object v2

    .line 189
    :cond_0
    sget v3, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->screenHeight:I

    sget v4, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->spacing:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private isActivityNotSetupDispalyed()Z
    .locals 3

    .prologue
    .line 571
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 572
    .local v0, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v1, "notsetupwarning"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getBooleanWithName(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isShadeScreenAlreadyDisplayed()Z
    .locals 4

    .prologue
    .line 557
    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v1

    .line 558
    .local v1, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v2, "helpShadeFinished"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getBooleanWithName(Ljava/lang/String;Z)Z

    move-result v0

    .line 561
    .local v0, a:Z
    return v0
.end method

.method private setContentInRow(ILandroid/view/View;)V
    .locals 10
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v8, 0x0

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;

    .line 132
    .local v6, vh:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;
    if-nez v6, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v7, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 135
    invoke-virtual {p2, v8}, Landroid/view/View;->setClickable(Z)V

    .line 136
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 141
    :goto_1
    iget-object v7, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->isItemDragging()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v7}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getStartPosition()I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 143
    const/4 v7, 0x4

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :goto_2
    iget-object v7, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 148
    .local v5, row:Lcom/logitech/harmonylink/model/OneTouchContent;
    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$000(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v7

    const-string v8, "shortcuts"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 151
    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$000(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->getLabelForShortcuts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_3
    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 156
    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f02006e

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, imageHash:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getIconPath()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, iconPath:Ljava/lang/String;
    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 161
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/logitech/harmonylink/model/ImageReceiver;->IMAGES_PATH:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 165
    :try_start_0
    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Lcom/logitech/harmonylink/util/BitmapUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 167
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 168
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 139
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #iconPath:Ljava/lang/String;
    .end local v3           #imageHash:Ljava/lang/String;
    .end local v5           #row:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_2
    invoke-virtual {p2, v8}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_1

    .line 145
    :cond_3
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 153
    .restart local v5       #row:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_4
    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$000(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 171
    .restart local v1       #f:Ljava/io/File;
    .restart local v2       #iconPath:Ljava/lang/String;
    .restart local v3       #imageHash:Ljava/lang/String;
    :cond_5
    const-string v7, "resource:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 172
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, resourceId:Ljava/lang/String;
    #getter for: Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public deleteBitmapfromFile(Ljava/lang/String;)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 305
    invoke-static {p1}, Lcom/logitech/harmonylink/util/BitmapUtil;->deleteBitmap(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public disableAddMoreButton(Z)V
    .locals 2
    .parameter "disable"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mAddmorebutton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mAddmorebutton:Landroid/widget/Button;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 436
    :cond_0
    return-void

    .line 433
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dragTo(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 199
    .local v0, gm:Lcom/logitech/harmonylink/model/OneTouchContent;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    :cond_0
    return-void
.end method

.method public enableVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 478
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1, p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVisibility(I)V

    .line 482
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mEditNDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 483
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 484
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mSpinny:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 486
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 487
    .local v0, sf:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v1, "isGridViewVisible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->showShadeScreen()V

    .line 489
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;
    .locals 1
    .parameter "position"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/model/OneTouchContent;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 110
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLabelForShortcuts(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "buttonLabel"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    .line 211
    .local v0, context:Landroid/content/Context;
    const-string v1, "GTVLive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    .line 213
    :cond_0
    const-string v1, "Guide"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_1
    const-string v1, "GTVHome"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 217
    :cond_2
    const-string v1, "GTVSearch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 219
    :cond_3
    const-string v1, "TiVo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 221
    :cond_4
    const-string v1, "RecordedTV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 222
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, p1

    .line 223
    goto :goto_0
.end method

.method public getTotalValidIconsToFetch(Ljava/util/ArrayList;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, oneTouchContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    const/4 v2, 0x0

    .line 593
    .local v2, total_icons:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 594
    .local v0, currContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bookmarks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    add-int/lit8 v2, v2, 0x1

    .line 596
    sget v3, Lcom/logitech/harmonylink/model/ImageReceiver;->ICONS_TO_PRE_POPULATE:I

    if-ne v2, v3, :cond_0

    .line 602
    .end local v0           #currContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_1
    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mAddMoreView:Landroid/view/View;

    .line 127
    :goto_0
    return-object v0

    .line 121
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mAddMoreView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 122
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->inflateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 126
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->setContentInRow(ILandroid/view/View;)V

    move-object v0, p2

    .line 127
    goto :goto_0
.end method

.method public isUpdated()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mIsAtleastOneItemEdited:Z

    return v0
.end method

.method public notifyGridAdapter()V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyDataSetChanged()V

    .line 253
    return-void
.end method

.method public notifyGridAdapter(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 205
    .local p1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    iput-object p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyDataSetChanged()V

    .line 207
    return-void
.end method

.method public onDelete(I)V
    .locals 4
    .parameter "from"

    .prologue
    .line 232
    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 233
    .local v0, content:Lcom/logitech/harmonylink/model/OneTouchContent;
    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->updateDatabase()V

    .line 235
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->deleteBitmapfromFile(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activities"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v1

    .line 240
    .local v1, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putInt(Ljava/lang/String;I)V

    .line 245
    .end local v1           #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mIsAtleastOneItemEdited:Z

    .line 246
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 247
    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->invalidateGridView()V

    .line 249
    return-void
.end method

.method public onDrop(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v4, 0x1

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->dragTo(II)V

    .line 262
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 263
    iget-object v3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->invalidateGridView()V

    .line 265
    iput-boolean v4, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mIsAtleastOneItemEdited:Z

    .line 266
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 268
    if-ge p1, p2, :cond_0

    .line 269
    move v2, p1

    .line 270
    .local v2, low:I
    move v0, p2

    .line 275
    .local v0, high:I
    :goto_0
    move v1, v2

    .local v1, i:I
    :goto_1
    if-gt v1, v0, :cond_1

    .line 276
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->setPosition(I)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/model/OneTouchContent;->setChanged(Z)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    .end local v0           #high:I
    .end local v1           #i:I
    .end local v2           #low:I
    :cond_0
    move v2, p2

    .line 273
    .restart local v2       #low:I
    move v0, p1

    .restart local v0       #high:I
    goto :goto_0

    .line 281
    .end local v0           #high:I
    .end local v2           #low:I
    :cond_1
    return-void
.end method

.method public onStartDrag(Landroid/view/View;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 288
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method

.method public onStopDrag(Landroid/view/View;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 296
    if-nez p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const v1, 0x7f07007d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 301
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public removeIconPath(Ljava/lang/String;)V
    .locals 1
    .parameter "iconPath"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mListOfIconPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method public resetUpdateFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mIsAtleastOneItemEdited:Z

    .line 392
    return-void
.end method

.method public setAddMoreViewVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mAddMoreView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    return-void
.end method

.method public setButtons(Landroid/widget/Button;Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter "editNDoneButton"
    .parameter "spinny"

    .prologue
    .line 587
    iput-object p2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mSpinny:Landroid/widget/ProgressBar;

    .line 588
    iput-object p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mEditNDoneButton:Landroid/widget/Button;

    .line 589
    return-void
.end method

.method public showShadeScreen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 496
    iget-object v3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 501
    .local v2, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    invoke-direct {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->isShadeScreenAlreadyDisplayed()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "isGridViewVisible"

    invoke-virtual {v2, v3, v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getBooleanWithName(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0005

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 505
    .local v0, dlgHelp:Landroid/app/Dialog;
    const v3, 0x7f03002d

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 506
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 507
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 509
    new-instance v3, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$4;

    invoke-direct {v3, p0, v2, v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$4;-><init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 519
    new-instance v3, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$5;

    invoke-direct {v3, p0, v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$5;-><init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 540
    const v3, 0x7f07000d

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 541
    .local v1, helpShadebutton:Landroid/widget/Button;
    new-instance v3, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$6;

    invoke-direct {v3, p0, v2, v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$6;-><init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    .end local v0           #dlgHelp:Landroid/app/Dialog;
    .end local v1           #helpShadebutton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public showWarningMsg()V
    .locals 5

    .prologue
    .line 448
    iget-object v3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 449
    .local v0, la:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->hasPartiallySetupActivity()Z

    move-result v3

    if-nez v3, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->enableVisibility()V

    .line 451
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->showShadeScreen()V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->isActivityNotSetupDispalyed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 454
    iget-object v3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v1

    .line 456
    .local v1, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 458
    .local v2, warningAlert:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 461
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 462
    const-string v3, "OK"

    new-instance v4, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$3;

    invoke-direct {v4, p0, v1}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$3;-><init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 470
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "path"
    .parameter "hash"
    .parameter "bitmap"

    .prologue
    .line 315
    if-nez p3, :cond_0

    .line 324
    iget v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    .line 361
    :goto_0
    return-void

    .line 318
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lcom/logitech/harmonylink/util/BitmapUtil;->storeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    iget v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    .line 330
    :goto_1
    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v2, p2}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 331
    .local v1, iv:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 333
    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;

    invoke-direct {v3, p0, v1, p3}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;-><init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$2;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$2;-><init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 319
    .end local v1           #iv:Landroid/widget/ImageView;
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    iget v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    goto :goto_1

    .line 321
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 322
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    iget v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget v3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mNumberOfImagesDownloaded:I

    throw v2
.end method

.method public updateDatabase()V
    .locals 3

    .prologue
    .line 577
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-static {v1, v0, v2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->bulkUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 580
    return-void
.end method
