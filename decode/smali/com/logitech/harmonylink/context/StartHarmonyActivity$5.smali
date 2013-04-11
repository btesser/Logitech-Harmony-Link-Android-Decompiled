.class Lcom/logitech/harmonylink/context/StartHarmonyActivity$5;
.super Ljava/lang/Object;
.source "StartHarmonyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/StartHarmonyActivity;->launchOneTouchContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$5;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$5;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->send2xCancelCommand()Z

    .line 465
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$5;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->completeLoading()V

    .line 469
    return-void
.end method
