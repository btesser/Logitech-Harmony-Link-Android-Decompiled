.class Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1;
.super Ljava/lang/Object;
.source "InitialPowerOffSynchronizationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1;->this$0:Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1;->this$0:Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;

    const v3, 0x7f0700d7

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const-wide/16 v2, 0x1f40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1;->this$0:Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;

    #getter for: Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mLastTimePressed:J
    invoke-static {v6}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->access$000(Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 66
    .local v0, delay:J
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 68
    iget-object v2, p0, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1;->this$0:Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;

    #getter for: Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->mPowerOffLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;->access$100(Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1$1;-><init>(Lcom/logitech/harmonylink/context/InitialPowerOffSynchronizationActivity$1;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method
