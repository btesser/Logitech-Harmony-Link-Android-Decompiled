.class public Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;
.super Landroid/widget/BaseAdapter;
.source "ContentListView.java"

# interfaces
.implements Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/ContentListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentAdaptor"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/ContentListView;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/view/ContentListView;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->mInflater:Landroid/view/LayoutInflater;

    .line 195
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->notifyDataSetChanged()V

    .line 196
    return-void
.end method

.method private inflateView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030033

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;

    invoke-direct {v1, v4}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;-><init>(Lcom/logitech/harmonylink/context/view/ContentListView$1;)V

    .line 202
    .local v1, vh:Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;
    const v2, 0x7f0700ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    #setter for: Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v1, p0}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->access$802(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 203
    const v2, 0x7f0700ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    #setter for: Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v1, p0}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->access$902(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 204
    const v2, 0x7f0700ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    #setter for: Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imgIsExist:Landroid/widget/ImageView;
    invoke-static {v1, p0}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->access$1002(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    return-object v0
.end method

.method private populateView(ILandroid/view/View;)V
    .locals 12
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;

    .line 211
    .local v11, vh:Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;
    if-nez v11, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v10

    .line 216
    .local v10, row:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v10}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, label:Ljava/lang/String;
    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->access$800(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v10}, Lcom/logitech/harmonylink/model/OneTouchContent;->getIconPath()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, iconPath:Ljava/lang/String;
    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imgIsExist:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->access$1000(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v10}, Lcom/logitech/harmonylink/model/OneTouchContent;->getIsPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->access$900(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 223
    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->access$900(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f02006e

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    if-eqz v2, :cond_4

    .line 225
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$1100(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 228
    .local v9, message:Landroid/os/Message;
    new-instance v0, Lcom/logitech/harmonylink/model/ImageParams;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$400(Lcom/logitech/harmonylink/context/view/ContentListView;)Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    const-string v3, "60"

    const-string v4, "60"

    invoke-virtual {v10}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/logitech/harmonylink/model/ImageParams;-><init>(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/logitech/harmonylink/model/ImageReceiver$IStoreImage;)V

    .line 230
    .local v0, imgparams:Lcom/logitech/harmonylink/model/ImageParams;
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->imageThread:Lcom/logitech/harmonylink/model/ImageReceiver;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$1200(Lcom/logitech/harmonylink/context/view/ContentListView;)Lcom/logitech/harmonylink/model/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/logitech/harmonylink/model/ImageReceiver;->sendMessage(Landroid/os/Message;)V

    .line 232
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$1100(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    .end local v0           #imgparams:Lcom/logitech/harmonylink/model/ImageParams;
    .end local v9           #message:Landroid/os/Message;
    :cond_2
    const/16 v3, 0x8

    goto :goto_1

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$1100(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$1100(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 240
    .local v7, icon:Landroid/graphics/Bitmap;
    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->access$900(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 245
    .end local v7           #icon:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v10}, Lcom/logitech/harmonylink/model/OneTouchContent;->getResourceId()I

    move-result v1

    if-lez v1, :cond_0

    .line 247
    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->imageView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;->access$900(Lcom/logitech/harmonylink/context/view/ContentListView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v10}, Lcom/logitech/harmonylink/model/OneTouchContent;->getResourceId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$300(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;
    .locals 1
    .parameter "position"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$300(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/ArrayList;

    move-result-object v0

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
    .line 188
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 277
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 260
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->inflateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->populateView(ILandroid/view/View;)V

    .line 265
    return-object p2
.end method

.method public storeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "path"
    .parameter "imagehash"
    .parameter "img"

    .prologue
    .line 281
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$1100(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mBookmarkIcons:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$1100(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$1300(Lcom/logitech/harmonylink/context/view/ContentListView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 284
    .local v0, iview:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    .end local v0           #iview:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$600(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Image is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
