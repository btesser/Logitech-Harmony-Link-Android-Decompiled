.class Lcom/logitech/harmonylink/ka1x/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 46
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;

    const-class v1, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;

    const-class v1, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;

    #calls: Lcom/logitech/harmonylink/ka1x/SettingsActivity;->unPair()V
    invoke-static {v0}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->access$000(Lcom/logitech/harmonylink/ka1x/SettingsActivity;)V

    goto :goto_0

    .line 57
    :pswitch_3
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/ka1x/SettingsActivity;

    const-class v1, Lcom/logitech/harmonylink/context/HelpActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
