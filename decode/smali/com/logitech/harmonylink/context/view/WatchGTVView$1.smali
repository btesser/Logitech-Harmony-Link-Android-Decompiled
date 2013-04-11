.class Lcom/logitech/harmonylink/context/view/WatchGTVView$1;
.super Ljava/lang/Object;
.source "WatchGTVView.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/WatchGTVView;->inflateWatchGtvView(Landroid/content/Context;Lcom/logitech/harmonylink/context/WatchGtvActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/WatchGTVView;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "tabId"

    .prologue
    const/4 v3, 0x1

    .line 117
    if-eqz p1, :cond_1

    const-string v0, "tab_keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->showKeyboard(Lcom/logitech/harmonylink/context/view/KeyboardView;Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iput-boolean v3, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->isInKeyboardView:Z

    .line 121
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->createHarmonyCommunicator()Z

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mLogiActivity:Lcom/logitech/harmonylink/context/BaseHarmonyActivity;

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/context/BaseHarmonyActivity;->setRequestedOrientation(I)V

    .line 125
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/logitech/harmonylink/context/view/WatchGTVView;->isInKeyboardView:Z

    .line 126
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iget-object v1, v1, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mKeyboardView:Lcom/logitech/harmonylink/context/view/KeyboardView;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    iget-object v2, v2, Lcom/logitech/harmonylink/context/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->hideKeyboard(Landroid/view/View;Landroid/view/View;)V

    .line 133
    if-eqz p1, :cond_0

    const-string v0, "tab_commands"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/WatchGTVView$1;->this$0:Lcom/logitech/harmonylink/context/view/WatchGTVView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/WatchGTVView;->showHideUserDefinedPageView()V

    goto :goto_0
.end method
