.class Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1$1;
.super Ljava/lang/Object;
.source "PowerOffHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1$1;->this$1:Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1$1;->this$1:Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;->this$0:Lcom/logitech/harmonylink/context/PowerOffHelpActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->finish()V

    .line 69
    return-void
.end method
