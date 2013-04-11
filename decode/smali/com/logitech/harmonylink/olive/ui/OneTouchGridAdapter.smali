.class public Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;
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
        Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;
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

.field private mContext:Landroid/content/Context;

.field private mImageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

.field private mIsAtleastOneItemEdited:Z

.field private mListOfIcons:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Lcom/logitech/harmonylink/ui/common/BaseActivity;)V
    .locals 2
    .parameter "oneTouchGridview"
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    const-class v0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->LOG_TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mListOfIcons:Ljava/util/HashMap;

    .line 70
    iput-object p2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    .line 74
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 75
    invoke-virtual {p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->pixelsToDip(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->screenWidth:I

    .line 79
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->pixelsToDip(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->screenHeight:I

    .line 81
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->pixelsToDip(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->spacing:I

    .line 83
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setDragObserver(Lcom/logitech/harmonylink/context/view/IDragObserver;)V

    .line 84
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setDropObserver(Lcom/logitech/harmonylink/context/view/IDropObserver;)V

    .line 85
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setDeleteObserver(Lcom/logitech/harmonylink/context/view/IDeleteObserver;)V

    .line 87
    new-instance v0, Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-direct {v0, p2}, Lcom/logitech/harmonylink/model/ImageReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mImageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

    .line 88
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mImageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/ImageReceiver;->start()V

    .line 89
    return-void
.end method

.method static synthetic access$300(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private inflateView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030046

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, view:Landroid/view/View;
    new-instance v1, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;

    invoke-direct {v1, v5}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$1;)V

    .line 162
    .local v1, vh:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;
    const v3, 0x7f070028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v1, p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$002(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 163
    const v3, 0x7f07007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v1, p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$102(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 164
    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v3, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0x1e0

    if-le v3, v4, :cond_0

    .line 167
    sget v3, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->screenHeight:I

    sget v4, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->spacing:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 173
    :goto_0
    sget-object v3, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 174
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    return-object v2

    .line 170
    :cond_0
    sget v3, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->screenHeight:I

    sget v4, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->spacing:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private isShadeScreenAlreadyDisplayed()Z
    .locals 4

    .prologue
    .line 386
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v1

    .line 387
    .local v1, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v2, "oliveHelpShadeFinished"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getBooleanWithName(Ljava/lang/String;Z)Z

    move-result v0

    .line 390
    .local v0, a:Z
    return v0
.end method

.method private setContentInRow(ILandroid/view/View;)V
    .locals 11
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;

    .line 120
    .local v10, vh:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;
    if-nez v10, :cond_0

    .line 156
    .end local p0
    :goto_0
    return-void

    .line 122
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 128
    :goto_1
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->isItemDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getStartPosition()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 130
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_2
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 135
    .local v9, row:Lcom/logitech/harmonylink/model/OneTouchContent;
    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$000(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$000(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v9}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f02006e

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    invoke-virtual {v9}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, imageHash:Ljava/lang/String;
    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 143
    if-eqz v2, :cond_3

    const-string v1, "resource:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, resourceId:Ljava/lang/String;
    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 126
    .end local v2           #imageHash:Ljava/lang/String;
    .end local v8           #resourceId:Ljava/lang/String;
    .end local v9           #row:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 146
    .restart local v2       #imageHash:Ljava/lang/String;
    .restart local v9       #row:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_3
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mListOfIcons:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mListOfIcons:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 150
    .restart local p0
    :cond_4
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 151
    .local v7, message:Landroid/os/Message;
    new-instance v0, Lcom/logitech/harmonylink/model/ImageParams;

    const/4 v1, 0x0

    const-string v3, "60"

    const-string v4, "60"

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/logitech/harmonylink/model/ImageParams;-><init>(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V

    .line 153
    .local v0, imgparams:Lcom/logitech/harmonylink/model/ImageParams;
    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mImageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-virtual {v1, v7}, Lcom/logitech/harmonylink/model/ImageReceiver;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mImageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mImageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/ImageReceiver;->quitLoop()V

    .line 432
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mImageThread:Lcom/logitech/harmonylink/model/ImageReceiver;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mListOfIcons:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mListOfIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 437
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mListOfIcons:Ljava/util/HashMap;

    .line 439
    :cond_1
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    .line 440
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    .line 441
    iput-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    .line 443
    return-void
.end method

.method public deleteBitmapfromFile(Ljava/lang/String;)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 272
    invoke-static {p1}, Lcom/logitech/harmonylink/util/BitmapUtil;->deleteBitmap(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public dragTo(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 180
    .local v0, gm:Lcom/logitech/harmonylink/model/OneTouchContent;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    :cond_0
    return-void
.end method

.method public enableVisibility()V
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1, p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 317
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mSpinny:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v0

    .line 320
    .local v0, sf:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    const-string v1, "isGridViewVisible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;
    .locals 1
    .parameter "position"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

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
    .line 47
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 110
    if-nez p2, :cond_0

    .line 111
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->inflateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 114
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->setContentInRow(ILandroid/view/View;)V

    .line 115
    return-object p2
.end method

.method public isUpdated()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mIsAtleastOneItemEdited:Z

    return v0
.end method

.method public notifyGridAdapter()V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->notifyDataSetChanged()V

    .line 220
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
    .line 186
    .local p1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->notifyDataSetChanged()V

    .line 188
    return-void
.end method

.method public onDelete(I)V
    .locals 6
    .parameter "from"

    .prologue
    const/4 v5, 0x1

    .line 197
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 198
    .local v0, content:Lcom/logitech/harmonylink/model/OneTouchContent;
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 201
    .local v2, values:[Ljava/lang/String;
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    const-string v4, "launcher_parameter = ?"

    invoke-static {v3, v4, v2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 202
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->deleteBitmapfromFile(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activities"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v1

    .line 207
    .local v1, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putInt(Ljava/lang/String;I)V

    .line 212
    .end local v1           #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_0
    iput-boolean v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mIsAtleastOneItemEdited:Z

    .line 213
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 214
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->invalidateGridView()V

    .line 216
    return-void
.end method

.method public onDrop(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v5, 0x1

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->dragTo(II)V

    .line 229
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 230
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->invalidateGridView()V

    .line 232
    iput-boolean v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mIsAtleastOneItemEdited:Z

    .line 233
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 235
    if-ge p1, p2, :cond_0

    .line 236
    move v2, p1

    .line 237
    .local v2, low:I
    move v0, p2

    .line 242
    .local v0, high:I
    :goto_0
    move v1, v2

    .local v1, i:I
    :goto_1
    if-gt v1, v0, :cond_1

    .line 243
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/model/OneTouchContent;->setPosition(I)V

    .line 244
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->setChanged(Z)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v0           #high:I
    .end local v1           #i:I
    .end local v2           #low:I
    :cond_0
    move v2, p2

    .line 240
    .restart local v2       #low:I
    move v0, p1

    .restart local v0       #high:I
    goto :goto_0

    .line 248
    .end local v0           #high:I
    .end local v2           #low:I
    :cond_1
    return-void
.end method

.method public onStartDrag(Landroid/view/View;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 255
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void
.end method

.method public onStopDrag(Landroid/view/View;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 263
    if-nez p1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v1, 0x7f07007d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 268
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public removeIconPath(Ljava/lang/String;)V
    .locals 1
    .parameter "iconPath"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mListOfIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-void
.end method

.method public resetUpdateFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mIsAtleastOneItemEdited:Z

    .line 305
    return-void
.end method

.method public setButtons(Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter "spinny"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mSpinny:Landroid/widget/ProgressBar;

    .line 407
    return-void
.end method

.method public showShadeScreen()V
    .locals 5

    .prologue
    .line 328
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 333
    .local v2, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->isShadeScreenAlreadyDisplayed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 334
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0005

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 335
    .local v0, dlgHelp:Landroid/app/Dialog;
    const v3, 0x7f030044

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 336
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 337
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 339
    new-instance v3, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$1;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 349
    new-instance v3, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$2;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 369
    const v3, 0x7f0700d5

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 370
    .local v1, helpShadebutton:Landroid/widget/Button;
    new-instance v3, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$3;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    .end local v0           #dlgHelp:Landroid/app/Dialog;
    .end local v1           #helpShadebutton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "path"
    .parameter "imageHash"
    .parameter "img"

    .prologue
    .line 411
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mListOfIcons:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mListOfIcons:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v1, p1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 414
    .local v0, iview:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 415
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$4;

    invoke-direct {v2, p0, v0, p3}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$4;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 424
    .end local v0           #iview:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Image BookmarkIcons is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public storePairedFlag()V
    .locals 5

    .prologue
    .line 283
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v2

    .line 284
    .local v2, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "alredyPairedRevueBoxes"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getStringWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, alreadyPaired:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 287
    .local v1, la:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->isPreviouslyPairedBox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :goto_0
    const-string v3, "alredyPairedRevueBoxes"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateDatabase()V
    .locals 3

    .prologue
    .line 396
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-static {v1, v0, v2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->bulkUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 399
    return-void
.end method
