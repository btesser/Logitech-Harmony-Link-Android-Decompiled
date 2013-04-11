.class public Lcom/logitech/harmonylink/context/view/OneTouchGridView;
.super Landroid/widget/GridView;
.source "OneTouchGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final ELEMENTS_EACHROW:I

.field private final SCROLL_INTERVAL:I

.field mCategory:Ljava/lang/String;

.field private mDragOffset_X:I

.field private mDragOffset_Y:I

.field private mDragView:Landroid/widget/ImageView;

.field private mEndPosition:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;

.field private mGridViewSelector:Landroid/graphics/drawable/Drawable;

.field private mIDeleteObserver:Lcom/logitech/harmonylink/context/view/IDeleteObserver;

.field private mIDragObserver:Lcom/logitech/harmonylink/context/view/IDragObserver;

.field private mIDropObserver:Lcom/logitech/harmonylink/context/view/IDropObserver;

.field private mIsDragable:Z

.field private mIsEditMode:Z

.field private mIsScrollWait:Z

.field private mLowerBound:I

.field private mSelectedView:Landroid/view/View;

.field private mStartPosition:I

.field private mTouchSlop:I

.field private mTrashView:Landroid/widget/ImageView;

.field private mTrashleft:I

.field private mTrashright:I

.field private mUpperBound:I

.field private mWidth:I

.field private mWindowHeight:I

.field private scrollIntervalRunnable:Ljava/lang/Runnable;

.field private titleBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->SCROLL_INTERVAL:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->ELEMENTS_EACHROW:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mCategory:Ljava/lang/String;

    .line 329
    new-instance v0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView$1;-><init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->scrollIntervalRunnable:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;-><init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Lcom/logitech/harmonylink/context/view/OneTouchGridView$1;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mGestureListener:Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;

    .line 60
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mGestureListener:Lcom/logitech/harmonylink/context/view/OneTouchGridView$OneTouchGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 61
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTouchSlop:I

    .line 62
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mGridViewSelector:Landroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I

    return p1
.end method

.method static synthetic access$102(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsScrollWait:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mUpperBound:I

    return p1
.end method

.method static synthetic access$1200(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$1302(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mLowerBound:I

    return p1
.end method

.method static synthetic access$1402(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_Y:I

    return p1
.end method

.method static synthetic access$1420(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_Y:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_Y:I

    return v0
.end method

.method static synthetic access$1502(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_X:I

    return p1
.end method

.method static synthetic access$1600(Lcom/logitech/harmonylink/context/view/OneTouchGridView;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->startDrag(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsDragable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashleft:I

    return v0
.end method

.method static synthetic access$502(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashleft:I

    return p1
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWidth:I

    return v0
.end method

.method static synthetic access$702(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashright:I

    return p1
.end method

.method static synthetic access$802(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->titleBarHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/context/view/OneTouchGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/logitech/harmonylink/context/view/OneTouchGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I

    return p1
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 192
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 193
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mUpperBound:I

    .line 195
    :cond_0
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 196
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mLowerBound:I

    .line 198
    :cond_1
    return-void
.end method

.method private drag(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 205
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 230
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 210
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 212
    .local v1, wmL:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_X:I

    sub-int v2, p1, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 213
    iget v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_Y:I

    sub-int v2, p2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 218
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "82"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const-string v2, "activities"

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    const/16 v2, 0x32

    if-gt p2, v2, :cond_1

    iget v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashleft:I

    if-le p1, v2, :cond_1

    iget v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashright:I

    if-ge p1, v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mSelectedView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 223
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 229
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private startDrag(III)V
    .locals 8
    .parameter "itemIndex"
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide v6, 0x3ff3333333333333L

    .line 234
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->stopDrag(I)V

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mSelectedView:Landroid/view/View;

    .line 239
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mSelectedView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mSelectedView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 277
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setSelector(Z)V

    .line 248
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mSelectedView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 249
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDragObserver:Lcom/logitech/harmonylink/context/view/IDragObserver;

    if-eqz v4, :cond_2

    .line 250
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDragObserver:Lcom/logitech/harmonylink/context/view/IDragObserver;

    iget-object v5, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mSelectedView:Landroid/view/View;

    invoke-interface {v4, v5}, Lcom/logitech/harmonylink/context/view/IDragObserver;->onStartDrag(Landroid/view/View;)V

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 255
    .local v3, wmL:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 256
    iget v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_X:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 257
    iget v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragOffset_Y:I

    sub-int v4, p3, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 262
    const/16 v4, 0x398

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 267
    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 269
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 272
    iput-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    .line 274
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 276
    .local v2, wm:Landroid/view/WindowManager;
    iget-object v4, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v2, v4, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private stopDrag(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDragObserver:Lcom/logitech/harmonylink/context/view/IDragObserver;

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDragObserver:Lcom/logitech/harmonylink/context/view/IDragObserver;

    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/logitech/harmonylink/context/view/IDragObserver;->onStopDrag(Landroid/view/View;)V

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 292
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 294
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mDragView:Landroid/widget/ImageView;

    .line 299
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "82"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 301
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getStartPosition()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I

    return v0
.end method

.method public invalidateGridView()V
    .locals 0

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->invalidateViews()V

    .line 311
    return-void
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsEditMode:Z

    return v0
.end method

.method public isItemDragging()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsDragable:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v8, 0x0

    const/4 v10, -0x4

    const/4 v9, -0x1

    const/4 v11, 0x1

    .line 82
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v11

    .line 184
    :goto_0
    return v7

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 87
    .local v0, action:I
    iget-boolean v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsDragable:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsEditMode:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x6

    if-ne v0, v7, :cond_2

    .line 89
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 92
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 94
    .local v6, y:I
    packed-switch v0, :pswitch_data_0

    .line 153
    iput-boolean v8, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsDragable:Z

    .line 154
    iput-boolean v8, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsScrollWait:Z

    .line 155
    invoke-virtual {p0, v5, v6}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mEndPosition:I

    .line 157
    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->titleBarHeight:I

    if-gt v6, v7, :cond_a

    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashleft:I

    if-le v5, v7, :cond_a

    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashright:I

    if-ge v5, v7, :cond_a

    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mEndPosition:I

    if-ne v7, v9, :cond_a

    .line 159
    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I

    if-eq v7, v9, :cond_3

    .line 160
    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->stopDrag(I)V

    .line 164
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "82"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 165
    const-string v7, "activities"

    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mCategory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 166
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDeleteObserver:Lcom/logitech/harmonylink/context/view/IDeleteObserver;

    iget v8, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I

    invoke-interface {v7, v8}, Lcom/logitech/harmonylink/context/view/IDeleteObserver;->onDelete(I)V

    :cond_3
    move v7, v11

    .line 171
    goto :goto_0

    .line 98
    :pswitch_0
    invoke-direct {p0, v5, v6}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->drag(II)V

    .line 101
    invoke-virtual {p0, v5, v6}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->pointToPosition(II)I

    move-result v1

    .line 102
    .local v1, itemnum:I
    if-ltz v1, :cond_5

    iget-boolean v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsScrollWait:Z

    if-nez v7, :cond_5

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, speed:I
    invoke-direct {p0, v6}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->adjustScrollBounds(I)V

    .line 106
    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mLowerBound:I

    if-le v6, v7, :cond_7

    .line 108
    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWindowHeight:I

    iget v8, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mLowerBound:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_6

    const/16 v7, 0x10

    move v3, v7

    .line 116
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 117
    invoke-virtual {p0, v5, v6}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->pointToPosition(II)I

    move-result v2

    .line 119
    .local v2, ref:I
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 120
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_5

    .line 121
    if-gez v3, :cond_9

    .line 123
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getFirstVisiblePosition()I

    move-result v7

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setSelection(I)V

    .line 125
    if-ne v3, v10, :cond_5

    .line 126
    iput-boolean v11, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsScrollWait:Z

    .line 127
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->scrollIntervalRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1           #itemnum:I
    .end local v2           #ref:I
    .end local v3           #speed:I
    .end local v4           #v:Landroid/view/View;
    :cond_5
    :goto_2
    move v7, v11

    .line 184
    goto/16 :goto_0

    .restart local v1       #itemnum:I
    .restart local v3       #speed:I
    :cond_6
    move v3, v12

    .line 108
    goto :goto_1

    .line 110
    :cond_7
    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mUpperBound:I

    if-ge v6, v7, :cond_4

    .line 112
    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mUpperBound:I

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_8

    const/16 v7, -0x10

    move v3, v7

    :goto_3
    goto :goto_1

    :cond_8
    move v3, v10

    goto :goto_3

    .line 132
    .restart local v2       #ref:I
    .restart local v4       #v:Landroid/view/View;
    :cond_9
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getFirstVisiblePosition()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setSelection(I)V

    .line 134
    if-ne v3, v12, :cond_5

    .line 137
    iput-boolean v11, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsScrollWait:Z

    .line 138
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->scrollIntervalRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 174
    .end local v1           #itemnum:I
    .end local v2           #ref:I
    .end local v3           #speed:I
    .end local v4           #v:Landroid/view/View;
    :cond_a
    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->stopDrag(I)V

    .line 176
    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mEndPosition:I

    if-eq v7, v9, :cond_5

    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDropObserver:Lcom/logitech/harmonylink/context/view/IDropObserver;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I

    if-eq v7, v9, :cond_5

    .line 178
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDropObserver:Lcom/logitech/harmonylink/context/view/IDropObserver;

    iget v8, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mStartPosition:I

    iget v9, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mEndPosition:I

    invoke-interface {v7, v8, v9}, Lcom/logitech/harmonylink/context/view/IDropObserver;->onDrop(II)V

    goto :goto_2

    .line 94
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setDeleteObserver(Lcom/logitech/harmonylink/context/view/IDeleteObserver;)V
    .locals 0
    .parameter "mDeleteObserver"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDeleteObserver:Lcom/logitech/harmonylink/context/view/IDeleteObserver;

    .line 356
    return-void
.end method

.method public setDragObserver(Lcom/logitech/harmonylink/context/view/IDragObserver;)V
    .locals 0
    .parameter "dragObserver"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDragObserver:Lcom/logitech/harmonylink/context/view/IDragObserver;

    .line 71
    return-void
.end method

.method public setDropObserver(Lcom/logitech/harmonylink/context/view/IDropObserver;)V
    .locals 0
    .parameter "dropObserver"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIDropObserver:Lcom/logitech/harmonylink/context/view/IDropObserver;

    .line 78
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .parameter "editmode"

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mIsEditMode:Z

    .line 321
    return-void
.end method

.method public setSelector(Z)V
    .locals 1
    .parameter "defaultSelector"

    .prologue
    .line 343
    if-eqz p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mGridViewSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    const v0, 0x7f0200f8

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setSelector(I)V

    goto :goto_0
.end method

.method public setTrashItem(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "mTrashView"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mTrashView:Landroid/widget/ImageView;

    .line 360
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "mScreenWidth"

    .prologue
    .line 362
    iput p1, p0, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->mWidth:I

    .line 364
    return-void
.end method
