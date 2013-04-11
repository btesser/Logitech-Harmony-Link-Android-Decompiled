.class Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultWatchTvSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchTvAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;-><init>(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)V

    return-void
.end method

.method private setContentInRow(Landroid/view/View;I)V
    .locals 8
    .parameter "convertView"
    .parameter "position"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 142
    const v4, 0x7f0700e7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    .local v3, name:Landroid/widget/TextView;
    const v4, 0x7f0700e8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 145
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mIsUserExplicitChange:Z
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mSelectedPosition:I
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$300(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)I

    move-result v4

    if-eq p2, v4, :cond_1

    .line 147
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :goto_0
    invoke-virtual {p0, p2}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->getItem(I)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v0

    .line 174
    .local v0, act:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mIsUserExplicitChange:Z
    invoke-static {v4, v6}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$202(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;Z)Z

    .line 178
    :cond_0
    return-void

    .line 149
    .end local v0           #act:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_1
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mDefaultSelectedWatchTVActivity:I
    invoke-static {v4, p2}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$402(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;I)I

    .line 150
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mLogitechHarmonyActivityId:Ljava/lang/String;
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 155
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 156
    .local v2, mLogitechHarmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mLogitechHarmonyActivityId:Ljava/lang/String;
    invoke-static {v5}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mDefaultSelectedWatchTVActivity:I
    invoke-static {v4, p2}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$402(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;I)I

    .line 158
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 164
    .end local v2           #mLogitechHarmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_4
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mSelectedPosition:I
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$300(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)I

    move-result v4

    if-eq p2, v4, :cond_5

    .line 165
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_5
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mDefaultSelectedWatchTVActivity:I
    invoke-static {v4, p2}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$402(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;I)I

    .line 168
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .locals 1
    .parameter "position"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->this$0:Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->mContents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->getItem(I)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 133
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 136
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity$WatchTvAdapter;->setContentInRow(Landroid/view/View;I)V

    .line 137
    return-object p2
.end method
