.class Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/OneTouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneTouchContentClicked"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/context/OneTouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/OneTouchActivity;Lcom/logitech/harmonylink/context/OneTouchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;-><init>(Lcom/logitech/harmonylink/context/OneTouchActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
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
    .line 543
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/context/OneTouchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 544
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/context/OneTouchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 545
    .local v1, content:Lcom/logitech/harmonylink/model/OneTouchContent;
    if-eqz v1, :cond_1

    .line 546
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    iget-object v4, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/harmony/Dom;->setContext(Landroid/content/Context;)V

    .line 548
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "launcher_param"

    invoke-virtual {v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v3, "image_hash"

    invoke-virtual {v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v3, "category"

    invoke-virtual {v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v3, "image_path"

    sget-object v4, Lcom/logitech/harmonylink/model/ImageReceiver;->IMAGES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v3, "content_label"

    invoke-virtual {v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-virtual {v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activities"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "shortcuts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    :cond_0
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-virtual {v3, v2}, Lcom/logitech/harmonylink/context/OneTouchActivity;->startActivity(Landroid/content/Intent;)V

    .line 608
    .end local v1           #content:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 567
    .restart local v1       #content:Lcom/logitech/harmonylink/model/OneTouchContent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bookmarks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "applications"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    :cond_3
    new-instance v0, Lcom/logitech/connect/client/transport/NameValuePairs;

    invoke-direct {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;-><init>()V

    .line 572
    .local v0, body:Lcom/logitech/connect/client/transport/NameValuePairs;
    const-string v3, "path"

    invoke-virtual {v1}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 573
    const-string v3, "action"

    const-string v4, "retrieveItem"

    invoke-virtual {v0, v3, v4}, Lcom/logitech/connect/client/transport/NameValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/logitech/connect/client/transport/NameValuePairs;

    .line 574
    iget-object v3, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v3

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v3

    const-string v4, "vnd.logitech.gtv/vnd.logitech.liveFolder?get"

    invoke-virtual {v0}, Lcom/logitech/connect/client/transport/NameValuePairs;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;

    invoke-direct {v6, p0, p3, v2}, Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked$1;-><init>(Lcom/logitech/harmonylink/context/OneTouchActivity$OneTouchContentClicked;ILandroid/content/Intent;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    goto :goto_0
.end method
