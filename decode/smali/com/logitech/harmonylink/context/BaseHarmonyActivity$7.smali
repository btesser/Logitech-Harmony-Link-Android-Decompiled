.class Lcom/logitech/harmonylink/context/BaseHarmonyActivity$7;
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
    .line 267
    iput-object p1, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$7;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 268
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 269
    return-void
.end method
