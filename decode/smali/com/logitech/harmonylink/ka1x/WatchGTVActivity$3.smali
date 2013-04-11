.class Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$3;
.super Ljava/lang/Object;
.source "WatchGTVActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->onRequestFinished(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$3;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$3;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    iget-object v1, v1, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    if-eqz v1, :cond_0

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$3;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    const-class v2, Lcom/logitech/harmonylink/context/DevicesHelpActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$3;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
