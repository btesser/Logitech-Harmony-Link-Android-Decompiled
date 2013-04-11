.class Lcom/logitech/harmonylink/context/BaseHarmonyActivity$8;
.super Ljava/lang/Object;
.source "BaseHarmonyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->createPoweroffConfirmationDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$8;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$8;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$8;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->setHasPoweredOffByCurrentClient(Z)V

    .line 257
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$8;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->startPowerOffActivity()V

    .line 259
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$8;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    const-class v1, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->openActivityNoResult(Ljava/lang/Class;)V

    .line 260
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$8;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->finish()V

    .line 262
    :cond_0
    return-void
.end method
