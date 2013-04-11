.class Lcom/logitech/harmonylink/context/ServerListActivity$4;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 123
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$4;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ServerListActivity$4;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    #calls: Lcom/logitech/harmonylink/context/ServerListActivity;->doRescan()V
    invoke-static {v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$300(Lcom/logitech/harmonylink/context/ServerListActivity;)V

    .line 125
    return-void
.end method
