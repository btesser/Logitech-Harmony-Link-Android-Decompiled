.class Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneTouchContentClicked"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V

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
    .line 617
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$1200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 618
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$1200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 619
    .local v0, content:Lcom/logitech/harmonylink/model/OneTouchContent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v4

    const-string v5, "channels"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 620
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$1300(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "launcher_param"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v4, "image_hash"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v4, "category"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v4, "image_path"

    sget-object v5, Lcom/logitech/harmonylink/model/ImageReceiver;->IMAGES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v4, "content_label"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-virtual {v4, v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->startActivity(Landroid/content/Intent;)V

    .line 655
    .end local v0           #content:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 628
    .restart local v0       #content:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v4

    const-string v5, "channels"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    invoke-static {v4}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getOneTouchManager(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/OneTouchManager;

    move-result-object v4

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mHarmonyLinkUID:Ljava/lang/String;
    invoke-static {v6}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$1400(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getDefaultActivity(Landroid/content/Context;Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v1

    .line 632
    .local v1, defaultActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    if-nez v1, :cond_2

    .line 633
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 634
    .local v3, mShowNoWatchTvWarning:Landroid/app/AlertDialog;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 635
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    const v5, 0x7f0600d2

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 636
    const-string v4, "Ok"

    new-instance v5, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked$1;

    invoke-direct {v5, p0, v3}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked$1;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 641
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 643
    .end local v3           #mShowNoWatchTvWarning:Landroid/app/AlertDialog;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 644
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "launcher_param"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    const-string v4, "image_hash"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v4, "category"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string v4, "image_path"

    sget-object v5, Lcom/logitech/harmonylink/model/ImageReceiver;->IMAGES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string v4, "content_label"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const-string v4, "channel number"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-virtual {v4, v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
