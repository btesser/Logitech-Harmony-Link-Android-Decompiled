.class Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OneTouchGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p1
.end method
