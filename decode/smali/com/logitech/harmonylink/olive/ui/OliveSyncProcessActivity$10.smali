.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$10;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$10;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 763
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$10;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const-class v2, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 765
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 767
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$10;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->startActivity(Landroid/content/Intent;)V

    .line 768
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$10;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->finish()V

    .line 769
    return-void
.end method
