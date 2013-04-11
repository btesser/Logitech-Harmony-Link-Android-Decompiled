.class Lcom/logitech/harmonylink/context/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/logitech/harmonylink/context/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/context/SettingsActivity;

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
    .line 43
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/context/SettingsActivity;

    const-class v1, Lcom/logitech/harmonylink/context/MouseSensitivityActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/context/SettingsActivity;

    #calls: Lcom/logitech/harmonylink/context/SettingsActivity;->unPair()V
    invoke-static {v0}, Lcom/logitech/harmonylink/context/SettingsActivity;->access$000(Lcom/logitech/harmonylink/context/SettingsActivity;)V

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v0, p0, Lcom/logitech/harmonylink/context/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/context/SettingsActivity;

    const-class v1, Lcom/logitech/harmonylink/context/HelpActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 61
    :pswitch_3
    iget-object v0, p0, Lcom/logitech/harmonylink/context/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/context/SettingsActivity;

    const-class v1, Lcom/logitech/harmonylink/context/DevicesActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
