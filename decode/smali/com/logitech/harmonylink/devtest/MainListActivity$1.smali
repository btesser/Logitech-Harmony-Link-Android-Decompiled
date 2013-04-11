.class Lcom/logitech/harmonylink/devtest/MainListActivity$1;
.super Ljava/lang/Object;
.source "MainListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/devtest/MainListActivity;->upTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/devtest/MainListActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/devtest/MainListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/logitech/harmonylink/devtest/MainListActivity$1;->this$0:Lcom/logitech/harmonylink/devtest/MainListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/logitech/harmonylink/devtest/MainListActivity$1;->this$0:Lcom/logitech/harmonylink/devtest/MainListActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/devtest/MainListActivity;->finish()V

    .line 94
    return-void
.end method
