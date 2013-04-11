.class Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ServerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/ServerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/logitech/connect/Target;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mRendererResourceId:I

.field final synthetic this$0:Lcom/logitech/harmonylink/context/ServerListActivity;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/ServerListActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/logitech/connect/Target;>;"
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    .line 269
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 271
    iput p3, p0, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->mRendererResourceId:I

    .line 272
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 274
    return-void
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/context/ServerListActivity;Landroid/content/Context;I[Lcom/logitech/connect/Target;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    .line 277
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 279
    iput p3, p0, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->mRendererResourceId:I

    .line 280
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 282
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/logitech/connect/Target;

    .line 290
    .local v5, itemObject:Lcom/logitech/connect/Target;
    if-nez p2, :cond_0

    .line 291
    iget-object v10, p0, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->mRendererResourceId:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 293
    :cond_0
    const v10, 0x7f0700ec

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 294
    .local v2, connectLayout:Landroid/widget/LinearLayout;
    const v10, 0x7f0700ee

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 296
    .local v9, updatingLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Lcom/logitech/connect/Target;->getHubStatus()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 297
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    const v10, 0x1020019

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 302
    .local v1, btn:Landroid/widget/Button;
    const v10, 0x7f0700ed

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 304
    .local v6, pgBar:Landroid/widget/ProgressBar;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 305
    invoke-virtual {v5}, Lcom/logitech/connect/Target;->getConnectionStatus()I

    move-result v10

    if-nez v10, :cond_3

    .line 306
    new-instance v10, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;

    iget-object v11, p0, Lcom/logitech/harmonylink/context/ServerListActivity$MyAdapter;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {v10, v11, p1}, Lcom/logitech/harmonylink/context/ServerListActivity$OnItemClickListener;-><init>(Lcom/logitech/harmonylink/context/ServerListActivity;I)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 309
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    .end local v1           #btn:Landroid/widget/Button;
    .end local v6           #pgBar:Landroid/widget/ProgressBar;
    :goto_0
    const v10, 0x7f0700ea

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 324
    .local v8, tv:Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/logitech/connect/Target;->getName()Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, itemName:Ljava/lang/String;
    const/16 v10, 0x40

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 327
    .local v0, amphersandIndex:I
    if-lez v0, :cond_1

    .line 328
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 331
    :cond_1
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v10, 0x7f0700eb

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 334
    .local v7, subTextView:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 336
    .local v3, deviceInfo:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "82"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 339
    :cond_2
    const-string v3, "Revue"

    .line 343
    :goto_1
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-object p2

    .line 310
    .end local v0           #amphersandIndex:I
    .end local v3           #deviceInfo:Ljava/lang/String;
    .end local v4           #itemName:Ljava/lang/String;
    .end local v7           #subTextView:Landroid/widget/TextView;
    .end local v8           #tv:Landroid/widget/TextView;
    .restart local v1       #btn:Landroid/widget/Button;
    .restart local v6       #pgBar:Landroid/widget/ProgressBar;
    :cond_3
    invoke-virtual {v5}, Lcom/logitech/connect/Target;->getConnectionStatus()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 311
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 315
    :cond_4
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 319
    .end local v1           #btn:Landroid/widget/Button;
    .end local v6           #pgBar:Landroid/widget/ProgressBar;
    :cond_5
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 341
    .restart local v0       #amphersandIndex:I
    .restart local v3       #deviceInfo:Ljava/lang/String;
    .restart local v4       #itemName:Ljava/lang/String;
    .restart local v7       #subTextView:Landroid/widget/TextView;
    .restart local v8       #tv:Landroid/widget/TextView;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HarmonyLink - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/logitech/connect/Target;->getHostName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
