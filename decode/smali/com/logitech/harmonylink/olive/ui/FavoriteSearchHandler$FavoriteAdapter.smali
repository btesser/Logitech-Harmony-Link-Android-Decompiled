.class Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoriteSearchHandler.java"

# interfaces
.implements Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteAdapter"
.end annotation


# instance fields
.field didSelectItem:Landroid/widget/AdapterView$OnItemClickListener;

.field private mBitmapsHash:Ljava/util/HashMap;
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

.field private mImageReceiver:Lcom/logitech/harmonylink/model/ImageReceiver;

.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 233
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$1;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$1;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->didSelectItem:Landroid/widget/AdapterView$OnItemClickListener;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    .line 147
    new-instance v0, Lcom/logitech/harmonylink/model/ImageReceiver;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/model/ImageReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mImageReceiver:Lcom/logitech/harmonylink/model/ImageReceiver;

    .line 149
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mImageReceiver:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/ImageReceiver;->start()V

    .line 150
    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;
    invoke-static {p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$400(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->didSelectItem:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    return-void
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    return-object v0
.end method

.method private setContentInRow(ILandroid/view/View;)V
    .locals 11
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;

    .line 210
    .local v10, vh:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;
    if-nez v10, :cond_0

    .line 232
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->getItem(I)Lcom/logitech/harmonylink/model/FavoriteChannel;

    move-result-object v8

    .line 214
    .local v8, fc:Lcom/logitech/harmonylink/model/FavoriteChannel;
    invoke-virtual {v8}, Lcom/logitech/harmonylink/model/FavoriteChannel;->getChannelIconPath()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, iconpath:Ljava/lang/String;
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 216
    .local v7, bmp:Landroid/graphics/Bitmap;
    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->access$700(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 217
    if-eqz v7, :cond_1

    .line 218
    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->access$700(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 221
    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->access$700(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 222
    new-instance v0, Lcom/logitech/harmonylink/model/ImageParams;

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/logitech/harmonylink/model/ImageParams;-><init>(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V

    .line 224
    .local v0, m:Lcom/logitech/harmonylink/model/ImageParams;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 225
    .local v9, msg:Landroid/os/Message;
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mImageReceiver:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-virtual {v3, v9}, Lcom/logitech/harmonylink/model/ImageReceiver;->sendMessage(Landroid/os/Message;)V

    .line 227
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v0           #m:Lcom/logitech/harmonylink/model/ImageParams;
    .end local v9           #msg:Landroid/os/Message;
    :cond_2
    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->access$700(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public clearBitmapHash()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 306
    return-void
.end method

.method public clearBitmaps()V
    .locals 4

    .prologue
    .line 285
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mImageReceiver:Lcom/logitech/harmonylink/model/ImageReceiver;

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mImageReceiver:Lcom/logitech/harmonylink/model/ImageReceiver;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/ImageReceiver;->quitLoop()V

    .line 288
    :cond_0
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 290
    .local v2, values:Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_2

    .line 303
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    .end local v2           #values:Ljava/util/Collection;
    :cond_1
    :goto_0
    return-void

    .line 294
    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    .restart local v2       #values:Ljava/util/Collection;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 296
    .local v1, temp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 297
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 300
    .end local v1           #temp:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$500(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$500(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$500(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public getItem(I)Lcom/logitech/harmonylink/model/FavoriteChannel;
    .locals 2
    .parameter "position"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$500(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x3

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/model/FavoriteChannel;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->getItem(I)Lcom/logitech/harmonylink/model/FavoriteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->inflateView(Landroid/content/Context;)Landroid/view/View;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$600(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 175
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;

    .line 176
    .local v1, vh:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;
    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->access$700(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02006d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v0, p2

    .line 187
    .end local v1           #vh:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 178
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->inflateView(Landroid/content/Context;)Landroid/view/View;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$600(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;

    .line 181
    .restart local v1       #vh:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;
    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;->access$700(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object v0, p2

    .line 182
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0

    .line 183
    .end local v0           #convertView:Landroid/view/View;
    .end local v1           #vh:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$ViewHolder;
    .restart local p2
    :cond_1
    if-nez p2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->inflateView(Landroid/content/Context;)Landroid/view/View;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$600(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 186
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->setContentInRow(ILandroid/view/View;)V

    move-object v0, p2

    .line 187
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 192
    if-nez p1, :cond_0

    .line 194
    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    .line 196
    :cond_0
    if-lez p1, :cond_1

    const/4 v1, 0x2

    if-gt p1, v1, :cond_1

    move v1, v3

    .line 197
    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->getItem(I)Lcom/logitech/harmonylink/model/FavoriteChannel;

    move-result-object v0

    .line 200
    .local v0, fc:Lcom/logitech/harmonylink/model/FavoriteChannel;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->mBitmapsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/FavoriteChannel;->getChannelIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v3

    .line 202
    goto :goto_0

    .line 204
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method public storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "path"
    .parameter "imageHash"
    .parameter "img"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter$2;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method
