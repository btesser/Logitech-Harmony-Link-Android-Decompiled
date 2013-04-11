.class Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;
.super Ljava/lang/Object;
.source "FavoriteSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p1
.end method
