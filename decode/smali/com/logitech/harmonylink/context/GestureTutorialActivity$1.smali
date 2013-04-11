.class Lcom/logitech/harmonylink/context/GestureTutorialActivity$1;
.super Ljava/lang/Object;
.source "GestureTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/GestureTutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/GestureTutorialActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/GestureTutorialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/logitech/harmonylink/context/GestureTutorialActivity$1;->this$0:Lcom/logitech/harmonylink/context/GestureTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/logitech/harmonylink/context/GestureTutorialActivity$1;->this$0:Lcom/logitech/harmonylink/context/GestureTutorialActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/GestureTutorialActivity;->finish()V

    .line 30
    return-void
.end method
