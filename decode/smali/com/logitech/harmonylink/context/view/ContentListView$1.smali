.class Lcom/logitech/harmonylink/context/view/ContentListView$1;
.super Ljava/lang/Object;
.source "ContentListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/ContentListView;-><init>(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/logitech/harmonylink/harmony/OneTouchManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

.field final synthetic val$revueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/ContentListView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->val$revueId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "adapterView"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 106
    :try_start_0
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mContentAdapter:Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;
    invoke-static {v7}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$000(Lcom/logitech/harmonylink/context/view/ContentListView;)Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/logitech/harmonylink/context/view/ContentListView$ContentAdaptor;->getItem(I)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v6

    .line 109
    .local v6, selectedContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$100(Lcom/logitech/harmonylink/context/view/ContentListView;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mRevueId:Ljava/lang/String;
    invoke-static {v8}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$200(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/logitech/harmonylink/dao/OneTouchDao;->getMaxColoumn(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, max:I
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$300(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 114
    .local v3, newcontent:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v7

    const-string v8, "activities"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 117
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$100(Lcom/logitech/harmonylink/context/view/ContentListView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v5

    .line 120
    .local v5, prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getIntWithName(Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, id1:I
    if-lez v1, :cond_0

    .line 124
    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->removeValueWitkKey(Ljava/lang/String;)V

    .line 130
    .end local v1           #id1:I
    .end local v5           #prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_0
    invoke-virtual {v6}, Lcom/logitech/harmonylink/model/OneTouchContent;->getPosition()I

    move-result v4

    .line 132
    .local v4, oldposition:I
    if-lez v4, :cond_1

    .line 133
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$100(Lcom/logitech/harmonylink/context/view/ContentListView;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->val$revueId:Ljava/lang/String;

    invoke-static {v7, v8, v3, v4, v2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->update(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/harmonylink/model/OneTouchContent;II)Z

    .line 139
    :goto_0
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mOneTouchManger:Lcom/logitech/harmonylink/harmony/OneTouchManager;
    invoke-static {v7}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$500(Lcom/logitech/harmonylink/context/view/ContentListView;)Lcom/logitech/harmonylink/harmony/OneTouchManager;

    move-result-object v7

    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->val$revueId:Ljava/lang/String;

    iget-object v9, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mConnectClient:Lcom/logitech/connect/ConnectClient;
    invoke-static {v9}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$400(Lcom/logitech/harmonylink/context/view/ContentListView;)Lcom/logitech/connect/ConnectClient;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->refreshOneTouchContents(Ljava/lang/String;Lcom/logitech/connect/ConnectClient;)V

    .line 146
    .end local v2           #max:I
    .end local v3           #newcontent:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v4           #oldposition:I
    .end local v6           #selectedContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :goto_1
    return-void

    .line 136
    .restart local v2       #max:I
    .restart local v3       #newcontent:Lcom/logitech/harmonylink/model/OneTouchContent;
    .restart local v4       #oldposition:I
    .restart local v6       #selectedContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_1
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$100(Lcom/logitech/harmonylink/context/view/ContentListView;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->val$revueId:Ljava/lang/String;

    invoke-static {v7, v8, v3, v2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->insert(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/harmonylink/model/OneTouchContent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v2           #max:I
    .end local v3           #newcontent:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v4           #oldposition:I
    .end local v6           #selectedContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 143
    .local v0, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/logitech/harmonylink/context/view/ContentListView$1;->this$0:Lcom/logitech/harmonylink/context/view/ContentListView;

    #getter for: Lcom/logitech/harmonylink/context/view/ContentListView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/logitech/harmonylink/context/view/ContentListView;->access$600(Lcom/logitech/harmonylink/context/view/ContentListView;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
