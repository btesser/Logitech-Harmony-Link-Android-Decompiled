.class Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$3;
.super Ljava/lang/Object;
.source "OneTouchGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->showShadeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

.field final synthetic val$dlgHelp:Landroid/app/Dialog;

.field final synthetic val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    iput-object p2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$3;->val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    iput-object p3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$3;->val$dlgHelp:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$3;->val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    const-string v1, "oliveHelpShadeFinished"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter$3;->val$dlgHelp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 375
    return-void
.end method
