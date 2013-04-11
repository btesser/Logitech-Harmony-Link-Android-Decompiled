.class Lcom/logitech/harmonylink/ka1x/DevicesActivity$1;
.super Ljava/lang/Object;
.source "DevicesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/DevicesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/DevicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
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
    .line 61
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 62
    .local v0, activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/harmony/Dom;->startLogitechActivity(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V

    .line 63
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    const-class v2, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    #calls: Lcom/logitech/harmonylink/ka1x/DevicesActivity;->openActivityForResult(Ljava/lang/Class;)V
    invoke-static {v1, v2}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->access$000(Lcom/logitech/harmonylink/ka1x/DevicesActivity;Ljava/lang/Class;)V

    .line 64
    return-void
.end method
