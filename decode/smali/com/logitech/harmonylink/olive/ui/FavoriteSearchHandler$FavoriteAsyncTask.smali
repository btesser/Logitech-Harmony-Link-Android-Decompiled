.class Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;
.super Landroid/os/AsyncTask;
.source "FavoriteSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 440
    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V

    return-void
.end method

.method private getArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 7
    .parameter "channels"
    .parameter "classtype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/FavoriteChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v1, favs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/FavoriteChannel;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 429
    .local v4, length:I
    const/4 v5, 0x0

    .line 432
    .local v5, temp:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 433
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 434
    const-string v6, "ShortName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, channelname:Ljava/lang/String;
    const-string v6, "Url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, iconpath:Ljava/lang/String;
    new-instance v6, Lcom/logitech/harmonylink/model/FavoriteChannel;

    invoke-direct {v6, v0, v3}, Lcom/logitech/harmonylink/model/FavoriteChannel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v0           #channelname:Ljava/lang/String;
    .end local v3           #iconpath:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private showSearchProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 375
    if-eqz p1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mSearchSpinny:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1100(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEmptyView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1200(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEmptyView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1200(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$400(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mSearchSpinny:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1100(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEmptyView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1200(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEmptyView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1200(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$400(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 339
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "params"

    .prologue
    .line 344
    new-instance v2, Lcom/logitech/harmonylink/util/RemoteHttpHandler;

    invoke-direct {v2}, Lcom/logitech/harmonylink/util/RemoteHttpHandler;-><init>()V

    .line 345
    .local v2, rhtp:Lcom/logitech/harmonylink/util/RemoteHttpHandler;
    const/4 v1, 0x0

    .line 347
    .local v1, j:Lorg/json/JSONObject;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lcom/logitech/harmonylink/util/RemoteHttpHandler;->getChannelJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 349
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 339
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 393
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->showSearchProgress(Z)V

    .line 394
    if-nez p1, :cond_0

    .line 396
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->notifyDataChange()V

    .line 415
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string v2, "SearchIconResult"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 400
    .local v0, channels:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$500(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$502(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$500(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/util/ArrayList;

    move-result-object v2

    const-class v3, Lcom/logitech/harmonylink/model/FavoriteChannel;

    invoke-direct {p0, v0, v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->getArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    .line 405
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    new-instance v3, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-direct {v3, v4}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;-><init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V

    #setter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1002(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->notifyDataChange()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    .end local v0           #channels:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 412
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 356
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 357
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$500(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$500(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    const/4 v1, 0x0

    #setter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mChannelList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$502(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 360
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->notifyDataChange()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mFavoriteAdapter:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$1000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAdapter;->clearBitmapHash()V

    .line 365
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$FavoriteAsyncTask;->showSearchProgress(Z)V

    .line 367
    return-void
.end method
