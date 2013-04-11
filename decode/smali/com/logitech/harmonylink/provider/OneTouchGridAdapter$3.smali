.class Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$3;
.super Ljava/lang/Object;
.source "OneTouchGridAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->showWarningMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

.field final synthetic val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$3;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    iput-object p2, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$3;->val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$3;->val$prefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    const-string v1, "notsetupwarning"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$3;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->enableVisibility()V

    .line 466
    iget-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter$3;->this$0:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->showShadeScreen()V

    .line 467
    return-void
.end method
