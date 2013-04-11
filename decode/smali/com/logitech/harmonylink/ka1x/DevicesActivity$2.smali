.class Lcom/logitech/harmonylink/ka1x/DevicesActivity$2;
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
    .line 70
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$2;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 71
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$2;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    const-class v3, Lcom/logitech/harmonylink/ka1x/DeviceCommandsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, openActivityIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$2;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    #getter for: Lcom/logitech/harmonylink/ka1x/DevicesActivity;->mDevices:Lcom/logitech/harmonylink/harmony/Devices;
    invoke-static {v2}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->access$100(Lcom/logitech/harmonylink/ka1x/DevicesActivity;)Lcom/logitech/harmonylink/harmony/Devices;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/logitech/harmonylink/harmony/Devices;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/Device;

    .line 74
    .local v0, device:Lcom/logitech/harmonylink/harmony/Device;
    const-string v2, "com.logitech.harmonylink.harmony.device"

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Device;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/DevicesActivity$2;->this$0:Lcom/logitech/harmonylink/ka1x/DevicesActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Lcom/logitech/harmonylink/ka1x/DevicesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    return-void
.end method
