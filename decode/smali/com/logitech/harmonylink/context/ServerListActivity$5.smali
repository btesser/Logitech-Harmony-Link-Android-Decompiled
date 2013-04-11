.class Lcom/logitech/harmonylink/context/ServerListActivity$5;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ServerListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/ServerListActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$5;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$5;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/ServerListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$5;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/logitech/harmonylink/context/ServerListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    const/4 v1, 0x1

    return v1
.end method
