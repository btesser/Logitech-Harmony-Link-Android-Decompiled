.class Lcom/logitech/harmonylink/context/ConnectionHelpActivity$3;
.super Ljava/lang/Object;
.source "ConnectionHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/ConnectionHelpActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ConnectionHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$3;->this$0:Lcom/logitech/harmonylink/context/ConnectionHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$3;->this$0:Lcom/logitech/harmonylink/context/ConnectionHelpActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->setResult(I)V

    .line 63
    iget-object v0, p0, Lcom/logitech/harmonylink/context/ConnectionHelpActivity$3;->this$0:Lcom/logitech/harmonylink/context/ConnectionHelpActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/ConnectionHelpActivity;->finish()V

    .line 65
    return-void
.end method
