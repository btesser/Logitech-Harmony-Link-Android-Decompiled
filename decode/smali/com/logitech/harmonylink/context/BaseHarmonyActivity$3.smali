.class Lcom/logitech/harmonylink/context/BaseHarmonyActivity$3;
.super Ljava/lang/Object;
.source "BaseHarmonyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

.field final synthetic val$mDlgHelp:Landroid/app/Dialog;

.field final synthetic val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/BaseHarmonyActivity;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$3;->this$0:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    iput-object p2, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$3;->val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    iput-object p3, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$3;->val$mDlgHelp:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$3;->val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    const-string v1, "firstTimeActivityStart"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getBooleanWithName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/logitech/harmonylink/context/BaseHarmonyActivity$3;->val$mDlgHelp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 147
    :cond_0
    return-void
.end method
