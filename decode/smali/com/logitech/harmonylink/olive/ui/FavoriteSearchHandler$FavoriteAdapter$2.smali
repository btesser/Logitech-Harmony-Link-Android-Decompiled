.class Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;
.super Ljava/lang/Object;
.source "FavoriteSearchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

.field final synthetic val$img:Landroid/graphics/Bitmap;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    iput-object p2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->val$img:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 265
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    iget-object v1, v1, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$400(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/GridView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->val$img:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->access$800(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    iget-object v1, v1, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$400(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 274
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->val$img:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->access$800(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;->val$img:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
