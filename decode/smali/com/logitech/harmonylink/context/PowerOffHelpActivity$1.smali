.class Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;
.super Ljava/lang/Object;
.source "PowerOffHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/PowerOffHelpActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/PowerOffHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;->this$0:Lcom/logitech/harmonylink/context/PowerOffHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;->this$0:Lcom/logitech/harmonylink/context/PowerOffHelpActivity;

    const v3, 0x7f0700d7

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const-wide/16 v2, 0x1f40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;->this$0:Lcom/logitech/harmonylink/context/PowerOffHelpActivity;

    #getter for: Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mLastTimePressed:J
    invoke-static {v6}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->access$000(Lcom/logitech/harmonylink/context/PowerOffHelpActivity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 62
    .local v0, delay:J
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 64
    iget-object v2, p0, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;->this$0:Lcom/logitech/harmonylink/context/PowerOffHelpActivity;

    #getter for: Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->mPowerOffLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity;->access$100(Lcom/logitech/harmonylink/context/PowerOffHelpActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1$1;-><init>(Lcom/logitech/harmonylink/context/PowerOffHelpActivity$1;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
