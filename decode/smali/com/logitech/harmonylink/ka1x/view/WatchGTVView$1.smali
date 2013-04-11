.class Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;
.super Ljava/lang/Object;
.source "WatchGTVView.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->inflateGTVView(Landroid/content/Context;Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "tabId"

    .prologue
    .line 154
    if-eqz p1, :cond_1

    const-string v0, "tab_keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;
    invoke-static {v1}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->access$000(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iget-object v2, v2, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->showKeyboard(Lcom/logitech/harmonylink/ka1x/view/KeyboardView;Landroid/view/View;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/ka1x/view/KeyboardView;
    invoke-static {v1}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->access$000(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Lcom/logitech/harmonylink/ka1x/view/KeyboardView;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iget-object v2, v2, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->hideKeyboard(Landroid/view/View;Landroid/view/View;)V

    .line 160
    if-eqz p1, :cond_0

    const-string v0, "tab_commands"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->showHideUserDefinedPageView()V

    goto :goto_0
.end method
