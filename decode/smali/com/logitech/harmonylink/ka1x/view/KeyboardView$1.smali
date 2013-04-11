.class Lcom/logitech/harmonylink/ka1x/view/KeyboardView$1;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/KeyboardView;-><init>(Landroid/content/Context;Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 98
    if-eqz p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/KeyboardView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    #calls: Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->clearText()Z
    invoke-static {v0}, Lcom/logitech/harmonylink/ka1x/view/KeyboardView;->access$000(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;)Z

    .line 101
    :cond_0
    return-void
.end method
