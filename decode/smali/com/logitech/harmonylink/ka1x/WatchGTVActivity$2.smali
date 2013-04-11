.class Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$2;
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
    .line 203
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$2;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$2;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$2;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->startPowerOffActivity()V

    .line 206
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$2;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->finish()V

    .line 207
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$2;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    const-class v1, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->openActivityNoResult(Ljava/lang/Class;)V

    .line 210
    :cond_0
    return-void
.end method
