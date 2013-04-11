.class Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity$1;
.super Ljava/lang/Object;
.source "ManualSyncOliveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;

    const-class v2, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, i:Landroid/content/Intent;
    const-string v1, "frommanualsync"

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;

    const v3, 0x7f060096

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity$1;->this$0:Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/ManualSyncOliveActivity;->finish()V

    .line 76
    return-void
.end method
