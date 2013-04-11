.class Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;
.super Ljava/lang/Object;
.source "ContentListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/ContentListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private imgIsExist:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/view/ContentListView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imgIsExist:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imgIsExist:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p1
.end method
