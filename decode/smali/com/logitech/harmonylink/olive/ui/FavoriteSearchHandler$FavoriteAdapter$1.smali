.class Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$1;
.super Ljava/lang/Object;
.source "FavoriteSearchHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$1;->this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$1;->this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    iget-object v3, v3, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    .line 240
    .local v0, act:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;
    if-nez p3, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006d

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->didSelectBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$1;->this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    iget-object v3, v3, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$400(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/model/FavoriteChannel;

    .line 246
    .local v2, fc:Lcom/logitech/harmonylink/model/FavoriteChannel;
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$1;->this$1:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->access$800(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/logitech/harmonylink/model/FavoriteChannel;->getChannelIconPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 248
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v2}, Lcom/logitech/harmonylink/model/FavoriteChannel;->getChannelIconPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->didSelectBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method
