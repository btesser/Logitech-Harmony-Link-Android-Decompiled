.class Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$4;
.super Ljava/lang/Object;
.source "FavoriteSearchHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$4;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 508
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$4;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    .line 509
    .local v0, act:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->didSelectBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 511
    return-void
.end method
