.class Lcom/logitech/harmonylink/olive/ui/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 52
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    const-class v1, Lcom/logitech/harmonylink/olive/ui/DevicesActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->access$000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getRemoteControlInitializer()Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v1

    const-string v2, "sync"

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getScreen(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->unPair()V
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/SettingsActivity;)V

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    const-class v1, Lcom/logitech/harmonylink/olive/ui/HelpActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 66
    :pswitch_4
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/SettingsActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/SettingsActivity;

    const-class v1, Lcom/logitech/harmonylink/olive/ui/DefaultWatchTvSelectionActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/olive/ui/SettingsActivity;->openActivityNoResult(Ljava/lang/Class;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
